; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_put_xlate_handle_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_put_xlate_handle_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@xlate_handle_hash = common dso_local global i64 0, align 8
@SVN_UTF_NTOU_XLATE_HANDLE = common dso_local global i8* null, align 8
@xlat_ntou_static_handle = common dso_local global i32 0, align 4
@SVN_UTF_UTON_XLATE_HANDLE = common dso_local global i8* null, align 8
@xlat_uton_static_handle = common dso_local global i32 0, align 4
@xlate_handle_mutex = common dso_local global i32 0, align 4
@apr_pool_cleanup_null = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*, i32*)* @put_xlate_handle_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @put_xlate_handle_node(%struct.TYPE_7__* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %3
  %17 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %17, i32** %4, align 8
  br label %55

18:                                               ; preds = %3
  %19 = load i64, i64* @xlate_handle_hash, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** @SVN_UTF_NTOU_XLATE_HANDLE, align 8
  %24 = icmp eq i8* %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call %struct.TYPE_7__* @atomic_swap(i32* @xlat_ntou_static_handle, %struct.TYPE_7__* %26)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %5, align 8
  br label %36

28:                                               ; preds = %21
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** @SVN_UTF_UTON_XLATE_HANDLE, align 8
  %31 = icmp eq i8* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %34 = call %struct.TYPE_7__* @atomic_swap(i32* @xlat_uton_static_handle, %struct.TYPE_7__* %33)
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %5, align 8
  br label %35

35:                                               ; preds = %32, %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %40, i32** %4, align 8
  br label %55

41:                                               ; preds = %36
  %42 = load i32, i32* @xlate_handle_mutex, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @put_xlate_handle_node_internal(%struct.TYPE_7__* %43, i8* %44)
  %46 = call i32 @SVN_MUTEX__WITH_LOCK(i32 %42, i32 %45)
  br label %53

47:                                               ; preds = %18
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* @apr_pool_cleanup_null, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @apr_pool_userdata_set(%struct.TYPE_7__* %48, i8* %49, i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %47, %41
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %4, align 8
  br label %55

55:                                               ; preds = %53, %39, %16
  %56 = load i32*, i32** %4, align 8
  ret i32* %56
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_7__* @atomic_swap(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @SVN_MUTEX__WITH_LOCK(i32, i32) #1

declare dso_local i32 @put_xlate_handle_node_internal(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @apr_pool_userdata_set(%struct.TYPE_7__*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
