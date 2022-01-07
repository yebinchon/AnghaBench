; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_fromelt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_fromelt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_lua_funcdata = type { i32, i32*, i32* }

@ucl_null = common dso_local global i32 0, align 4
@UCL_NULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"__gen_ucl\00", align 1
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@lua_ucl_userdata_dtor = common dso_local global i32 0, align 4
@lua_ucl_userdata_emitter = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @ucl_object_lua_fromelt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_object_lua_fromelt(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ucl_lua_funcdata*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %7, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @lua_type(i32* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %107 [
    i32 131, label %13
    i32 132, label %18
    i32 134, label %32
    i32 128, label %37
    i32 130, label %47
    i32 133, label %47
    i32 129, label %47
  ]

13:                                               ; preds = %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @lua_tostring(i32* %14, i32 %15)
  %17 = call i32* @ucl_object_fromstring_common(i32 %16, i32 0, i32 0)
  store i32* %17, i32** %7, align 8
  br label %107

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call double @lua_tonumber(i32* %19, i32 %20)
  store double %21, double* %6, align 8
  %22 = load double, double* %6, align 8
  %23 = load double, double* %6, align 8
  %24 = fcmp oeq double %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load double, double* %6, align 8
  %27 = call i32* @ucl_object_fromint(double %26)
  store i32* %27, i32** %7, align 8
  br label %31

28:                                               ; preds = %18
  %29 = load double, double* %6, align 8
  %30 = call i32* @ucl_object_fromdouble(double %29)
  store i32* %30, i32** %7, align 8
  br label %31

31:                                               ; preds = %28, %25
  br label %107

32:                                               ; preds = %2
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @lua_toboolean(i32* %33, i32 %34)
  %36 = call i32* @ucl_object_frombool(i32 %35)
  store i32* %36, i32** %7, align 8
  br label %107

37:                                               ; preds = %2
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @lua_topointer(i32* %38, i32 %39)
  %41 = load i32, i32* @ucl_null, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @UCL_NULL, align 4
  %45 = call i32* @ucl_object_typed_new(i32 %44)
  store i32* %45, i32** %7, align 8
  br label %46

46:                                               ; preds = %43, %37
  br label %107

47:                                               ; preds = %2, %2, %2
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @luaL_getmetafield(i32* %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_isfunction(i32* %53, i32 -1)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_settop(i32* %57, i32 3)
  %59 = load i32*, i32** %3, align 8
  %60 = call i32 @lua_insert(i32* %59, i32 1)
  %61 = load i32*, i32** %3, align 8
  %62 = call i32 @lua_insert(i32* %61, i32 2)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @lua_call(i32* %63, i32 2, i32 1)
  %65 = load i32*, i32** %3, align 8
  %66 = call i32* @ucl_object_lua_fromelt(i32* %65, i32 1)
  store i32* %66, i32** %7, align 8
  br label %67

67:                                               ; preds = %56, %52
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @lua_pop(i32* %68, i32 2)
  br label %106

70:                                               ; preds = %47
  %71 = load i32, i32* %5, align 4
  %72 = icmp eq i32 %71, 130
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32*, i32** %3, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32* @ucl_object_lua_fromtable(i32* %74, i32 %75)
  store i32* %76, i32** %7, align 8
  br label %105

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = icmp eq i32 %78, 133
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = call %struct.ucl_lua_funcdata* @malloc(i32 24)
  store %struct.ucl_lua_funcdata* %81, %struct.ucl_lua_funcdata** %8, align 8
  %82 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %83 = icmp ne %struct.ucl_lua_funcdata* %82, null
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32*, i32** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @lua_pushvalue(i32* %85, i32 %86)
  %88 = load i32*, i32** %3, align 8
  %89 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %90 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %89, i32 0, i32 2
  store i32* %88, i32** %90, align 8
  %91 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %92 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %91, i32 0, i32 1
  store i32* null, i32** %92, align 8
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %95 = call i32 @luaL_ref(i32* %93, i32 %94)
  %96 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %97 = getelementptr inbounds %struct.ucl_lua_funcdata, %struct.ucl_lua_funcdata* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @lua_ucl_userdata_dtor, align 4
  %99 = load i32, i32* @lua_ucl_userdata_emitter, align 4
  %100 = load %struct.ucl_lua_funcdata*, %struct.ucl_lua_funcdata** %8, align 8
  %101 = bitcast %struct.ucl_lua_funcdata* %100 to i8*
  %102 = call i32* @ucl_object_new_userdata(i32 %98, i32 %99, i8* %101)
  store i32* %102, i32** %7, align 8
  br label %103

103:                                              ; preds = %84, %80
  br label %104

104:                                              ; preds = %103, %77
  br label %105

105:                                              ; preds = %104, %73
  br label %106

106:                                              ; preds = %105, %67
  br label %107

107:                                              ; preds = %2, %106, %46, %32, %31, %13
  %108 = load i32*, i32** %7, align 8
  ret i32* %108
}

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32* @ucl_object_fromstring_common(i32, i32, i32) #1

declare dso_local i32 @lua_tostring(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i32* @ucl_object_fromint(double) #1

declare dso_local i32* @ucl_object_fromdouble(double) #1

declare dso_local i32* @ucl_object_frombool(i32) #1

declare dso_local i32 @lua_toboolean(i32*, i32) #1

declare dso_local i32 @lua_topointer(i32*, i32) #1

declare dso_local i32* @ucl_object_typed_new(i32) #1

declare dso_local i32 @luaL_getmetafield(i32*, i32, i8*) #1

declare dso_local i32 @lua_isfunction(i32*, i32) #1

declare dso_local i32 @lua_settop(i32*, i32) #1

declare dso_local i32 @lua_insert(i32*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @ucl_object_lua_fromtable(i32*, i32) #1

declare dso_local %struct.ucl_lua_funcdata* @malloc(i32) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @luaL_ref(i32*, i32) #1

declare dso_local i32* @ucl_object_new_userdata(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
