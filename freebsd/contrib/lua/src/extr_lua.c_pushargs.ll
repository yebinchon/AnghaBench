; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_pushargs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lua.c_pushargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"arg\00", align 1
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"'arg' is not a table\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"too many arguments to script\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pushargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushargs(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i64 @lua_getglobal(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* @LUA_TTABLE, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @luaL_error(i32* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @luaL_len(i32* %13, i32 -1)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 3
  %19 = call i32 @luaL_checkstack(i32* %16, i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %20

20:                                               ; preds = %30, %12
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32*, i32** %2, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sub nsw i32 0, %26
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @lua_rawgeti(i32* %25, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i32*, i32** %2, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @lua_remove(i32* %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @luaL_error(i32*, i8*) #1

declare dso_local i64 @luaL_len(i32*, i32) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
