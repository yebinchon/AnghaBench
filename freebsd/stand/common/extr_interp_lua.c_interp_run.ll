; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp_lua.c_interp_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp_lua.c_interp_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interp_lua_softc = type { i32* }

@lua_softc = common dso_local global %struct.interp_lua_softc zeroinitializer, align 8
@.str = private unnamed_addr constant [18 x i8] c"executing line...\00", align 1
@command_errmsg = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"cli_execute\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Command failed\0A\00", align 1
@CMD_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"Failed to parse '%s'\0A\00", align 1
@CMD_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @interp_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.interp_lua_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.interp_lua_softc* @lua_softc, %struct.interp_lua_softc** %7, align 8
  %10 = load %struct.interp_lua_softc*, %struct.interp_lua_softc** %7, align 8
  %11 = getelementptr inbounds %struct.interp_lua_softc, %struct.interp_lua_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = call i32 @LDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32*, i32** %6, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @luaL_dostring(i32* %14, i8* %15)
  store i32 %16, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @lua_pop(i32* %19, i32 1)
  store i8* null, i8** @command_errmsg, align 8
  %21 = load i8*, i8** %2, align 8
  %22 = call i64 @parse(i32* %3, i8*** %5, i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load i32*, i32** %6, align 8
  %26 = call i32 @lua_getglobal(i32* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %39, %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32*, i32** %6, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8*, i8** %33, i64 %35
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @lua_pushstring(i32* %32, i8* %37)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %27

42:                                               ; preds = %27
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @lua_pcall(i32* %43, i32 %44, i32 1, i32 0)
  store i32 %45, i32* %8, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @lua_tointeger(i32* %46, i32 1)
  store i32 %47, i32* %9, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @lua_pop(i32* %48, i32 1)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52, %42
  %56 = load i32, i32* %3, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = call i32 @interp_builtin_cmd(i32 %56, i8** %57)
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %59
  %63 = load i8*, i8** @command_errmsg, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i8*, i8** @command_errmsg, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %66)
  br label %70

68:                                               ; preds = %62
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  %71 = load i32, i32* @CMD_ERROR, align 4
  store i32 %71, i32* %8, align 4
  br label %72

72:                                               ; preds = %70, %59
  %73 = load i8**, i8*** %5, align 8
  %74 = call i32 @free(i8** %73)
  br label %79

75:                                               ; preds = %18
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* @CMD_ERROR, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %75, %72
  br label %80

80:                                               ; preds = %79, %1
  %81 = load i32, i32* %8, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* @CMD_OK, align 4
  br label %87

85:                                               ; preds = %80
  %86 = load i32, i32* @CMD_ERROR, align 4
  br label %87

87:                                               ; preds = %85, %83
  %88 = phi i32 [ %84, %83 ], [ %86, %85 ]
  ret i32 %88
}

declare dso_local i32 @LDBG(i8*) #1

declare dso_local i32 @luaL_dostring(i32*, i8*) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i64 @parse(i32*, i8***, i8*) #1

declare dso_local i32 @lua_getglobal(i32*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local i32 @lua_pcall(i32*, i32, i32, i32) #1

declare dso_local i32 @lua_tointeger(i32*, i32) #1

declare dso_local i32 @interp_builtin_cmd(i32, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
