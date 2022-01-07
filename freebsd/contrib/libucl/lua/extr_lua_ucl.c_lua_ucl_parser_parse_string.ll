; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_parse_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_parse_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_PARSE_UCL = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i64 0, align 8
@UCL_DUPLICATE_APPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"invalid arguments\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_parser_parse_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_parser_parse_string(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %8 = load i32, i32* @UCL_PARSE_UCL, align 4
  store i32 %8, i32* %6, align 4
  store i32 2, i32* %7, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = call %struct.ucl_parser* @lua_ucl_parser_get(i32* %9, i32 1)
  store %struct.ucl_parser* %10, %struct.ucl_parser** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i8* @luaL_checklstring(i32* %11, i32 2, i64* %5)
  store i8* %12, i8** %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @lua_type(i32* %13, i32 3)
  %15 = load i64, i64* @LUA_TSTRING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = call i32 @lua_tostring(i32* %18, i32 3)
  %20 = call i32 @lua_ucl_str_to_parse_type(i32 %19)
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %23 = icmp ne %struct.ucl_parser* %22, null
  br i1 %23, label %24, label %46

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %24
  %28 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @UCL_DUPLICATE_APPEND, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @ucl_parser_add_chunk_full(%struct.ucl_parser* %28, i8* %29, i64 %30, i32 0, i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i32*, i32** %2, align 8
  %37 = call i32 @lua_pushboolean(i32* %36, i32 1)
  store i32 1, i32* %7, align 4
  br label %45

38:                                               ; preds = %27
  %39 = load i32*, i32** %2, align 8
  %40 = call i32 @lua_pushboolean(i32* %39, i32 0)
  %41 = load i32*, i32** %2, align 8
  %42 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %43 = call i8* @ucl_parser_get_error(%struct.ucl_parser* %42)
  %44 = call i32 @lua_pushstring(i32* %41, i8* %43)
  br label %45

45:                                               ; preds = %38, %35
  br label %51

46:                                               ; preds = %24, %21
  %47 = load i32*, i32** %2, align 8
  %48 = call i32 @lua_pushboolean(i32* %47, i32 0)
  %49 = load i32*, i32** %2, align 8
  %50 = call i32 @lua_pushstring(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46, %45
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.ucl_parser* @lua_ucl_parser_get(i32*, i32) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_ucl_str_to_parse_type(i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local i64 @ucl_parser_add_chunk_full(%struct.ucl_parser*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i8* @ucl_parser_get_error(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
