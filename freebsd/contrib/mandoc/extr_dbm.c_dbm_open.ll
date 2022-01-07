; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_dbm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.macro = type { i32 }

@npages = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"dbm_open(%s): Invalid number of pages: %d\00", align 1
@pages = common dso_local global %struct.page* null, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"dbm_open(%s): Invalid offset of macros array\00", align 1
@MACRO_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"dbm_open(%s): Invalid number of macros: %d\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"dbm_open(%s): Invalid offset of macro %d\00", align 1
@nvals = common dso_local global i64* null, align 8
@macros = common dso_local global %struct.macro** null, align 8
@EFTYPE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbm_open(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @dbm_map(i8* %7)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = call i64* @dbm_getint(i32 4)
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @be32toh(i64 %13)
  store i64 %14, i64* @npages, align 8
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* @npages, align 8
  %19 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %17, i64 %18)
  br label %74

20:                                               ; preds = %11
  %21 = call i64* @dbm_getint(i32 5)
  %22 = bitcast i64* %21 to %struct.page*
  store %struct.page* %22, %struct.page** @pages, align 8
  %23 = call i64* @dbm_getint(i32 2)
  %24 = load i64, i64* %23, align 8
  %25 = call i64* @dbm_get(i64 %24)
  store i64* %25, i64** %4, align 8
  %26 = icmp eq i64* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %74

30:                                               ; preds = %20
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @be32toh(i64 %32)
  %34 = load i64, i64* @MACRO_MAX, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i8*, i8** %3, align 8
  %38 = load i64*, i64** %4, align 8
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @be32toh(i64 %39)
  %41 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %37, i64 %40)
  br label %74

42:                                               ; preds = %30
  store i64 0, i64* %6, align 8
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MACRO_MAX, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %43
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i32 1
  store i64* %49, i64** %4, align 8
  %50 = load i64, i64* %49, align 8
  %51 = call i64* @dbm_get(i64 %50)
  store i64* %51, i64** %5, align 8
  %52 = icmp eq i64* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %54, i64 %55)
  br label %74

57:                                               ; preds = %47
  %58 = load i64*, i64** %5, align 8
  %59 = load i64, i64* %58, align 8
  %60 = call i64 @be32toh(i64 %59)
  %61 = load i64*, i64** @nvals, align 8
  %62 = load i64, i64* %6, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %60, i64* %63, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %5, align 8
  %66 = bitcast i64* %65 to %struct.macro*
  %67 = load %struct.macro**, %struct.macro*** @macros, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.macro*, %struct.macro** %67, i64 %68
  store %struct.macro* %66, %struct.macro** %69, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %6, align 8
  br label %43

73:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %77

74:                                               ; preds = %53, %36, %27, %16
  %75 = call i32 (...) @dbm_unmap()
  %76 = load i32, i32* @EFTYPE, align 4
  store i32 %76, i32* @errno, align 4
  store i32 -1, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %73, %10
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @dbm_map(i8*) #1

declare dso_local i64 @be32toh(i64) #1

declare dso_local i64* @dbm_getint(i32) #1

declare dso_local i32 @warnx(i8*, i8*, ...) #1

declare dso_local i64* @dbm_get(i64) #1

declare dso_local i32 @dbm_unmap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
