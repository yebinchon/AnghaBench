; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_get_xlate_handle_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_utf.c_get_xlate_handle_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@xlate_handle_hash = common dso_local global i64 0, align 8
@SVN_UTF_NTOU_XLATE_HANDLE = common dso_local global i8* null, align 8
@xlat_ntou_static_handle = common dso_local global i32 0, align 4
@SVN_UTF_UTON_XLATE_HANDLE = common dso_local global i8* null, align 8
@xlat_uton_static_handle = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@xlate_handle_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__**, i8*, i8*, i8*, i32*)* @get_xlate_handle_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_xlate_handle_node(%struct.TYPE_6__** %0, i8* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %69

16:                                               ; preds = %5
  %17 = load i64, i64* @xlate_handle_hash, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %16
  %20 = load i8*, i8** %10, align 8
  %21 = load i8*, i8** @SVN_UTF_NTOU_XLATE_HANDLE, align 8
  %22 = icmp eq i8* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call %struct.TYPE_6__* @atomic_swap(i32* @xlat_ntou_static_handle, i32* null)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %12, align 8
  br label %32

25:                                               ; preds = %19
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** @SVN_UTF_UTON_XLATE_HANDLE, align 8
  %28 = icmp eq i8* %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call %struct.TYPE_6__* @atomic_swap(i32* @xlat_uton_static_handle, i32* null)
  store %struct.TYPE_6__* %30, %struct.TYPE_6__** %12, align 8
  br label %31

31:                                               ; preds = %29, %25
  br label %32

32:                                               ; preds = %31, %23
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %32
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %42, align 8
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %6, align 8
  br label %79

44:                                               ; preds = %35, %32
  br label %68

45:                                               ; preds = %16
  %46 = load i8*, i8** %10, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @apr_pool_userdata_get(i8** %13, i8* %46, i32* %47)
  %49 = load i8*, i8** %13, align 8
  %50 = bitcast i8* %49 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %12, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %52 = icmp ne %struct.TYPE_6__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %6, align 8
  br label %79

62:                                               ; preds = %53, %45
  %63 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = call i32* @xlate_alloc_handle(%struct.TYPE_6__** %63, i8* %64, i8* %65, i32* %66)
  store i32* %67, i32** %6, align 8
  br label %79

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %5
  %70 = load i32, i32* @xlate_handle_mutex, align 4
  %71 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = call i32 @get_xlate_handle_node_internal(%struct.TYPE_6__** %71, i8* %72, i8* %73, i8* %74, i32* %75)
  %77 = call i32 @SVN_MUTEX__WITH_LOCK(i32 %70, i32 %76)
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %6, align 8
  br label %79

79:                                               ; preds = %69, %62, %58, %40
  %80 = load i32*, i32** %6, align 8
  ret i32* %80
}

declare dso_local %struct.TYPE_6__* @atomic_swap(i32*, i32*) #1

declare dso_local i32 @apr_pool_userdata_get(i8**, i8*, i32*) #1

declare dso_local i32* @xlate_alloc_handle(%struct.TYPE_6__**, i8*, i8*, i32*) #1

declare dso_local i32 @SVN_MUTEX__WITH_LOCK(i32, i32) #1

declare dso_local i32 @get_xlate_handle_node_internal(%struct.TYPE_6__**, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
