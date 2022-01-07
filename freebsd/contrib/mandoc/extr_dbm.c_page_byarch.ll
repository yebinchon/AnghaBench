; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_byarch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_dbm.c_page_byarch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dbm_match = type { i32 }
%struct.dbm_res = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@page_byarch.match = internal global %struct.dbm_match* null, align 8
@__const.page_byarch.res = private unnamed_addr constant %struct.dbm_res { i32 -1, i32 0, i32 0 }, align 4
@page_byarch.ip = internal global i64 0, align 8
@ITER_ARCH = common dso_local global i32 0, align 4
@iteration = common dso_local global i32 0, align 4
@npages = common dso_local global i64 0, align 8
@pages = common dso_local global %struct.TYPE_2__* null, align 8
@ITER_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast ({ i64, i32 } (%struct.dbm_match*)* @page_byarch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal { i64, i32 } @page_byarch(%struct.dbm_match* %0) #0 {
  %2 = alloca %struct.dbm_res, align 4
  %3 = alloca %struct.dbm_match*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca { i64, i32 }, align 8
  store %struct.dbm_match* %0, %struct.dbm_match** %3, align 8
  %6 = bitcast %struct.dbm_res* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.dbm_res* @__const.page_byarch.res to i8*), i64 12, i1 false)
  %7 = load %struct.dbm_match*, %struct.dbm_match** %3, align 8
  %8 = icmp ne %struct.dbm_match* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ITER_ARCH, align 4
  store i32 %10, i32* @iteration, align 4
  %11 = load %struct.dbm_match*, %struct.dbm_match** %3, align 8
  store %struct.dbm_match* %11, %struct.dbm_match** @page_byarch.match, align 8
  store i64 0, i64* @page_byarch.ip, align 8
  br label %58

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %53, %12
  %14 = load i64, i64* @page_byarch.ip, align 8
  %15 = load i64, i64* @npages, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %13
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pages, align 8
  %19 = load i64, i64* @page_byarch.ip, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %17
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pages, align 8
  %26 = load i64, i64* @page_byarch.ip, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i8* @dbm_get(i64 %29)
  store i8* %30, i8** %4, align 8
  br label %31

31:                                               ; preds = %47, %24
  %32 = load i8*, i8** %4, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31
  %37 = load %struct.dbm_match*, %struct.dbm_match** @page_byarch.match, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = call i64 @dbm_match(%struct.dbm_match* %37, i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load i64, i64* @page_byarch.ip, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* @page_byarch.ip, align 8
  %44 = trunc i64 %42 to i32
  %45 = getelementptr inbounds %struct.dbm_res, %struct.dbm_res* %2, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %58

46:                                               ; preds = %36
  br label %47

47:                                               ; preds = %46
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 0)
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8* %50, i8** %4, align 8
  br label %31

51:                                               ; preds = %31
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* @page_byarch.ip, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @page_byarch.ip, align 8
  br label %13

56:                                               ; preds = %13
  %57 = load i32, i32* @ITER_NONE, align 4
  store i32 %57, i32* @iteration, align 4
  store %struct.dbm_match* null, %struct.dbm_match** @page_byarch.match, align 8
  br label %58

58:                                               ; preds = %56, %41, %9
  %59 = bitcast { i64, i32 }* %5 to i8*
  %60 = bitcast %struct.dbm_res* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 4 %60, i64 12, i1 false)
  %61 = load { i64, i32 }, { i64, i32 }* %5, align 8
  ret { i64, i32 } %61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @dbm_get(i64) #2

declare dso_local i64 @dbm_match(%struct.dbm_match*, i8*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
