; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_to_format.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_to_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UCL_EMIT_JSON = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i64 0, align 8
@UCL_EMIT_YAML = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"json\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"json-compact\00", align 1
@UCL_EMIT_JSON_COMPACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"yaml\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ucl\00", align 1
@UCL_EMIT_CONFIG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"msgpack\00", align 1
@UCL_EMIT_MSGPACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_to_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_to_format(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32, i32* @UCL_EMIT_JSON, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @lua_gettop(i32* %8)
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %77

11:                                               ; preds = %1
  %12 = load i32*, i32** %3, align 8
  %13 = call i64 @lua_type(i32* %12, i32 2)
  %14 = load i64, i64* @LUA_TNUMBER, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_tonumber(i32* %17, i32 2)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @UCL_EMIT_YAML, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %16
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_pushnil(i32* %26)
  store i32 1, i32* %2, align 4
  br label %93

28:                                               ; preds = %21
  br label %76

29:                                               ; preds = %11
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @lua_type(i32* %30, i32 2)
  %32 = load i64, i64* @LUA_TSTRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @lua_tostring(i32* %35, i32 2)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcasecmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @UCL_EMIT_JSON, align 4
  store i32 %41, i32* %5, align 4
  br label %74

42:                                               ; preds = %34
  %43 = load i8*, i8** %6, align 8
  %44 = call i64 @strcasecmp(i8* %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* @UCL_EMIT_JSON_COMPACT, align 4
  store i32 %47, i32* %5, align 4
  br label %73

48:                                               ; preds = %42
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @strcasecmp(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @UCL_EMIT_YAML, align 4
  store i32 %53, i32* %5, align 4
  br label %72

54:                                               ; preds = %48
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @strcasecmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8*, i8** %6, align 8
  %60 = call i64 @strcasecmp(i8* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = load i32, i32* @UCL_EMIT_CONFIG, align 4
  store i32 %63, i32* %5, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load i8*, i8** %6, align 8
  %66 = call i64 @strcasecmp(i8* %65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @UCL_EMIT_MSGPACK, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %52
  br label %73

73:                                               ; preds = %72, %46
  br label %74

74:                                               ; preds = %73, %40
  br label %75

75:                                               ; preds = %74, %29
  br label %76

76:                                               ; preds = %75, %28
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i32*, i32** %3, align 8
  %79 = call i32* @ucl_object_lua_import(i32* %78, i32 1)
  store i32* %79, i32** %4, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @lua_ucl_to_string(i32* %83, i32* %84, i32 %85)
  %87 = load i32*, i32** %4, align 8
  %88 = call i32 @ucl_object_unref(i32* %87)
  br label %92

89:                                               ; preds = %77
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_pushnil(i32* %90)
  br label %92

92:                                               ; preds = %89, %82
  store i32 1, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %25
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32 @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32* @ucl_object_lua_import(i32*, i32) #1

declare dso_local i32 @lua_ucl_to_string(i32*, i32*, i32) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
