; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_dump_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/drill/extr_work.c_dump_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to open %s for writing\00", align 1
@LDNS_STATUS_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unable to convert packet: error code %u\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"; 0\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" %2u\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c";--\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" --\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"\09;\09%4u-%4u\0A\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_hex(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64* null, i64** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32* @fopen(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %11, i32** %8, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %15)
  br label %98

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @ldns_pkt2wire(i64** %5, i32* %18, i64* %6)
  store i8* %19, i8** %9, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** @LDNS_STATUS_OK, align 8
  %22 = icmp ne i8* %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  %26 = load i64*, i64** %5, align 8
  %27 = call i32 @LDNS_FREE(i64* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @fclose(i32* %28)
  br label %98

30:                                               ; preds = %17
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  store i64 1, i64* %7, align 8
  br label %33

33:                                               ; preds = %41, %30
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %34, 20
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %7, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %36
  %42 = load i64, i64* %7, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %7, align 8
  br label %33

44:                                               ; preds = %33
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 (i32*, i8*, ...) @fprintf(i32* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  store i64 1, i64* %7, align 8
  br label %49

49:                                               ; preds = %55, %44
  %50 = load i64, i64* %7, align 8
  %51 = icmp ult i64 %50, 20
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %7, align 8
  br label %49

58:                                               ; preds = %49
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 (i32*, i8*, ...) @fprintf(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %61

61:                                               ; preds = %88, %58
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = urem i64 %66, 20
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i64, i64* %7, align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %69
  %73 = load i32*, i32** %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = trunc i64 %74 to i32
  %76 = sub i32 %75, 19
  %77 = load i64, i64* %7, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 (i32*, i8*, ...) @fprintf(i32* %73, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %72, %69, %65
  %81 = load i32*, i32** %8, align 8
  %82 = load i64*, i64** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 (i32*, i8*, ...) @fprintf(i32* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %80
  %89 = load i64, i64* %7, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %7, align 8
  br label %61

91:                                               ; preds = %61
  %92 = load i32*, i32** %8, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i32*, i32** %8, align 8
  %95 = call i32 @fclose(i32* %94)
  %96 = load i64*, i64** %5, align 8
  %97 = call i32 @LDNS_FREE(i64* %96)
  br label %98

98:                                               ; preds = %91, %23, %14
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i8* @ldns_pkt2wire(i64**, i32*, i64*) #1

declare dso_local i32 @LDNS_FREE(i64*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
