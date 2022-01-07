; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_base_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_base_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@SVN_WC__VERSION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)* @run_base_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_base_remove(i32* %0, i32* %1, %struct.TYPE_6__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %15, align 8
  %26 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %26, i64* %18, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @apr_pstrmemdup(i32* %27, i32 %30, i32 %33)
  store i8* %34, i8** %16, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %14, align 8
  %40 = call i32 @svn_wc__db_from_relpath(i8** %17, i32* %35, i8* %36, i8* %37, i32* %38, i32* %39)
  %41 = call i32 @SVN_ERR(i32 %40)
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = load i32*, i32** %14, align 8
  %46 = call i32 @svn_skel__parse_int(i64* %19, %struct.TYPE_7__* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = icmp ne %struct.TYPE_7__* %52, null
  br i1 %53, label %54, label %64

54:                                               ; preds = %7
  %55 = load i64, i64* %19, align 8
  store i64 %55, i64* %18, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i32*, i32** %14, align 8
  %62 = call i32 @svn_skel__parse_int(i64* %19, %struct.TYPE_7__* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %82

64:                                               ; preds = %7
  %65 = load i32, i32* @SVN_WC__VERSION, align 4
  %66 = icmp sle i32 %65, 28
  %67 = zext i1 %66 to i32
  %68 = call i32 @SVN_ERR_ASSERT(i32 %67)
  %69 = load i64, i64* %19, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %20, align 4
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %64
  %75 = load i32*, i32** %9, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @svn_wc__db_base_get_info(i32* null, i32* null, i64* %18, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %75, i8* %76, i32* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %81

81:                                               ; preds = %74, %64
  br label %82

82:                                               ; preds = %81, %54
  %83 = load i32*, i32** %9, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = load i32, i32* @FALSE, align 4
  %86 = load i64, i64* %18, align 8
  %87 = call i32 @SVN_IS_VALID_REVNUM(i64 %86)
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i64, i64* %18, align 8
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @svn_wc__db_base_remove(i32* %83, i8* %84, i32 %85, i32 %87, i32 %88, i64 %89, i32* null, i32* null, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %93
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__parse_int(i64*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_wc__db_base_get_info(i32*, i32*, i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_base_remove(i32*, i8*, i32, i32, i32, i64, i32*, i32*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
