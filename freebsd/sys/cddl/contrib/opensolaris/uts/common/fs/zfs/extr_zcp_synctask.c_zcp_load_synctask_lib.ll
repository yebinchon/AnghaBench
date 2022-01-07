; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_load_synctask_lib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_synctask.c_zcp_load_synctask_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@zcp_synctask_destroy_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@zcp_synctask_promote_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@zcp_synctask_rollback_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@zcp_synctask_snapshot_info = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@__const.zcp_load_synctask_lib.zcp_synctask_funcs = private unnamed_addr constant [5 x %struct.TYPE_7__*] [%struct.TYPE_7__* @zcp_synctask_destroy_info, %struct.TYPE_7__* @zcp_synctask_promote_info, %struct.TYPE_7__* @zcp_synctask_rollback_info, %struct.TYPE_7__* @zcp_synctask_snapshot_info, %struct.TYPE_7__* null], align 16
@zcp_synctask_wrapper = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcp_load_synctask_lib(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [5 x %struct.TYPE_7__*], align 16
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = bitcast [5 x %struct.TYPE_7__*]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([5 x %struct.TYPE_7__*]* @__const.zcp_load_synctask_lib.zcp_synctask_funcs to i8*), i64 40, i1 false)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_newtable(i32* %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %37, %2
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [5 x %struct.TYPE_7__*], [5 x %struct.TYPE_7__*]* %6, i64 0, i64 %13
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [5 x %struct.TYPE_7__*], [5 x %struct.TYPE_7__*]* %6, i64 0, i64 %19
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %7, align 8
  %22 = load i32*, i32** %3, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = call i32 @lua_pushlightuserdata(i32* %22, %struct.TYPE_7__* %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @lua_pushboolean(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @lua_pushcclosure(i32* %28, i32* @zcp_synctask_wrapper, i32 2)
  %30 = load i32*, i32** %3, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lua_setfield(i32* %30, i32 -2, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 1
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %7, align 8
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %5, align 4
  br label %11

40:                                               ; preds = %11
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_newtable(i32*) #2

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @lua_pushboolean(i32*, i32) #2

declare dso_local i32 @lua_pushcclosure(i32*, i32*, i32) #2

declare dso_local i32 @lua_setfield(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
