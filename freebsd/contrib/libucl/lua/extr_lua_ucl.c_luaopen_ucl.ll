; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_luaopen_ucl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_luaopen_ucl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"__mode\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"ucl.refs\00", align 1
@lua_ucl_parser_init = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"parser\00", align 1
@lua_ucl_to_json = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"to_json\00", align 1
@lua_ucl_to_config = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"to_config\00", align 1
@lua_ucl_to_format = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"to_format\00", align 1
@ucl_null = common dso_local global i32 0, align 4
@NULL_META = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c"ucl.null\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"null\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @luaopen_ucl(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @lua_ucl_parser_mt(i32* %3)
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 @lua_ucl_null_mt(i32* %5)
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_ucl_object_mt(i32* %7)
  %9 = load i32*, i32** %2, align 8
  %10 = call i32 @lua_createtable(i32* %9, i32 0, i32 2)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_pushliteral(i32* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_setfield(i32* %13, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @lua_pushvalue(i32* %15, i32 -1)
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_setmetatable(i32* %17, i32 -2)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %21 = call i32 @lua_setfield(i32* %19, i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @lua_newtable(i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i32, i32* @lua_ucl_parser_init, align 4
  %26 = call i32 @lua_pushcfunction(i32* %24, i32 %25)
  %27 = load i32*, i32** %2, align 8
  %28 = call i32 @lua_setfield(i32* %27, i32 -2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @lua_ucl_to_json, align 4
  %31 = call i32 @lua_pushcfunction(i32* %29, i32 %30)
  %32 = load i32*, i32** %2, align 8
  %33 = call i32 @lua_setfield(i32* %32, i32 -2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* @lua_ucl_to_config, align 4
  %36 = call i32 @lua_pushcfunction(i32* %34, i32 %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @lua_setfield(i32* %37, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %39 = load i32*, i32** %2, align 8
  %40 = load i32, i32* @lua_ucl_to_format, align 4
  %41 = call i32 @lua_pushcfunction(i32* %39, i32 %40)
  %42 = load i32*, i32** %2, align 8
  %43 = call i32 @lua_setfield(i32* %42, i32 -2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @lua_newuserdata(i32* %44, i32 0)
  store i32 %45, i32* @ucl_null, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* @NULL_META, align 4
  %48 = call i32 @luaL_getmetatable(i32* %46, i32 %47)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_setmetatable(i32* %49, i32 -2)
  %51 = load i32*, i32** %2, align 8
  %52 = call i32 @lua_pushvalue(i32* %51, i32 -1)
  %53 = load i32*, i32** %2, align 8
  %54 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %55 = call i32 @lua_setfield(i32* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %56 = load i32*, i32** %2, align 8
  %57 = call i32 @lua_setfield(i32* %56, i32 -2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  ret i32 1
}

declare dso_local i32 @lua_ucl_parser_mt(i32*) #1

declare dso_local i32 @lua_ucl_null_mt(i32*) #1

declare dso_local i32 @lua_ucl_object_mt(i32*) #1

declare dso_local i32 @lua_createtable(i32*, i32, i32) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

declare dso_local i32 @lua_setfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

declare dso_local i32 @lua_newtable(i32*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i32 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
