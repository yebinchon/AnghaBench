; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_props_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zcp_iter.c_zcp_props_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }

@FTAG = common dso_local global i32 0, align 4
@zcp_props_list_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@zcp_props_iter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @zcp_props_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zcp_props_list(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i8* @lua_tostring(i32* %9, i32 1)
  store i8* %10, i8** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call %struct.TYPE_3__* @zcp_run_info(i32* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32** @lua_newuserdata(i32* %15, i32 8)
  store i32** %16, i32*** %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @FTAG, align 4
  %21 = call i32* @zcp_dataset_hold(i32* %17, i32* %18, i8* %19, i32 %20)
  store i32* %21, i32** %8, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

25:                                               ; preds = %1
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @dmu_objset_from_ds(i32* %26, i32** %6)
  %28 = call i32 @VERIFY0(i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32**, i32*** %7, align 8
  %31 = call i32 @dsl_prop_get_all(i32* %29, i32** %30)
  %32 = call i32 @VERIFY0(i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* @FTAG, align 4
  %35 = call i32 @dsl_dataset_rele(i32* %33, i32 %34)
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @zcp_props_list_info, i32 0, i32 0), align 4
  %38 = call i32 @luaL_getmetatable(i32* %36, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_setmetatable(i32* %39, i32 -2)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @lua_pushlightuserdata(i32* %41, i32* null)
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pushcclosure(i32* %43, i32* @zcp_props_iter, i32 2)
  store i32 1, i32* %2, align 4
  br label %45

45:                                               ; preds = %25, %24
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local %struct.TYPE_3__* @zcp_run_info(i32*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i32* @zcp_dataset_hold(i32*, i32*, i8*, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_objset_from_ds(i32*, i32**) #1

declare dso_local i32 @dsl_prop_get_all(i32*, i32**) #1

declare dso_local i32 @dsl_dataset_rele(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_pushlightuserdata(i32*, i32*) #1

declare dso_local i32 @lua_pushcclosure(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
