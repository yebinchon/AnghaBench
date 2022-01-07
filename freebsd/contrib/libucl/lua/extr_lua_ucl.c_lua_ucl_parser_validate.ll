; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_parser_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i64 }
%struct.ucl_schema_error = type { i32 }

@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"cannot load schema from lua table\00", align 1
@LUA_TSTRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot parse schema file \22%s\22: %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"invalid schema argument\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"validation error: %s\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"invalid parser or empty top object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_parser_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_parser_validate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.ucl_parser*, align 8
  %5 = alloca %struct.ucl_parser*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ucl_schema_error, align 4
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call %struct.ucl_parser* @lua_ucl_parser_get(i32* %9, i32 1)
  store %struct.ucl_parser* %10, %struct.ucl_parser** %4, align 8
  %11 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %12 = icmp ne %struct.ucl_parser* %11, null
  br i1 %12, label %13, label %92

13:                                               ; preds = %1
  %14 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %15 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %92

18:                                               ; preds = %13
  %19 = load i32*, i32** %3, align 8
  %20 = call i64 @lua_type(i32* %19, i32 2)
  %21 = load i64, i64* @LUA_TTABLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @ucl_object_lua_import(i32* %24, i32 2)
  store i32* %25, i32** %6, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @lua_pushboolean(i32* %29, i32 0)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @lua_pushstring(i32* %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %98

33:                                               ; preds = %23
  br label %68

34:                                               ; preds = %18
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @lua_type(i32* %35, i32 2)
  %37 = load i64, i64* @LUA_TSTRING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = call %struct.ucl_parser* @ucl_parser_new(i32 0)
  store %struct.ucl_parser* %40, %struct.ucl_parser** %5, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i8* @luaL_checkstring(i32* %41, i32 2)
  store i8* %42, i8** %7, align 8
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @ucl_parser_add_file(%struct.ucl_parser* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %39
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @lua_pushboolean(i32* %48, i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %53 = call i32 @ucl_parser_get_error(%struct.ucl_parser* %52)
  %54 = call i32 (i32*, i8*, i8*, ...) @lua_pushfstring(i32* %50, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 %53)
  %55 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %56 = call i32 @ucl_parser_free(%struct.ucl_parser* %55)
  store i32 2, i32* %2, align 4
  br label %98

57:                                               ; preds = %39
  %58 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %59 = call i32* @ucl_parser_get_object(%struct.ucl_parser* %58)
  store i32* %59, i32** %6, align 8
  %60 = load %struct.ucl_parser*, %struct.ucl_parser** %5, align 8
  %61 = call i32 @ucl_parser_free(%struct.ucl_parser* %60)
  br label %67

62:                                               ; preds = %34
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_pushboolean(i32* %63, i32 0)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32 @lua_pushstring(i32* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 2, i32* %2, align 4
  br label %98

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.ucl_parser*, %struct.ucl_parser** %4, align 8
  %71 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @ucl_object_validate(i32* %69, i64 %72, %struct.ucl_schema_error* %8)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load i32*, i32** %3, align 8
  %77 = call i32 @lua_pushboolean(i32* %76, i32 0)
  %78 = load i32*, i32** %3, align 8
  %79 = getelementptr inbounds %struct.ucl_schema_error, %struct.ucl_schema_error* %8, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 (i32*, i8*, i8*, ...) @lua_pushfstring(i32* %78, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  br label %89

84:                                               ; preds = %68
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @lua_pushboolean(i32* %85, i32 1)
  %87 = load i32*, i32** %3, align 8
  %88 = call i32 @lua_pushnil(i32* %87)
  br label %89

89:                                               ; preds = %84, %75
  %90 = load i32*, i32** %6, align 8
  %91 = call i32 @ucl_object_unref(i32* %90)
  br label %97

92:                                               ; preds = %13, %1
  %93 = load i32*, i32** %3, align 8
  %94 = call i32 @lua_pushboolean(i32* %93, i32 0)
  %95 = load i32*, i32** %3, align 8
  %96 = call i32 @lua_pushstring(i32* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %89
  store i32 2, i32* %2, align 4
  br label %98

98:                                               ; preds = %97, %62, %47, %28
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.ucl_parser* @lua_ucl_parser_get(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i32* @ucl_object_lua_import(i32*, i32) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

declare dso_local %struct.ucl_parser* @ucl_parser_new(i32) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @ucl_parser_add_file(%struct.ucl_parser*, i8*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*, ...) #1

declare dso_local i32 @ucl_parser_get_error(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_parser_free(%struct.ucl_parser*) #1

declare dso_local i32* @ucl_parser_get_object(%struct.ucl_parser*) #1

declare dso_local i32 @ucl_object_validate(i32*, i64, %struct.ucl_schema_error*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @ucl_object_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
