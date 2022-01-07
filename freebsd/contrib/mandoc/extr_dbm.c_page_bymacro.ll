; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_bymacro.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_bymacro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_match = type { i32 }
%struct.dbm_res = type { i32, %struct.page*, i32 }
%struct.page = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@page_bymacro.match = internal global %struct.dbm_match* null, align 8
@page_bymacro.pp = internal global i64* null, align 8
@page_bymacro.cp = internal global i8* null, align 8
@page_bymacro.im = internal global i64 0, align 8
@page_bymacro.iv = internal global i64 0, align 8
@__const.page_bymacro.res = private unnamed_addr constant %struct.dbm_res { i32 -1, %struct.page* null, i32 0 }, align 8
@MACRO_MAX = common dso_local global i64 0, align 8
@ITER_MACRO = common dso_local global i64 0, align 8
@iteration = common dso_local global i64 0, align 8
@nvals = common dso_local global i32* null, align 8
@macros = common dso_local global %struct.TYPE_2__** null, align 8
@ITER_NONE = common dso_local global i64 0, align 8
@pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dbm_res*, i64, %struct.dbm_match*)* @page_bymacro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @page_bymacro(%struct.dbm_res* noalias sret %0, i64 %1, %struct.dbm_match* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.dbm_match*, align 8
  store i64 %1, i64* %4, align 8
  store %struct.dbm_match* %2, %struct.dbm_match** %5, align 8
  %6 = bitcast %struct.dbm_res* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.dbm_res* @__const.page_bymacro.res to i8*), i64 24, i1 false)
  %7 = load i64, i64* @page_bymacro.im, align 8
  %8 = icmp uge i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @page_bymacro.im, align 8
  %12 = load i64, i64* @MACRO_MAX, align 8
  %13 = icmp ult i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.dbm_match*, %struct.dbm_match** %5, align 8
  %17 = icmp ne %struct.dbm_match* %16, null
  br i1 %17, label %18, label %38

18:                                               ; preds = %3
  %19 = load i64, i64* @ITER_MACRO, align 8
  store i64 %19, i64* @iteration, align 8
  %20 = load %struct.dbm_match*, %struct.dbm_match** %5, align 8
  store %struct.dbm_match* %20, %struct.dbm_match** @page_bymacro.match, align 8
  %21 = load i64, i64* %4, align 8
  store i64 %21, i64* @page_bymacro.im, align 8
  %22 = load i32*, i32** @nvals, align 8
  %23 = load i64, i64* @page_bymacro.im, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %18
  %28 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @macros, align 8
  %29 = load i64, i64* @page_bymacro.im, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %28, i64 %29
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @dbm_get(i32 %33)
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %27
  %37 = phi i8* [ %34, %27 ], [ null, %35 ]
  store i8* %37, i8** @page_bymacro.cp, align 8
  store i64* null, i64** @page_bymacro.pp, align 8
  store i64 -1, i64* @page_bymacro.iv, align 8
  br label %100

38:                                               ; preds = %3
  %39 = load i64, i64* @iteration, align 8
  %40 = load i64, i64* @ITER_MACRO, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %100

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %87, %43
  %45 = load i64*, i64** @page_bymacro.pp, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load i64*, i64** @page_bymacro.pp, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ true, %44 ], [ %50, %47 ]
  br i1 %52, label %53, label %88

53:                                               ; preds = %51
  %54 = load i64, i64* @page_bymacro.iv, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @page_bymacro.iv, align 8
  %56 = load i32*, i32** @nvals, align 8
  %57 = load i64, i64* @page_bymacro.im, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i64, i64* @ITER_NONE, align 8
  store i64 %63, i64* @iteration, align 8
  br label %100

64:                                               ; preds = %53
  %65 = load i64, i64* @page_bymacro.iv, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** @page_bymacro.cp, align 8
  %69 = call i8* @strchr(i8* %68, i8 signext 0)
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** @page_bymacro.cp, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.dbm_match*, %struct.dbm_match** @page_bymacro.match, align 8
  %73 = load i8*, i8** @page_bymacro.cp, align 8
  %74 = call i64 @dbm_match(%struct.dbm_match* %72, i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @macros, align 8
  %78 = load i64, i64* @page_bymacro.im, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %77, i64 %78
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i64, i64* @page_bymacro.iv, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @dbm_get(i32 %84)
  %86 = bitcast i8* %85 to i64*
  store i64* %86, i64** @page_bymacro.pp, align 8
  br label %87

87:                                               ; preds = %76, %71
  br label %44

88:                                               ; preds = %51
  %89 = load i64*, i64** @page_bymacro.pp, align 8
  %90 = getelementptr inbounds i64, i64* %89, i32 1
  store i64* %90, i64** @page_bymacro.pp, align 8
  %91 = load i64, i64* %89, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i8* @dbm_get(i32 %92)
  %94 = bitcast i8* %93 to %struct.page*
  %95 = load i32, i32* @pages, align 4
  %96 = sext i32 %95 to i64
  %97 = sub i64 0, %96
  %98 = getelementptr inbounds %struct.page, %struct.page* %94, i64 %97
  %99 = getelementptr inbounds %struct.dbm_res, %struct.dbm_res* %0, i32 0, i32 1
  store %struct.page* %98, %struct.page** %99, align 8
  br label %100

100:                                              ; preds = %88, %62, %42, %36
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i8* @dbm_get(i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @dbm_match(%struct.dbm_match*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
