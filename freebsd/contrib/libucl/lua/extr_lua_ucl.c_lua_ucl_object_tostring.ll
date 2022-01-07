; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_object_tostring.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_object_tostring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_JSON_COMPACT = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_object_tostring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_object_tostring(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @lua_ucl_object_get(i32* %8, i32 1)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @lua_gettop(i32* %13)
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i64 @lua_type(i32* %17, i32 2)
  %19 = load i64, i64* @LUA_TSTRING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i32*, i32** %3, align 8
  %23 = call i8* @lua_tostring(i32* %22, i32 2)
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @lua_ucl_str_to_emit_type(i8* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %16
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @lua_ucl_to_string(i32* %28, i32* %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @lua_pushnil(i32* %33)
  br label %35

35:                                               ; preds = %32
  store i32 1, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32* @lua_ucl_object_get(i32*, i32) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32 @lua_ucl_str_to_emit_type(i8*) #1

declare dso_local i32 @lua_ucl_to_string(i32*, i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
