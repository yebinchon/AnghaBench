; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__iterate_python.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/python/src/extr_uclmodule.c__iterate_python.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Py_None = common dso_local global i32* null, align 8
@Py_True = common dso_local global i32* null, align 8
@UCL_OBJECT = common dso_local global i32 0, align 4
@PyExc_TypeError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown key type\00", align 1
@UCL_ARRAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Unhandled object type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @_iterate_python to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_iterate_python(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32*, i32** @Py_None, align 8
  %20 = icmp eq i32* %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32* (...) @ucl_object_new()
  store i32* %22, i32** %2, align 8
  br label %150

23:                                               ; preds = %1
  %24 = load i32*, i32** %3, align 8
  %25 = call i64 @PyBool_Check(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load i32*, i32** %3, align 8
  %29 = load i32*, i32** @Py_True, align 8
  %30 = icmp eq i32* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32* @ucl_object_frombool(i32 %31)
  store i32* %32, i32** %2, align 8
  br label %150

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @PyInt_Check(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @PyInt_AsLong(i32* %38)
  %40 = call i32* @ucl_object_fromint(i32 %39)
  store i32* %40, i32** %2, align 8
  br label %150

41:                                               ; preds = %33
  %42 = load i32*, i32** %3, align 8
  %43 = call i64 @PyLong_Check(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @PyLong_AsLong(i32* %46)
  %48 = call i32* @ucl_object_fromint(i32 %47)
  store i32* %48, i32** %2, align 8
  br label %150

49:                                               ; preds = %41
  %50 = load i32*, i32** %3, align 8
  %51 = call i64 @PyFloat_Check(i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @PyFloat_AsDouble(i32* %54)
  %56 = call i32* @ucl_object_fromdouble(i32 %55)
  store i32* %56, i32** %2, align 8
  br label %150

57:                                               ; preds = %49
  %58 = load i32*, i32** %3, align 8
  %59 = call i64 @PyUnicode_Check(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %57
  %62 = load i32*, i32** %3, align 8
  %63 = call i32* @PyUnicode_AsASCIIString(i32* %62)
  store i32* %63, i32** %5, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = call i8* @PyBytes_AsString(i32* %64)
  %66 = call i32* @ucl_object_fromstring(i8* %65)
  store i32* %66, i32** %4, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @Py_DECREF(i32* %67)
  %69 = load i32*, i32** %4, align 8
  store i32* %69, i32** %2, align 8
  br label %150

70:                                               ; preds = %57
  %71 = load i32*, i32** %3, align 8
  %72 = call i64 @PyString_Check(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load i32*, i32** %3, align 8
  %76 = call i8* @PyString_AsString(i32* %75)
  %77 = call i32* @ucl_object_fromstring(i8* %76)
  store i32* %77, i32** %2, align 8
  br label %150

78:                                               ; preds = %70
  %79 = load i32*, i32** %3, align 8
  %80 = call i64 @PyDict_Check(i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %120

82:                                               ; preds = %78
  store i64 0, i64* %8, align 8
  store i8* null, i8** %11, align 8
  %83 = load i32, i32* @UCL_OBJECT, align 4
  %84 = call i32* @ucl_object_typed_new(i32 %83)
  store i32* %84, i32** %9, align 8
  br label %85

85:                                               ; preds = %113, %82
  %86 = load i32*, i32** %3, align 8
  %87 = call i64 @PyDict_Next(i32* %86, i64* %8, i32** %6, i32** %7)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = call i32* @_iterate_python(i32* %90)
  store i32* %91, i32** %10, align 8
  %92 = load i32*, i32** %6, align 8
  %93 = call i64 @PyUnicode_Check(i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = call i32* @PyUnicode_AsASCIIString(i32* %96)
  store i32* %97, i32** %12, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = call i8* @PyBytes_AsString(i32* %98)
  store i8* %99, i8** %11, align 8
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 @Py_DECREF(i32* %100)
  br label %113

102:                                              ; preds = %89
  %103 = load i32*, i32** %6, align 8
  %104 = call i64 @PyString_Check(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32*, i32** %6, align 8
  %108 = call i8* @PyString_AsString(i32* %107)
  store i8* %108, i8** %11, align 8
  br label %112

109:                                              ; preds = %102
  %110 = load i32, i32* @PyExc_TypeError, align 4
  %111 = call i32 @PyErr_SetString(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %150

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112, %95
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %10, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i32 @ucl_object_insert_key(i32* %114, i32* %115, i8* %116, i32 0, i32 1)
  br label %85

118:                                              ; preds = %85
  %119 = load i32*, i32** %9, align 8
  store i32* %119, i32** %2, align 8
  br label %150

120:                                              ; preds = %78
  %121 = load i32*, i32** %3, align 8
  %122 = call i64 @PySequence_Check(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %147

124:                                              ; preds = %120
  %125 = load i32*, i32** %3, align 8
  %126 = call i64 @PySequence_Length(i32* %125)
  store i64 %126, i64* %14, align 8
  %127 = load i32, i32* @UCL_ARRAY, align 4
  %128 = call i32* @ucl_object_typed_new(i32 %127)
  store i32* %128, i32** %16, align 8
  store i64 0, i64* %15, align 8
  br label %129

129:                                              ; preds = %142, %124
  %130 = load i64, i64* %15, align 8
  %131 = load i64, i64* %14, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %145

133:                                              ; preds = %129
  %134 = load i32*, i32** %3, align 8
  %135 = load i64, i64* %15, align 8
  %136 = call i32* @PySequence_GetItem(i32* %134, i64 %135)
  store i32* %136, i32** %13, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = call i32* @_iterate_python(i32* %137)
  store i32* %138, i32** %17, align 8
  %139 = load i32*, i32** %16, align 8
  %140 = load i32*, i32** %17, align 8
  %141 = call i32 @ucl_array_append(i32* %139, i32* %140)
  br label %142

142:                                              ; preds = %133
  %143 = load i64, i64* %15, align 8
  %144 = add nsw i64 %143, 1
  store i64 %144, i64* %15, align 8
  br label %129

145:                                              ; preds = %129
  %146 = load i32*, i32** %16, align 8
  store i32* %146, i32** %2, align 8
  br label %150

147:                                              ; preds = %120
  %148 = load i32, i32* @PyExc_TypeError, align 4
  %149 = call i32 @PyErr_SetString(i32 %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %150

150:                                              ; preds = %147, %145, %118, %109, %74, %61, %53, %45, %37, %27, %21
  %151 = load i32*, i32** %2, align 8
  ret i32* %151
}

declare dso_local i32* @ucl_object_new(...) #1

declare dso_local i64 @PyBool_Check(i32*) #1

declare dso_local i32* @ucl_object_frombool(i32) #1

declare dso_local i64 @PyInt_Check(i32*) #1

declare dso_local i32* @ucl_object_fromint(i32) #1

declare dso_local i32 @PyInt_AsLong(i32*) #1

declare dso_local i64 @PyLong_Check(i32*) #1

declare dso_local i32 @PyLong_AsLong(i32*) #1

declare dso_local i64 @PyFloat_Check(i32*) #1

declare dso_local i32* @ucl_object_fromdouble(i32) #1

declare dso_local i32 @PyFloat_AsDouble(i32*) #1

declare dso_local i64 @PyUnicode_Check(i32*) #1

declare dso_local i32* @PyUnicode_AsASCIIString(i32*) #1

declare dso_local i32* @ucl_object_fromstring(i8*) #1

declare dso_local i8* @PyBytes_AsString(i32*) #1

declare dso_local i32 @Py_DECREF(i32*) #1

declare dso_local i64 @PyString_Check(i32*) #1

declare dso_local i8* @PyString_AsString(i32*) #1

declare dso_local i64 @PyDict_Check(i32*) #1

declare dso_local i32* @ucl_object_typed_new(i32) #1

declare dso_local i64 @PyDict_Next(i32*, i64*, i32**, i32**) #1

declare dso_local i32 @PyErr_SetString(i32, i8*) #1

declare dso_local i32 @ucl_object_insert_key(i32*, i32*, i8*, i32, i32) #1

declare dso_local i64 @PySequence_Check(i32*) #1

declare dso_local i64 @PySequence_Length(i32*) #1

declare dso_local i32* @PySequence_GetItem(i32*, i64) #1

declare dso_local i32 @ucl_array_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
