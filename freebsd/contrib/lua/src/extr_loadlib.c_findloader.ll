; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_loadlib.c_findloader.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_loadlib.c_findloader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"searchers\00", align 1
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"'package.searchers' must be a table\00", align 1
@LUA_TNIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"module '%s' not found:%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @findloader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findloader(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32 @luaL_buffinit(i32* %7, i32* %6)
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @lua_upvalueindex(i32 1)
  %11 = call i64 @lua_getfield(i32* %9, i32 %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @LUA_TTABLE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 (i32*, i8*, ...) @luaL_error(i32* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %14, %2
  store i32 1, i32* %5, align 4
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @lua_rawgeti(i32* %19, i32 3, i32 %20)
  %22 = load i64, i64* @LUA_TNIL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %18
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @lua_pop(i32* %25, i32 1)
  %27 = call i32 @luaL_pushresult(i32* %6)
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @lua_tostring(i32* %30, i32 -1)
  %32 = call i32 (i32*, i8*, ...) @luaL_error(i32* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8* %29, i32 %31)
  br label %33

33:                                               ; preds = %24, %18
  %34 = load i32*, i32** %3, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @lua_pushstring(i32* %34, i8* %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @lua_call(i32* %37, i32 1, i32 2)
  %39 = load i32*, i32** %3, align 8
  %40 = call i64 @lua_isfunction(i32* %39, i32 -2)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  ret void

43:                                               ; preds = %33
  %44 = load i32*, i32** %3, align 8
  %45 = call i64 @lua_isstring(i32* %44, i32 -2)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pop(i32* %48, i32 1)
  %50 = call i32 @luaL_addvalue(i32* %6)
  br label %54

51:                                               ; preds = %43
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_pop(i32* %52, i32 2)
  br label %54

54:                                               ; preds = %51, %47
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %18
}

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i64 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_upvalueindex(i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, ...) #1

declare dso_local i64 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i64 @lua_isfunction(i32*, i32) #1

declare dso_local i64 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
