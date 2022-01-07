; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_roundFunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_sqlite3.c_roundFunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SQLITE_NULL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.*f\00", align 1
@SQLITE_UTF8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32**)* @roundFunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roundFunc(i32* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32**, align 8
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32** %2, i32*** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 2
  br label %15

15:                                               ; preds = %12, %3
  %16 = phi i1 [ true, %3 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 2
  br i1 %20, label %21, label %42

21:                                               ; preds = %15
  %22 = load i64, i64* @SQLITE_NULL, align 8
  %23 = load i32**, i32*** %6, align 8
  %24 = getelementptr inbounds i32*, i32** %23, i64 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @sqlite3_value_type(i32* %25)
  %27 = icmp eq i64 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %95

29:                                               ; preds = %21
  %30 = load i32**, i32*** %6, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @sqlite3_value_int(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 30
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 30, i32* %7, align 4
  br label %37

37:                                               ; preds = %36, %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %37
  br label %42

42:                                               ; preds = %41, %15
  %43 = load i32**, i32*** %6, align 8
  %44 = getelementptr inbounds i32*, i32** %43, i64 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i64 @sqlite3_value_type(i32* %45)
  %47 = load i64, i64* @SQLITE_NULL, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %95

50:                                               ; preds = %42
  %51 = load i32**, i32*** %6, align 8
  %52 = getelementptr inbounds i32*, i32** %51, i64 0
  %53 = load i32*, i32** %52, align 8
  %54 = call double @sqlite3_value_double(i32* %53)
  store double %54, double* %8, align 8
  %55 = load double, double* %8, align 8
  %56 = fcmp olt double %55, 0xC330000000000000
  br i1 %56, label %60, label %57

57:                                               ; preds = %50
  %58 = load double, double* %8, align 8
  %59 = fcmp ogt double %58, 0x4330000000000000
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %50
  br label %91

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load double, double* %8, align 8
  %66 = load double, double* %8, align 8
  %67 = fcmp olt double %66, 0.000000e+00
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, double -5.000000e-01, double 5.000000e-01
  %70 = fadd double %65, %69
  %71 = fptosi double %70 to i64
  %72 = sitofp i64 %71 to double
  store double %72, double* %8, align 8
  br label %90

73:                                               ; preds = %61
  %74 = load i32, i32* %7, align 4
  %75 = load double, double* %8, align 8
  %76 = call i8* @sqlite3_mprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %74, double %75)
  store i8* %76, i8** %9, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %73
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @sqlite3_result_error_nomem(i32* %80)
  br label %95

82:                                               ; preds = %73
  %83 = load i8*, i8** %9, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = call i32 @sqlite3Strlen30(i8* %84)
  %86 = load i32, i32* @SQLITE_UTF8, align 4
  %87 = call i32 @sqlite3AtoF(i8* %83, double* %8, i32 %85, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @sqlite3_free(i8* %88)
  br label %90

90:                                               ; preds = %82, %64
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32*, i32** %4, align 8
  %93 = load double, double* %8, align 8
  %94 = call i32 @sqlite3_result_double(i32* %92, double %93)
  br label %95

95:                                               ; preds = %91, %79, %49, %28
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sqlite3_value_type(i32*) #1

declare dso_local i32 @sqlite3_value_int(i32*) #1

declare dso_local double @sqlite3_value_double(i32*) #1

declare dso_local i8* @sqlite3_mprintf(i8*, i32, double) #1

declare dso_local i32 @sqlite3_result_error_nomem(i32*) #1

declare dso_local i32 @sqlite3AtoF(i8*, double*, i32, i32) #1

declare dso_local i32 @sqlite3Strlen30(i8*) #1

declare dso_local i32 @sqlite3_free(i8*) #1

declare dso_local i32 @sqlite3_result_double(i32*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
