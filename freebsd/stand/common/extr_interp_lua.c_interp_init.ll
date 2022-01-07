; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp_lua.c_interp_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp_lua.c_interp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp_lua_softc = type { i32* }
%struct.TYPE_3__ = type { i64, i32 }

@lua_softc = common dso_local global %struct.interp_lua_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [12 x i8] c"script.lang\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"lua\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"creating context\00", align 1
@interp_lua_realloc = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"problem initializing the Lua interpreter\0A\00", align 1
@loadedlibs = common dso_local global %struct.TYPE_3__* null, align 8
@LOADER_LUA = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Startup error in %s:\0ALUA ERROR: %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interp_init() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.interp_lua_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store %struct.interp_lua_softc* @lua_softc, %struct.interp_lua_softc** %2, align 8
  %6 = call i32 @setenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %7 = call i32 @LDBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %8 = load i32, i32* @interp_lua_realloc, align 4
  %9 = call i32* @lua_newstate(i32 %8, i32* null)
  store i32* %9, i32** %1, align 8
  %10 = load i32*, i32** %1, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %0
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 (...) @abort() #3
  unreachable

15:                                               ; preds = %0
  %16 = load i32*, i32** %1, align 8
  %17 = load %struct.interp_lua_softc*, %struct.interp_lua_softc** %2, align 8
  %18 = getelementptr inbounds %struct.interp_lua_softc, %struct.interp_lua_softc* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @loadedlibs, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %4, align 8
  br label %20

20:                                               ; preds = %36, %15
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32*, i32** %1, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @luaL_requiref(i32* %26, i32 %29, i64 %32, i32 1)
  %34 = load i32*, i32** %1, align 8
  %35 = call i32 @lua_pop(i32* %34, i32 1)
  br label %36

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 1
  store %struct.TYPE_3__* %38, %struct.TYPE_3__** %4, align 8
  br label %20

39:                                               ; preds = %20
  %40 = load i8*, i8** @LOADER_LUA, align 8
  store i8* %40, i8** %3, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @interp_include(i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load i32*, i32** %1, align 8
  %46 = call i8* @lua_tostring(i32* %45, i32 -1)
  store i8* %46, i8** %5, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), %49 ], [ %51, %50 ]
  store i8* %53, i8** %5, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %54, i8* %55)
  %57 = load i32*, i32** %1, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 1)
  br label %59

59:                                               ; preds = %52, %39
  ret void
}

declare dso_local i32 @setenv(i8*, i8*, i32) #1

declare dso_local i32 @LDBG(i8*) #1

declare dso_local i32* @lua_newstate(i32, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @luaL_requiref(i32*, i32, i64, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @interp_include(i8*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
