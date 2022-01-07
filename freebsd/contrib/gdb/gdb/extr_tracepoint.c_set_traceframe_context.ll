; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_set_traceframe_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_tracepoint.c_set_traceframe_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i64, i64 }
%struct.TYPE_4__ = type { i32* }
%struct.value = type { i32 }

@set_traceframe_context.func_string = internal global %struct.type* null, align 8
@set_traceframe_context.file_string = internal global %struct.type* null, align 8
@set_traceframe_context.func_range = internal global %struct.type* null, align 8
@set_traceframe_context.file_range = internal global %struct.type* null, align 8
@set_traceframe_context.charstar = internal global %struct.type* null, align 8
@builtin_type_char = common dso_local global i32 0, align 4
@traceframe_fun = common dso_local global i32* null, align 8
@traceframe_sal = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"trace_func\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"trace_file\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"trace_line\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_traceframe_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_traceframe_context(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca %struct.type*, align 8
  %8 = alloca %struct.type*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load %struct.type*, %struct.type** @set_traceframe_context.charstar, align 8
  %10 = icmp eq %struct.type* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @builtin_type_char, align 4
  %13 = call %struct.type* @lookup_pointer_type(i32 %12)
  store %struct.type* %13, %struct.type** @set_traceframe_context.charstar, align 8
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  store i32* null, i32** @traceframe_fun, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 2), align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 0), align 8
  %18 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.type*, %struct.type** @set_traceframe_context.charstar, align 8
  %20 = call %struct.type* @value_from_pointer(%struct.type* %19, i32 0)
  %21 = call i32 @set_internalvar(i32 %18, %struct.type* %20)
  %22 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.type*, %struct.type** @set_traceframe_context.charstar, align 8
  %24 = call %struct.type* @value_from_pointer(%struct.type* %23, i32 0)
  %25 = call i32 @set_internalvar(i32 %22, %struct.type* %24)
  %26 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* @builtin_type_int, align 4
  %28 = call %struct.type* @value_from_longest(i32 %27, i32 -1)
  %29 = call i32 @set_internalvar(i32 %26, %struct.type* %28)
  br label %121

30:                                               ; preds = %14
  %31 = load i32, i32* %2, align 4
  call void @find_pc_line(%struct.TYPE_5__* sret %6, i32 %31, i32 0)
  %32 = bitcast %struct.TYPE_5__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_5__* @traceframe_sal to i8*), i8* align 8 %32, i64 24, i1 false)
  %33 = load i32, i32* %2, align 4
  %34 = call i32* @find_pc_function(i32 %33)
  store i32* %34, i32** @traceframe_fun, align 8
  %35 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @builtin_type_int, align 4
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 1), align 8
  %38 = trunc i64 %37 to i32
  %39 = call %struct.type* @value_from_longest(i32 %36, i32 %38)
  %40 = call i32 @set_internalvar(i32 %35, %struct.type* %39)
  %41 = load i32*, i32** @traceframe_fun, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %30
  %44 = load i32*, i32** @traceframe_fun, align 8
  %45 = call i32* @DEPRECATED_SYMBOL_NAME(i32* %44)
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %43, %30
  %48 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.type*, %struct.type** @set_traceframe_context.charstar, align 8
  %50 = call %struct.type* @value_from_pointer(%struct.type* %49, i32 0)
  %51 = call i32 @set_internalvar(i32 %48, %struct.type* %50)
  br label %79

52:                                               ; preds = %43
  %53 = load i32*, i32** @traceframe_fun, align 8
  %54 = call i32* @DEPRECATED_SYMBOL_NAME(i32* %53)
  %55 = call i32 @strlen(i32* %54)
  store i32 %55, i32* %5, align 4
  %56 = load %struct.type*, %struct.type** @set_traceframe_context.func_range, align 8
  %57 = load i32, i32* @builtin_type_int, align 4
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call %struct.type* @create_range_type(%struct.type* %56, i32 %57, i32 0, i32 %59)
  store %struct.type* %60, %struct.type** @set_traceframe_context.func_range, align 8
  %61 = load %struct.type*, %struct.type** @set_traceframe_context.func_string, align 8
  %62 = load i32, i32* @builtin_type_char, align 4
  %63 = load %struct.type*, %struct.type** @set_traceframe_context.func_range, align 8
  %64 = call %struct.type* @create_array_type(%struct.type* %61, i32 %62, %struct.type* %63)
  store %struct.type* %64, %struct.type** @set_traceframe_context.func_string, align 8
  %65 = load %struct.type*, %struct.type** @set_traceframe_context.func_string, align 8
  %66 = call %struct.value* @allocate_value(%struct.type* %65)
  store %struct.value* %66, %struct.value** %3, align 8
  %67 = load %struct.type*, %struct.type** @set_traceframe_context.func_string, align 8
  store %struct.type* %67, %struct.type** %7, align 8
  %68 = load %struct.type*, %struct.type** %7, align 8
  %69 = call i32 @VALUE_CONTENTS_RAW(%struct.type* %68)
  %70 = load i32*, i32** @traceframe_fun, align 8
  %71 = call i32* @DEPRECATED_SYMBOL_NAME(i32* %70)
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @memcpy(i32 %69, i32* %71, i32 %72)
  %74 = load %struct.type*, %struct.type** %7, align 8
  %75 = getelementptr inbounds %struct.type, %struct.type* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.type*, %struct.type** %7, align 8
  %78 = call i32 @set_internalvar(i32 %76, %struct.type* %77)
  br label %79

79:                                               ; preds = %52, %47
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 0), align 8
  %81 = icmp eq %struct.TYPE_4__* %80, null
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 0), align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82, %79
  %88 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.type*, %struct.type** @set_traceframe_context.charstar, align 8
  %90 = call %struct.type* @value_from_pointer(%struct.type* %89, i32 0)
  %91 = call i32 @set_internalvar(i32 %88, %struct.type* %90)
  br label %121

92:                                               ; preds = %82
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 0), align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @strlen(i32* %95)
  store i32 %96, i32* %5, align 4
  %97 = load %struct.type*, %struct.type** @set_traceframe_context.file_range, align 8
  %98 = load i32, i32* @builtin_type_int, align 4
  %99 = load i32, i32* %5, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call %struct.type* @create_range_type(%struct.type* %97, i32 %98, i32 0, i32 %100)
  store %struct.type* %101, %struct.type** @set_traceframe_context.file_range, align 8
  %102 = load %struct.type*, %struct.type** @set_traceframe_context.file_string, align 8
  %103 = load i32, i32* @builtin_type_char, align 4
  %104 = load %struct.type*, %struct.type** @set_traceframe_context.file_range, align 8
  %105 = call %struct.type* @create_array_type(%struct.type* %102, i32 %103, %struct.type* %104)
  store %struct.type* %105, %struct.type** @set_traceframe_context.file_string, align 8
  %106 = load %struct.type*, %struct.type** @set_traceframe_context.file_string, align 8
  %107 = call %struct.value* @allocate_value(%struct.type* %106)
  store %struct.value* %107, %struct.value** %4, align 8
  %108 = load %struct.type*, %struct.type** @set_traceframe_context.file_string, align 8
  store %struct.type* %108, %struct.type** %8, align 8
  %109 = load %struct.type*, %struct.type** %8, align 8
  %110 = call i32 @VALUE_CONTENTS_RAW(%struct.type* %109)
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @traceframe_sal, i32 0, i32 0), align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @memcpy(i32 %110, i32* %113, i32 %114)
  %116 = load %struct.type*, %struct.type** %8, align 8
  %117 = getelementptr inbounds %struct.type, %struct.type* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = call i32 @lookup_internalvar(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %119 = load %struct.type*, %struct.type** %8, align 8
  %120 = call i32 @set_internalvar(i32 %118, %struct.type* %119)
  br label %121

121:                                              ; preds = %17, %92, %87
  ret void
}

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i32 @set_internalvar(i32, %struct.type*) #1

declare dso_local i32 @lookup_internalvar(i8*) #1

declare dso_local %struct.type* @value_from_pointer(%struct.type*, i32) #1

declare dso_local %struct.type* @value_from_longest(i32, i32) #1

declare dso_local void @find_pc_line(%struct.TYPE_5__* sret, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @find_pc_function(i32) #1

declare dso_local i32* @DEPRECATED_SYMBOL_NAME(i32*) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local %struct.type* @create_range_type(%struct.type*, i32, i32, i32) #1

declare dso_local %struct.type* @create_array_type(%struct.type*, i32, %struct.type*) #1

declare dso_local %struct.value* @allocate_value(%struct.type*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @VALUE_CONTENTS_RAW(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
