; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_io_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_liolib.c_io_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LUA_FILEHANDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"closed file\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_type(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32 @luaL_checkany(i32* %4, i32 1)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @LUA_FILEHANDLE, align 4
  %8 = call i64 @luaL_testudata(i32* %6, i32 1, i32 %7)
  %9 = inttoptr i64 %8 to i32*
  store i32* %9, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @lua_pushnil(i32* %13)
  br label %26

15:                                               ; preds = %1
  %16 = load i32*, i32** %3, align 8
  %17 = call i64 @isclosed(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @lua_pushliteral(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %25

22:                                               ; preds = %15
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @lua_pushliteral(i32* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  br label %26

26:                                               ; preds = %25, %12
  ret i32 1
}

declare dso_local i32 @luaL_checkany(i32*, i32) #1

declare dso_local i64 @luaL_testudata(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @isclosed(i32*) #1

declare dso_local i32 @lua_pushliteral(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
