; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lbaselib.c_luaB_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lbaselib.c_luaB_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"bt\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"=(load)\00", align 1
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@RESERVEDSLOT = common dso_local global i32 0, align 4
@generic_reader = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @luaB_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @luaB_load(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @lua_tolstring(i32* %10, i32 1, i64* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i32*, i32** %2, align 8
  %13 = call i8* @luaL_optstring(i32* %12, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @lua_isnone(i32* %14, i32 4)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 4, i32 0
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load i32*, i32** %2, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i8* @luaL_optstring(i32* %23, i32 2, i8* %24)
  store i8* %25, i8** %8, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @luaL_loadbufferx(i32* %26, i8* %27, i64 %28, i8* %29, i8* %30)
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %1
  %33 = load i32*, i32** %2, align 8
  %34 = call i8* @luaL_optstring(i32* %33, i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i8* %34, i8** %9, align 8
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @LUA_TFUNCTION, align 4
  %37 = call i32 @luaL_checktype(i32* %35, i32 1, i32 %36)
  %38 = load i32*, i32** %2, align 8
  %39 = load i32, i32* @RESERVEDSLOT, align 4
  %40 = call i32 @lua_settop(i32* %38, i32 %39)
  %41 = load i32*, i32** %2, align 8
  %42 = load i32, i32* @generic_reader, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @lua_load(i32* %41, i32 %42, i32* null, i8* %43, i8* %44)
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %32, %22
  %47 = load i32*, i32** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @load_aux(i32* %47, i32 %48, i32 %49)
  ret i32 %50
}

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_optstring(i32*, i32, i8*) #1

declare dso_local i32 @lua_isnone(i32*, i32) #1

declare dso_local i32 @luaL_loadbufferx(i32*, i8*, i64, i8*, i8*) #1

declare dso_local i32 @luaL_checktype(i32*, i32, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_load(i32*, i32, i32*, i8*, i8*) #1

declare dso_local i32 @load_aux(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
