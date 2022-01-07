; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_probe_try3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_svn_wc_adm_probe_try3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@SVN_ERR_WC_NOT_LOCKED = common dso_local global i64 0, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @svn_wc_adm_probe_try3(i32** %0, i32* %1, i8* %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i32* %7, i32** %16, align 8
  %18 = load i32**, i32*** %9, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load i32*, i32** %16, align 8
  %22 = call %struct.TYPE_6__* @svn_wc_adm_probe_retrieve(i32** %18, i32* %19, i8* %20, i32* %21)
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %17, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SVN_ERR_WC_NOT_LOCKED, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %33 = call i32 @svn_error_clear(%struct.TYPE_6__* %32)
  %34 = load i32**, i32*** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %14, align 4
  %40 = load i8*, i8** %15, align 8
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @svn_wc_adm_access_pool(i32* %41)
  %43 = call %struct.TYPE_6__* @svn_wc_adm_probe_open3(i32** %34, i32* %35, i8* %36, i32 %37, i32 %38, i32 %39, i8* %40, i32 %42)
  store %struct.TYPE_6__* %43, %struct.TYPE_6__** %17, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %45 = icmp ne %struct.TYPE_6__* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %31
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %54 = call i32 @svn_error_clear(%struct.TYPE_6__* %53)
  %55 = load i32**, i32*** %9, align 8
  store i32* null, i32** %55, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  br label %56

56:                                               ; preds = %52, %46, %31
  br label %57

57:                                               ; preds = %56, %25, %8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  ret %struct.TYPE_6__* %58
}

declare dso_local %struct.TYPE_6__* @svn_wc_adm_probe_retrieve(i32**, i32*, i8*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_6__* @svn_wc_adm_probe_open3(i32**, i32*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @svn_wc_adm_access_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
