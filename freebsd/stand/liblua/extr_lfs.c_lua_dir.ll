; ModuleID = '/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/liblua/extr_lfs.c_lua_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lua_dir_iter_next = common dso_local global i32 0, align 4
@DIR_METATABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_dir(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp ne i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @lua_pushnil(i32* %10)
  store i32 1, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checkstring(i32* %13, i32 1)
  store i8* %14, i8** %4, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32* @opendir(i8* %15)
  store i32* %16, i32** %5, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @lua_pushnil(i32* %20)
  store i32 1, i32* %2, align 4
  br label %35

22:                                               ; preds = %12
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @lua_dir_iter_next, align 4
  %25 = call i32 @lua_pushcfunction(i32* %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @lua_newuserdata(i32* %27, i32 8)
  %29 = inttoptr i64 %28 to i32**
  store i32* %26, i32** %29, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* @DIR_METATABLE, align 4
  %32 = call i32 @luaL_getmetatable(i32* %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_setmetatable(i32* %33, i32 -2)
  store i32 2, i32* %2, align 4
  br label %35

35:                                               ; preds = %22, %19, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @lua_pushcfunction(i32*, i32) #1

declare dso_local i64 @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @luaL_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
