; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_fromtable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/lua/extr_lua_ucl.c_ucl_object_lua_fromtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MIN = common dso_local global i32 0, align 4
@LUA_TNUMBER = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i32 0, align 4
@UCL_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32)* @ucl_object_lua_fromtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ucl_object_lua_fromtable(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %6, align 8
  store i32 1, i32* %9, align 4
  %13 = load i32, i32* @INT_MIN, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @lua_gettop(i32* %17)
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %18, %19
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @lua_pushnil(i32* %23)
  br label %25

25:                                               ; preds = %59, %22
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @lua_next(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %62

30:                                               ; preds = %25
  %31 = load i32*, i32** %3, align 8
  %32 = call i64 @lua_type(i32* %31, i32 -2)
  %33 = load i64, i64* @LUA_TNUMBER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %30
  %36 = load i32*, i32** %3, align 8
  %37 = call double @lua_tonumber(i32* %36, i32 -2)
  store double %37, double* %11, align 8
  %38 = load double, double* %11, align 8
  %39 = load double, double* %11, align 8
  %40 = fptosi double %39 to i32
  %41 = sitofp i32 %40 to double
  %42 = fcmp oeq double %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load double, double* %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sitofp i32 %45 to double
  %47 = fcmp ogt double %44, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load double, double* %11, align 8
  %50 = fptosi double %49 to i32
  store i32 %50, i32* %10, align 4
  br label %51

51:                                               ; preds = %48, %43
  br label %55

52:                                               ; preds = %35
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @lua_pop(i32* %53, i32 2)
  store i32 0, i32* %9, align 4
  br label %62

55:                                               ; preds = %51
  br label %59

56:                                               ; preds = %30
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_pop(i32* %57, i32 2)
  store i32 0, i32* %9, align 4
  br label %62

59:                                               ; preds = %55
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @lua_pop(i32* %60, i32 1)
  br label %25

62:                                               ; preds = %56, %52, %25
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %62
  %66 = load i32, i32* @UCL_ARRAY, align 4
  %67 = call i32* @ucl_object_typed_new(i32 %66)
  store i32* %67, i32** %6, align 8
  store i32 1, i32* %12, align 4
  br label %68

68:                                               ; preds = %92, %65
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %10, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = load i32*, i32** %3, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @lua_pushinteger(i32* %73, i32 %74)
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @lua_gettable(i32* %76, i32 %77)
  %79 = load i32*, i32** %3, align 8
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @lua_gettop(i32* %80)
  %82 = call i32* @ucl_object_lua_fromelt(i32* %79, i32 %81)
  store i32* %82, i32** %5, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %72
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @ucl_array_append(i32* %86, i32* %87)
  br label %89

89:                                               ; preds = %85, %72
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @lua_pop(i32* %90, i32 1)
  br label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %68

95:                                               ; preds = %68
  br label %125

96:                                               ; preds = %62
  %97 = load i32*, i32** %3, align 8
  %98 = call i32 @lua_pushnil(i32* %97)
  %99 = load i32, i32* @UCL_OBJECT, align 4
  %100 = call i32* @ucl_object_typed_new(i32 %99)
  store i32* %100, i32** %6, align 8
  br label %101

101:                                              ; preds = %121, %96
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @lua_next(i32* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %101
  %107 = load i32*, i32** %3, align 8
  %108 = call i8* @lua_tolstring(i32* %107, i32 -2, i64* %7)
  store i8* %108, i8** %8, align 8
  %109 = load i32*, i32** %3, align 8
  %110 = load i32*, i32** %3, align 8
  %111 = call i32 @lua_gettop(i32* %110)
  %112 = call i32* @ucl_object_lua_fromelt(i32* %109, i32 %111)
  store i32* %112, i32** %5, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @ucl_object_insert_key(i32* %116, i32* %117, i8* %118, i64 %119, i32 1)
  br label %121

121:                                              ; preds = %115, %106
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @lua_pop(i32* %122, i32 1)
  br label %101

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124, %95
  %126 = load i32*, i32** %6, align 8
  ret i32* %126
}

declare dso_local i32 @lua_gettop(i32*) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i64 @lua_next(i32*, i32) #1

declare dso_local i64 @lua_type(i32*, i32) #1

declare dso_local double @lua_tonumber(i32*, i32) #1

declare dso_local i32 @lua_pop(i32*, i32) #1

declare dso_local i32* @ucl_object_typed_new(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_gettable(i32*, i32) #1

declare dso_local i32* @ucl_object_lua_fromelt(i32*, i32) #1

declare dso_local i32 @ucl_array_append(i32*, i32*) #1

declare dso_local i8* @lua_tolstring(i32*, i32, i64*) #1

declare dso_local i32 @ucl_object_insert_key(i32*, i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
