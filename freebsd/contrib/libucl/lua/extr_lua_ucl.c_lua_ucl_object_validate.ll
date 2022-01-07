; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_object_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_lua_ucl_object_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_schema_error = type { i8* }

@UCL_OBJECT = common dso_local global i64 0, align 8
@LUA_TSTRING = common dso_local global i64 0, align 8
@LUA_TUSERDATA = common dso_local global i64 0, align 8
@LUA_TTABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"validation error: %s\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"cannot find the requested path: %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"invalid object or schema\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lua_ucl_object_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_ucl_object_validate(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucl_schema_error, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i8* null, i8** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @lua_ucl_object_get(i32* %11, i32 1)
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i32* @lua_ucl_object_get(i32* %13, i32 2)
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %143

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %143

20:                                               ; preds = %17
  %21 = load i32*, i32** %5, align 8
  %22 = call i64 @ucl_object_type(i32* %21)
  %23 = load i64, i64* @UCL_OBJECT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %143

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @lua_gettop(i32* %26)
  %28 = icmp sgt i32 %27, 2
  br i1 %28, label %29, label %79

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = call i64 @lua_type(i32* %30, i32 3)
  %32 = load i64, i64* @LUA_TSTRING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load i32*, i32** %3, align 8
  %36 = call i8* @lua_tostring(i32* %35, i32 3)
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 35
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  br label %45

45:                                               ; preds = %42, %34
  br label %60

46:                                               ; preds = %29
  %47 = load i32*, i32** %3, align 8
  %48 = call i64 @lua_type(i32* %47, i32 3)
  %49 = load i64, i64* @LUA_TUSERDATA, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load i32*, i32** %3, align 8
  %53 = call i64 @lua_type(i32* %52, i32 3)
  %54 = load i64, i64* @LUA_TTABLE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %46
  %57 = load i32*, i32** %3, align 8
  %58 = call i32* @lua_ucl_object_get(i32* %57, i32 3)
  store i32* %58, i32** %6, align 8
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %45
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_gettop(i32* %61)
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i32*, i32** %3, align 8
  %66 = call i64 @lua_type(i32* %65, i32 4)
  %67 = load i64, i64* @LUA_TUSERDATA, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %3, align 8
  %71 = call i64 @lua_type(i32* %70, i32 4)
  %72 = load i64, i64* @LUA_TTABLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64
  %75 = load i32*, i32** %3, align 8
  %76 = call i32* @lua_ucl_object_get(i32* %75, i32 4)
  store i32* %76, i32** %6, align 8
  br label %77

77:                                               ; preds = %74, %69
  br label %78

78:                                               ; preds = %77, %60
  br label %79

79:                                               ; preds = %78, %25
  %80 = load i8*, i8** %10, align 8
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %5, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32* @ucl_object_lookup_path_char(i32* %83, i8* %84, i8 signext 47)
  store i32* %85, i32** %7, align 8
  br label %88

86:                                               ; preds = %79
  %87 = load i32*, i32** %5, align 8
  store i32* %87, i32** %7, align 8
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32*, i32** %7, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %128

91:                                               ; preds = %88
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @ucl_object_validate_root_ext(i32* %92, i32* %93, i32* %94, i32* %95, %struct.ucl_schema_error* %9)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %91
  %100 = load i32*, i32** %3, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @lua_pushboolean(i32* %100, i32 %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @lua_pushnil(i32* %103)
  %105 = load i32*, i32** %6, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %111

107:                                              ; preds = %99
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @lua_ucl_push_opaque(i32* %108, i32* %109)
  br label %111

111:                                              ; preds = %107, %99
  br label %127

112:                                              ; preds = %91
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @lua_pushboolean(i32* %113, i32 %114)
  %116 = load i32*, i32** %3, align 8
  %117 = getelementptr inbounds %struct.ucl_schema_error, %struct.ucl_schema_error* %9, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @lua_pushfstring(i32* %116, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %118)
  %120 = load i32*, i32** %6, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32*, i32** %3, align 8
  %124 = load i32*, i32** %6, align 8
  %125 = call i32 @lua_ucl_push_opaque(i32* %123, i32* %124)
  br label %126

126:                                              ; preds = %122, %112
  br label %127

127:                                              ; preds = %126, %111
  br label %142

128:                                              ; preds = %88
  %129 = load i32*, i32** %3, align 8
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @lua_pushboolean(i32* %129, i32 %130)
  %132 = load i32*, i32** %3, align 8
  %133 = load i8*, i8** %10, align 8
  %134 = call i32 @lua_pushfstring(i32* %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i8* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %141

137:                                              ; preds = %128
  %138 = load i32*, i32** %3, align 8
  %139 = load i32*, i32** %6, align 8
  %140 = call i32 @lua_ucl_push_opaque(i32* %138, i32* %139)
  br label %141

141:                                              ; preds = %137, %128
  br label %142

142:                                              ; preds = %141, %127
  br label %149

143:                                              ; preds = %20, %17, %1
  %144 = load i32*, i32** %3, align 8
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @lua_pushboolean(i32* %144, i32 %145)
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @lua_pushstring(i32* %147, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %149

149:                                              ; preds = %143, %142
  %150 = load i32*, i32** %6, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 3, i32* %2, align 4
  br label %154

153:                                              ; preds = %149
  store i32 2, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %152
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32* @lua_ucl_object_get(i32*, i32) #1

declare dso_local i64 @ucl_object_type(i32*) #1

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local i8* @lua_tostring(i32*, i32) #1

declare dso_local i32* @ucl_object_lookup_path_char(i32*, i8*, i8 signext) #1

declare dso_local i32 @ucl_object_validate_root_ext(i32*, i32*, i32*, i32*, %struct.ucl_schema_error*) #1

declare dso_local i32 @lua_pushboolean(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32 @lua_ucl_push_opaque(i32*, i32*) #1

declare dso_local i32 @lua_pushfstring(i32*, i8*, i8*) #1

declare dso_local i32 @lua_pushstring(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
