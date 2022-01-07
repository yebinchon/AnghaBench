; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_data_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_read_data_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@SSL_ERROR_ZERO_RETURN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"could not SSL_read: unexpected EOF\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"could not SSL_read\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"at %d/%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"read %d data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i64)* @read_data_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @read_data_chunk(i32* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp uge i64 %9, 4294967280
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %88

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %13, 1
  %15 = call i8* @malloc(i64 %14)
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @verb, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  store i8* null, i8** %3, align 8
  br label %88

24:                                               ; preds = %12
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = load i32*, i32** %4, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %6, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @SSL_read(i32* %30, i8* %33, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %29
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @SSL_get_error(i32* %41, i32 %42)
  %44 = load i64, i64* @SSL_ERROR_ZERO_RETURN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load i32, i32* @verb, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  %52 = load i8*, i8** %8, align 8
  %53 = call i32 @free(i8* %52)
  store i8* null, i8** %3, align 8
  br label %88

54:                                               ; preds = %40
  %55 = load i32, i32* @verb, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %54
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %54
  %60 = load i8*, i8** %8, align 8
  %61 = call i32 @free(i8* %60)
  store i8* null, i8** %3, align 8
  br label %88

62:                                               ; preds = %29
  %63 = load i32, i32* @verb, align 4
  %64 = icmp sge i32 %63, 2
  br i1 %64, label %65, label %71

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i64, i64* %5, align 8
  %69 = trunc i64 %68 to i32
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %67, i32 %69)
  br label %71

71:                                               ; preds = %65, %62
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %25

76:                                               ; preds = %25
  %77 = load i32, i32* @verb, align 4
  %78 = icmp sge i32 %77, 2
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* %5, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i8*, i8** %8, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds i8, i8* %84, i64 %85
  store i8 0, i8* %86, align 1
  %87 = load i8*, i8** %8, align 8
  store i8* %87, i8** %3, align 8
  br label %88

88:                                               ; preds = %83, %59, %51, %23, %11
  %89 = load i8*, i8** %3, align 8
  ret i8* %89
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @SSL_read(i32*, i8*, i32) #1

declare dso_local i64 @SSL_get_error(i32*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
