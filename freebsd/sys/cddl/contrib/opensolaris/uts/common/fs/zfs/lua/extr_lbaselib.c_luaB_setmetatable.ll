; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lbaselib.c_luaB_setmetatable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/lua/extr_lbaselib.c_luaB_setmetatable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_TTABLE = common dso_local global i32 0, align 4
@LUA_TNIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nil or table expected\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"__metatable\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot change a protected metatable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_setmetatable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_setmetatable(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @lua_type(i32* %5, i32 2)
  store i32 %6, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = load i32, i32* @LUA_TTABLE, align 4
  %9 = call i32 @luaL_checktype(i32* %7, i32 1, i32 %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LUA_TNIL, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @LUA_TTABLE, align 4
  %17 = icmp eq i32 %15, %16
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @luaL_argcheck(i32* %10, i32 %20, i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %3, align 8
  %23 = call i64 @luaL_getmetafield(i32* %22, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @luaL_error(i32* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %18
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_settop(i32* %29, i32 2)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_setmetatable(i32* %31, i32 1)
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i64 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
