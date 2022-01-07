; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_push_scalar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_push_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i64 }
%struct.ucl_lua_funcdata = type { i32 }

@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ucl.null\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, i32)* @ucl_object_lua_push_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucl_object_lua_push_scalar(i32* %0, %struct.TYPE_10__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucl_lua_funcdata*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32*, i32** %5, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %19 = call i32 @ucl_object_lua_push_array(i32* %17, %struct.TYPE_10__* %18)
  store i32 %19, i32* %4, align 4
  br label %64

20:                                               ; preds = %11, %3
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %60 [
    i32 134, label %24
    i32 130, label %29
    i32 132, label %34
    i32 133, label %39
    i32 129, label %39
    i32 131, label %44
    i32 128, label %48
  ]

24:                                               ; preds = %20
  %25 = load i32*, i32** %5, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %27 = call i32 @ucl_obj_toboolean(%struct.TYPE_10__* %26)
  %28 = call i32 @lua_pushboolean(i32* %25, i32 %27)
  br label %63

29:                                               ; preds = %20
  %30 = load i32*, i32** %5, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = call i32 @ucl_obj_tostring(%struct.TYPE_10__* %31)
  %33 = call i32 @lua_pushstring(i32* %30, i32 %32)
  br label %63

34:                                               ; preds = %20
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %37 = call i32 @ucl_obj_toint(%struct.TYPE_10__* %36)
  %38 = call i32 @lua_pushnumber(i32* %35, i32 %37)
  br label %63

39:                                               ; preds = %20, %20
  %40 = load i32*, i32** %5, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %42 = call i32 @ucl_obj_todouble(%struct.TYPE_10__* %41)
  %43 = call i32 @lua_pushnumber(i32* %40, i32 %42)
  br label %63

44:                                               ; preds = %20
  %45 = load i32*, i32** %5, align 8
  %46 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %47 = call i32 @lua_getfield(i32* %45, i32 %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %63

48:                                               ; preds = %20
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.ucl_lua_funcdata*
  store %struct.ucl_lua_funcdata* %53, %struct.ucl_lua_funcdata** %8, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %56 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %57 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @lua_rawgeti(i32* %54, i32 %55, i32 %58)
  br label %63

60:                                               ; preds = %20
  %61 = load i32*, i32** %5, align 8
  %62 = call i32 @lua_pushnil(i32* %61)
  br label %63

63:                                               ; preds = %60, %48, %44, %39, %34, %29, %24
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %16
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @ucl_object_lua_push_array(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @ucl_obj_toboolean(%struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @ucl_obj_tostring(%struct.TYPE_10__*) #1

declare dso_local i32 @lua_pushnumber(i32*, i32) #1

declare dso_local i32 @ucl_obj_toint(%struct.TYPE_10__*) #1

declare dso_local i32 @ucl_obj_todouble(%struct.TYPE_10__*) #1

declare dso_local i32 @lua_getfield(i32*, i32, i8*) #1

declare dso_local i32 @lua_rawgeti(i32*, i32, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
