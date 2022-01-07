; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_return_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_return_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.symbol = type { i32 }
%struct.value = type { i32 }
%struct.frame_id = type { i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@target_has_registers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"No selected frame.\00", align 1
@builtin_type_int = common dso_local global %struct.type* null, align 8
@TYPE_CODE_VOID = common dso_local global i64 0, align 8
@current_gdbarch = common dso_local global i32 0, align 4
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_UNION = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [143 x i8] c"A structure or union return type is not supported by this architecture.\0AIf you continue, the return value that you specified will be ignored.\0A\00", align 1
@.str.3 = private unnamed_addr constant [142 x i8] c"The location at which to store the function's return value is unknown.\0AIf you continue, the return value that you specified will be ignored.\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%sMake selected stack frame return now? \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"%sMake %s return now? \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Not confirmed\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"Problem while popping stack frames (corrupt stack?)\00", align 1
@current_regcache = common dso_local global i32* null, align 8
@RETURN_VALUE_REGISTER_CONVENTION = common dso_local global i64 0, align 8
@DUMMY_FRAME = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @return_command(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.symbol*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.frame_id, align 4
  %11 = alloca %struct.frame_id, align 4
  %12 = alloca %struct.frame_id, align 4
  %13 = alloca %struct.type*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.value* null, %struct.value** %6, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %14 = load i32, i32* @target_has_registers, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = call i32 @error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = call i32 (...) @get_selected_frame()
  %20 = call %struct.symbol* @get_frame_function(i32 %19)
  store %struct.symbol* %20, %struct.symbol** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %76

23:                                               ; preds = %18
  store %struct.type* null, %struct.type** %8, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = call %struct.value* @parse_and_eval(i8* %24)
  store %struct.value* %25, %struct.value** %6, align 8
  %26 = load %struct.symbol*, %struct.symbol** %5, align 8
  %27 = icmp ne %struct.symbol* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.symbol*, %struct.symbol** %5, align 8
  %30 = call i32 @SYMBOL_TYPE(%struct.symbol* %29)
  %31 = call %struct.type* @TYPE_TARGET_TYPE(i32 %30)
  store %struct.type* %31, %struct.type** %8, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.type*, %struct.type** %8, align 8
  %34 = icmp eq %struct.type* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %36, %struct.type** %8, align 8
  br label %37

37:                                               ; preds = %35, %32
  %38 = load %struct.type*, %struct.type** %8, align 8
  %39 = load %struct.value*, %struct.value** %6, align 8
  %40 = call %struct.value* @value_cast(%struct.type* %38, %struct.value* %39)
  store %struct.value* %40, %struct.value** %6, align 8
  %41 = load %struct.value*, %struct.value** %6, align 8
  %42 = call i64 @VALUE_LAZY(%struct.value* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load %struct.value*, %struct.value** %6, align 8
  %46 = call i32 @value_fetch_lazy(%struct.value* %45)
  br label %47

47:                                               ; preds = %44, %37
  %48 = load %struct.type*, %struct.type** %8, align 8
  %49 = call i64 @TYPE_CODE(%struct.type* %48)
  %50 = load i64, i64* @TYPE_CODE_VOID, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store %struct.value* null, %struct.value** %6, align 8
  br label %75

53:                                               ; preds = %47
  %54 = load i32, i32* @current_gdbarch, align 4
  %55 = call i32 @gdbarch_return_value_p(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %53
  %58 = load %struct.type*, %struct.type** %8, align 8
  %59 = call i64 @TYPE_CODE(%struct.type* %58)
  %60 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load %struct.type*, %struct.type** %8, align 8
  %64 = call i64 @TYPE_CODE(%struct.type* %63)
  %65 = load i64, i64* @TYPE_CODE_UNION, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62, %57
  store i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  store %struct.value* null, %struct.value** %6, align 8
  br label %74

68:                                               ; preds = %62, %53
  %69 = load %struct.type*, %struct.type** %8, align 8
  %70 = call i64 @using_struct_return(%struct.type* %69, i32 0)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  store %struct.value* null, %struct.value** %6, align 8
  br label %73

73:                                               ; preds = %72, %68
  br label %74

74:                                               ; preds = %73, %67
  br label %75

75:                                               ; preds = %74, %52
  br label %76

76:                                               ; preds = %75, %18
  %77 = load i32, i32* %4, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %76
  %80 = load %struct.symbol*, %struct.symbol** %5, align 8
  %81 = icmp eq %struct.symbol* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 (i8*, i8*, ...) @query(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %83)
  store i32 %84, i32* %9, align 4
  br label %90

85:                                               ; preds = %79
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.symbol*, %struct.symbol** %5, align 8
  %88 = call i32 @SYMBOL_PRINT_NAME(%struct.symbol* %87)
  %89 = call i32 (i8*, i8*, ...) @query(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32 %88)
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %85, %82
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %90
  br label %96

96:                                               ; preds = %95, %76
  %97 = call i32 (...) @get_selected_frame()
  %98 = call i32 @get_frame_id(i32 %97)
  %99 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %10, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %123, %96
  %101 = call i32 (...) @get_current_frame()
  %102 = call i32 @get_frame_id(i32 %101)
  %103 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %11, i32 0, i32 0
  store i32 %102, i32* %103, align 4
  %104 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %10, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %11, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @frame_id_eq(i32 %105, i32 %107)
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %111, label %126

111:                                              ; preds = %100
  %112 = call i32 (...) @get_current_frame()
  %113 = call i32 @get_frame_id(i32 %112)
  %114 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %12, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %10, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.frame_id, %struct.frame_id* %12, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @frame_id_inner(i32 %116, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0))
  br label %123

123:                                              ; preds = %121, %111
  %124 = call i32 (...) @get_current_frame()
  %125 = call i32 @frame_pop(i32 %124)
  br label %100

126:                                              ; preds = %100
  %127 = call i32 (...) @get_current_frame()
  %128 = call i32 @frame_pop(i32 %127)
  %129 = load %struct.value*, %struct.value** %6, align 8
  %130 = icmp ne %struct.value* %129, null
  br i1 %130, label %131, label %158

131:                                              ; preds = %126
  %132 = load %struct.value*, %struct.value** %6, align 8
  %133 = call %struct.type* @VALUE_TYPE(%struct.value* %132)
  store %struct.type* %133, %struct.type** %13, align 8
  %134 = load i32, i32* @current_gdbarch, align 4
  %135 = call i32 @gdbarch_return_value_p(i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %131
  %138 = load %struct.type*, %struct.type** %13, align 8
  %139 = load i32*, i32** @current_regcache, align 8
  %140 = load %struct.value*, %struct.value** %6, align 8
  %141 = call i32* @VALUE_CONTENTS(%struct.value* %140)
  %142 = call i32 @STORE_RETURN_VALUE(%struct.type* %138, i32* %139, i32* %141)
  br label %157

143:                                              ; preds = %131
  %144 = load i32, i32* @current_gdbarch, align 4
  %145 = load %struct.type*, %struct.type** %13, align 8
  %146 = call i64 @gdbarch_return_value(i32 %144, %struct.type* %145, i32* null, i32* null, i32* null)
  %147 = load i64, i64* @RETURN_VALUE_REGISTER_CONVENTION, align 8
  %148 = icmp eq i64 %146, %147
  %149 = zext i1 %148 to i32
  %150 = call i32 @gdb_assert(i32 %149)
  %151 = load i32, i32* @current_gdbarch, align 4
  %152 = load %struct.type*, %struct.type** %13, align 8
  %153 = load i32*, i32** @current_regcache, align 8
  %154 = load %struct.value*, %struct.value** %6, align 8
  %155 = call i32* @VALUE_CONTENTS(%struct.value* %154)
  %156 = call i64 @gdbarch_return_value(i32 %151, %struct.type* %152, i32* %153, i32* null, i32* %155)
  br label %157

157:                                              ; preds = %143, %137
  br label %158

158:                                              ; preds = %157, %126
  %159 = call i32 (...) @get_current_frame()
  %160 = call i64 @get_frame_type(i32 %159)
  %161 = load i64, i64* @DUMMY_FRAME, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = call i32 (...) @get_current_frame()
  %165 = call i32 @frame_pop(i32 %164)
  br label %166

166:                                              ; preds = %163, %158
  %167 = load i32, i32* %4, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = call i32 @frame_command(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %173

171:                                              ; preds = %166
  %172 = call i32 @select_frame_command(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %173

173:                                              ; preds = %171, %169
  ret void
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.symbol* @get_frame_function(i32) #1

declare dso_local i32 @get_selected_frame(...) #1

declare dso_local %struct.value* @parse_and_eval(i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local i32 @value_fetch_lazy(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @gdbarch_return_value_p(i32) #1

declare dso_local i64 @using_struct_return(%struct.type*, i32) #1

declare dso_local i32 @query(i8*, i8*, ...) #1

declare dso_local i32 @SYMBOL_PRINT_NAME(%struct.symbol*) #1

declare dso_local i32 @get_frame_id(i32) #1

declare dso_local i32 @frame_id_eq(i32, i32) #1

declare dso_local i32 @get_current_frame(...) #1

declare dso_local i64 @frame_id_inner(i32, i32) #1

declare dso_local i32 @frame_pop(i32) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @STORE_RETURN_VALUE(%struct.type*, i32*, i32*) #1

declare dso_local i32* @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @gdb_assert(i32) #1

declare dso_local i64 @gdbarch_return_value(i32, %struct.type*, i32*, i32*, i32*) #1

declare dso_local i64 @get_frame_type(i32) #1

declare dso_local i32 @frame_command(i8*, i32) #1

declare dso_local i32 @select_frame_command(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
