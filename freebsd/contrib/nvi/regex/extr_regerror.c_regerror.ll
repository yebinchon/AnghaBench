; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regerror.c_regerror.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/regex/extr_regerror.c_regerror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rerr = type { i32, i8*, i8* }

@REG_ITOA = common dso_local global i32 0, align 4
@REG_ATOI = common dso_local global i32 0, align 4
@rerrs = common dso_local global %struct.rerr* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"REG_0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @regerror(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rerr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [50 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @REG_ITOA, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @REG_ATOI, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %24 = call i8* @regatoi(i32* %22, i8* %23)
  store i8* %24, i8** %12, align 8
  br label %78

25:                                               ; preds = %4
  %26 = load %struct.rerr*, %struct.rerr** @rerrs, align 8
  store %struct.rerr* %26, %struct.rerr** %9, align 8
  br label %27

27:                                               ; preds = %40, %25
  %28 = load %struct.rerr*, %struct.rerr** %9, align 8
  %29 = getelementptr inbounds %struct.rerr, %struct.rerr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %27
  %33 = load %struct.rerr*, %struct.rerr** %9, align 8
  %34 = getelementptr inbounds %struct.rerr, %struct.rerr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %43

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.rerr*, %struct.rerr** %9, align 8
  %42 = getelementptr inbounds %struct.rerr, %struct.rerr* %41, i32 1
  store %struct.rerr* %42, %struct.rerr** %9, align 8
  br label %27

43:                                               ; preds = %38, %27
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @REG_ITOA, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %73

48:                                               ; preds = %43
  %49 = load %struct.rerr*, %struct.rerr** %9, align 8
  %50 = getelementptr inbounds %struct.rerr, %struct.rerr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.rerr*, %struct.rerr** %9, align 8
  %55 = getelementptr inbounds %struct.rerr, %struct.rerr* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 50
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %63 = load %struct.rerr*, %struct.rerr** %9, align 8
  %64 = getelementptr inbounds %struct.rerr, %struct.rerr* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strlcpy(i8* %62, i8* %65, i64 50)
  br label %71

67:                                               ; preds = %48
  %68 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @snprintf(i8* %68, i32 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %53
  %72 = getelementptr inbounds [50 x i8], [50 x i8]* %13, i64 0, i64 0
  store i8* %72, i8** %12, align 8
  br label %77

73:                                               ; preds = %43
  %74 = load %struct.rerr*, %struct.rerr** %9, align 8
  %75 = getelementptr inbounds %struct.rerr, %struct.rerr* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  store i8* %76, i8** %12, align 8
  br label %77

77:                                               ; preds = %73, %71
  br label %78

78:                                               ; preds = %77, %21
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %8, align 8
  %84 = icmp ugt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %78
  %86 = load i8*, i8** %7, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 @strlcpy(i8* %86, i8* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %78
  %91 = load i64, i64* %10, align 8
  ret i64 %91
}

declare dso_local i8* @regatoi(i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
