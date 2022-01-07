; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_to_json.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_to_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_JSON = common dso_local global i32 0, align 4
@UCL_EMIT_JSON_COMPACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_to_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_to_json(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32, i32* @UCL_EMIT_JSON, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @lua_gettop(i32* %6)
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @lua_toboolean(i32* %10, i32 2)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %9
  br label %16

16:                                               ; preds = %15, %1
  %17 = load i32*, i32** %2, align 8
  %18 = call i32* @ucl_object_lua_import(i32* %17, i32 1)
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %3, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load i32*, i32** %2, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @lua_ucl_to_string(i32* %22, i32* %23, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @ucl_object_unref(i32* %26)
  br label %31

28:                                               ; preds = %16
  %29 = load i32*, i32** %2, align 8
  %30 = call i32 @lua_pushnil(i32* %29)
  br label %31

31:                                               ; preds = %28, %21
  ret i32 1
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_toboolean(i32*, i32) #1

declare dso_local i32* @ucl_object_lua_import(i32*, i32) #1

declare dso_local i32 @lua_ucl_to_string(i32*, i32*, i32) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
