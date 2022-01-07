; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@UCL_PARSER_NO_FILEVARS = common dso_local global i32 0, align 4
@PARSER_META = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_parser_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_parser_init(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca %struct.ucl_parser**, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %6 = load i32, i32* @UCL_PARSER_NO_FILEVARS, align 4
  store i32 %6, i32* %5, align 4
  %7 = load i32*, i32** %2, align 8
  %8 = call i32 @lua_gettop(i32* %7)
  %9 = icmp sge i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @lua_tonumber(i32* %11, i32 1)
  store i32 %12, i32* %5, align 4
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.ucl_parser* @ucl_parser_new(i32 %14)
  store %struct.ucl_parser* %15, %struct.ucl_parser** %3, align 8
  %16 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %17 = icmp eq %struct.ucl_parser* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @lua_pushnil(i32* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i32*, i32** %2, align 8
  %23 = call %struct.ucl_parser** @lua_newuserdata(i32* %22, i32 8)
  store %struct.ucl_parser** %23, %struct.ucl_parser*** %4, align 8
  %24 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %25 = load %struct.ucl_parser**, %struct.ucl_parser*** %4, align 8
  store %struct.ucl_parser* %24, %struct.ucl_parser** %25, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = load i32, i32* @PARSER_META, align 4
  %28 = call i32 @luaL_getmetatable(i32* %26, i32 %27)
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_setmetatable(i32* %29, i32 -2)
  ret i32 1
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local %struct.ucl_parser** @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
