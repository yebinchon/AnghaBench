; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_add_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/lua/src/extr_lstrlib.c_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [33 x i8] c"invalid replacement value (a %s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i8*, i8*, i32)* @add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_value(%struct.TYPE_6__* %0, i32* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %11, align 8
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %34 [
    i32 129, label %17
    i32 128, label %27
  ]

17:                                               ; preds = %5
  %18 = load i32*, i32** %11, align 8
  %19 = call i32 @lua_pushvalue(i32* %18, i32 3)
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @push_captures(%struct.TYPE_6__* %20, i8* %21, i8* %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @lua_call(i32* %24, i32 %25, i32 1)
  br label %40

27:                                               ; preds = %5
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @push_onecapture(%struct.TYPE_6__* %28, i32 0, i8* %29, i8* %30)
  %32 = load i32*, i32** %11, align 8
  %33 = call i32 @lua_gettable(i32* %32, i32 3)
  br label %40

34:                                               ; preds = %5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @add_s(%struct.TYPE_6__* %35, i32* %36, i8* %37, i8* %38)
  br label %69

40:                                               ; preds = %27, %17
  %41 = load i32*, i32** %11, align 8
  %42 = call i32 @lua_toboolean(i32* %41, i32 -1)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = call i32 @lua_pop(i32* %45, i32 1)
  %47 = load i32*, i32** %11, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = trunc i64 %53 to i32
  %55 = call i32 @lua_pushlstring(i32* %47, i8* %48, i32 %54)
  br label %66

56:                                               ; preds = %40
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @lua_isstring(i32* %57, i32 -1)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load i32*, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i32 @luaL_typename(i32* %62, i32 -1)
  %64 = call i32 @luaL_error(i32* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %56
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @luaL_addvalue(i32* %67)
  br label %69

69:                                               ; preds = %66, %34
  ret void
}

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @push_captures(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @push_onecapture(%struct.TYPE_6__*, i32, i8*, i8*) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32 @add_s(%struct.TYPE_6__*, i32*, i8*, i8*) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, i32) #1

declare dso_local i32 @lua_isstring(i32*, i32) #1

declare dso_local i32 @luaL_error(i32*, i8*, i32) #1

declare dso_local i32 @luaL_typename(i32*, i32) #1

declare dso_local i32 @luaL_addvalue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
