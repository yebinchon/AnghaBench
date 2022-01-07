; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_synctask_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_synctask_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32*, i32*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SPA_VERSION_FAST_SNAP = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@dsl_dataset_snapshot_check = common dso_local global i32 0, align 4
@dsl_dataset_snapshot_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*)* @zcp_synctask_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_synctask_snapshot(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = bitcast %struct.TYPE_8__* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 32, i1 false)
  %14 = load i32*, i32** %5, align 8
  %15 = call i8* @lua_tostring(i32* %14, i32 1)
  store i8* %15, i8** %10, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call %struct.TYPE_7__* @zcp_run_info(i32* %16)
  store %struct.TYPE_7__* %17, %struct.TYPE_7__** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @spa_version(i32 %22)
  %24 = load i64, i64* @SPA_VERSION_FAST_SNAP, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOTSUP, align 4
  store i32 %27, i32* %4, align 4
  br label %58

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 3
  store i32* null, i32** %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  store i32* null, i32** %30, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = call i32 (...) @fnvlist_alloc()
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @fnvlist_add_boolean(i32 %38, i8* %39)
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32* @zcp_register_cleanup(i32* %41, i32* bitcast (i32 (i32)* @fnvlist_free to i32*), i32 %43)
  store i32* %44, i32** %12, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @dsl_dataset_snapshot_check, align 4
  %47 = load i32, i32* @dsl_dataset_snapshot_sync, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 @zcp_sync_task(i32* %45, i32 %46, i32 %47, %struct.TYPE_8__* %9, i32 %48, i8* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = call i32 @zcp_deregister_cleanup(i32* %51, i32* %52)
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @fnvlist_free(i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %28, %26
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @lua_tostring(i32*, i32) #2

declare dso_local %struct.TYPE_7__* @zcp_run_info(i32*) #2

declare dso_local i64 @spa_version(i32) #2

declare dso_local i32 @fnvlist_alloc(...) #2

declare dso_local i32 @fnvlist_add_boolean(i32, i8*) #2

declare dso_local i32* @zcp_register_cleanup(i32*, i32*, i32) #2

declare dso_local i32 @fnvlist_free(i32) #2

declare dso_local i32 @zcp_sync_task(i32*, i32, i32, %struct.TYPE_8__*, i32, i8*) #2

declare dso_local i32 @zcp_deregister_cleanup(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
