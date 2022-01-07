; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lbaselib.c_luaB_collectgarbage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lbaselib.c_luaB_collectgarbage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@luaB_collectgarbage.opts = internal constant [9 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"collect\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"setpause\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"setstepmul\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"isrunning\00", align 1
@luaB_collectgarbage.optsnum = internal constant [8 x i32] [i32 128, i32 132, i32 135, i32 134, i32 129, i32 131, i32 130, i32 133], align 16
@LUA_GCCOUNTB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_collectgarbage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_collectgarbage(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @luaL_checkoption(i32* %8, i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds ([9 x i8*], [9 x i8*]* @luaB_collectgarbage.opts, i64 0, i64 0))
  %10 = getelementptr inbounds [8 x i32], [8 x i32]* @luaB_collectgarbage.optsnum, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @luaL_optinteger(i32* %12, i32 2, i32 0)
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @lua_gc(i32* %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %34 [
    i32 134, label %20
    i32 129, label %30
    i32 133, label %30
  ]

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @LUA_GCCOUNTB, align 4
  %23 = call i32 @lua_gc(i32* %21, i32 %22, i32 0)
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sdiv i32 %26, 1024
  %28 = add nsw i32 %25, %27
  %29 = call i32 @lua_pushnumber(i32* %24, i32 %28)
  store i32 1, i32* %2, align 4
  br label %38

30:                                               ; preds = %1, %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @lua_pushboolean(i32* %31, i32 %32)
  store i32 1, i32* %2, align 4
  br label %38

34:                                               ; preds = %1
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @lua_pushinteger(i32* %35, i32 %36)
  store i32 1, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %30, %20
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i64 @luaL_checkoption(i32*, i32, i8*, i8**) #1

declare dso_local i64 @luaL_optinteger(i32*, i32, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
