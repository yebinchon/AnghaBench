; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_load_list_lib.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_load_list_lib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32* }

@zcp_children_list_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@zcp_snapshots_list_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@zcp_props_list_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@zcp_clones_list_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@zcp_system_props_list_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@__const.zcp_load_list_lib.zcp_list_funcs = private unnamed_addr constant [6 x %struct.TYPE_8__*] [%struct.TYPE_8__* @zcp_children_list_info, %struct.TYPE_8__* @zcp_snapshots_list_info, %struct.TYPE_8__* @zcp_props_list_info, %struct.TYPE_8__* @zcp_clones_list_info, %struct.TYPE_8__* @zcp_system_props_list_info, %struct.TYPE_8__* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"__gc\00", align 1
@zcp_list_func = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zcp_load_list_lib(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x %struct.TYPE_8__*], align 16
  %5 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = bitcast [6 x %struct.TYPE_8__*]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([6 x %struct.TYPE_8__*]* @__const.zcp_load_list_lib.zcp_list_funcs to i8*), i64 48, i1 false)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_newtable(i32* %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %54, %1
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [6 x %struct.TYPE_8__*], [6 x %struct.TYPE_8__*]* %4, i64 0, i64 %11
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = icmp ne %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %57

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [6 x %struct.TYPE_8__*], [6 x %struct.TYPE_8__*]* %4, i64 0, i64 %17
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %5, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i32*, i32** %2, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @luaL_newmetatable(i32* %25, i32 %28)
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @lua_pushstring(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load i32*, i32** %2, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @lua_pushcfunction(i32* %32, i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_settable(i32* %37, i32 -3)
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_pop(i32* %39, i32 1)
  br label %41

41:                                               ; preds = %24, %15
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = call i32 @lua_pushlightuserdata(i32* %42, %struct.TYPE_8__* %43)
  %45 = load i32*, i32** %2, align 8
  %46 = call i32 @lua_pushcclosure(i32* %45, i32* @zcp_list_func, i32 1)
  %47 = load i32*, i32** %2, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @lua_setfield(i32* %47, i32 -2, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 1
  store %struct.TYPE_8__* %53, %struct.TYPE_8__** %5, align 8
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %9

57:                                               ; preds = %9
  ret i32 1
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @lua_newtable(i32*) #2

declare dso_local i32 @luaL_newmetatable(i32*, i32) #2

declare dso_local i32 @lua_pushstring(i32*, i8*) #2

declare dso_local i32 @lua_pushcfunction(i32*, i32*) #2

declare dso_local i32 @lua_settable(i32*, i32) #2

declare dso_local i32 @lua_pop(i32*, i32) #2

declare dso_local i32 @lua_pushlightuserdata(i32*, %struct.TYPE_8__*) #2

declare dso_local i32 @lua_pushcclosure(i32*, i32*, i32) #2

declare dso_local i32 @lua_setfield(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
