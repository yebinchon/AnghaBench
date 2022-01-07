; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_whatis_exp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_typeprint.c_whatis_exp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }
%struct.value = type { i32 }
%struct.cleanup = type { i32 }
%struct.type = type { i32 }

@free_current_contents = common dso_local global i32 0, align 4
@objectprint = common dso_local global i64 0, align 8
@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@TYPE_CODE_CLASS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"type = \00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"/* real type = \00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@gdb_stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c" (incomplete object)\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @whatis_exp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @whatis_exp(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.cleanup*, align 8
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.type*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.cleanup* null, %struct.cleanup** %7, align 8
  store %struct.type* null, %struct.type** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i8*, i8** %3, align 8
  %17 = call %struct.expression* @parse_expression(i8* %16)
  store %struct.expression* %17, %struct.expression** %5, align 8
  %18 = load i32, i32* @free_current_contents, align 4
  %19 = call %struct.cleanup* @make_cleanup(i32 %18, %struct.expression** %5)
  store %struct.cleanup* %19, %struct.cleanup** %7, align 8
  %20 = load %struct.expression*, %struct.expression** %5, align 8
  %21 = call %struct.value* @evaluate_type(%struct.expression* %20)
  store %struct.value* %21, %struct.value** %6, align 8
  br label %24

22:                                               ; preds = %2
  %23 = call %struct.value* @access_value_history(i32 0)
  store %struct.value* %23, %struct.value** %6, align 8
  br label %24

24:                                               ; preds = %22, %15
  %25 = load %struct.value*, %struct.value** %6, align 8
  %26 = call %struct.type* @VALUE_TYPE(%struct.value* %25)
  store %struct.type* %26, %struct.type** %9, align 8
  %27 = load i64, i64* @objectprint, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %73

29:                                               ; preds = %24
  %30 = load %struct.type*, %struct.type** %9, align 8
  %31 = call i64 @TYPE_CODE(%struct.type* %30)
  %32 = load i64, i64* @TYPE_CODE_PTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.type*, %struct.type** %9, align 8
  %36 = call i64 @TYPE_CODE(%struct.type* %35)
  %37 = load i64, i64* @TYPE_CODE_REF, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %34, %29
  %40 = load %struct.type*, %struct.type** %9, align 8
  %41 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %40)
  %42 = call i64 @TYPE_CODE(%struct.type* %41)
  %43 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.value*, %struct.value** %6, align 8
  %47 = call %struct.type* @value_rtti_target_type(%struct.value* %46, i32* %10, i32* %11, i32* %12)
  store %struct.type* %47, %struct.type** %8, align 8
  %48 = load %struct.type*, %struct.type** %8, align 8
  %49 = icmp ne %struct.type* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.type*, %struct.type** %9, align 8
  %52 = call i64 @TYPE_CODE(%struct.type* %51)
  %53 = load i64, i64* @TYPE_CODE_PTR, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.type*, %struct.type** %8, align 8
  %57 = call %struct.type* @lookup_pointer_type(%struct.type* %56)
  store %struct.type* %57, %struct.type** %8, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load %struct.type*, %struct.type** %8, align 8
  %60 = call %struct.type* @lookup_reference_type(%struct.type* %59)
  store %struct.type* %60, %struct.type** %8, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %45
  br label %72

63:                                               ; preds = %39, %34
  %64 = load %struct.type*, %struct.type** %9, align 8
  %65 = call i64 @TYPE_CODE(%struct.type* %64)
  %66 = load i64, i64* @TYPE_CODE_CLASS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load %struct.value*, %struct.value** %6, align 8
  %70 = call %struct.type* @value_rtti_type(%struct.value* %69, i32* %10, i32* %11, i32* %12)
  store %struct.type* %70, %struct.type** %8, align 8
  br label %71

71:                                               ; preds = %68, %63
  br label %72

72:                                               ; preds = %71, %62
  br label %73

73:                                               ; preds = %72, %24
  %74 = call i32 @printf_filtered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %75 = load %struct.type*, %struct.type** %8, align 8
  %76 = icmp ne %struct.type* %75, null
  br i1 %76, label %77, label %88

77:                                               ; preds = %73
  %78 = call i32 @printf_filtered(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.type*, %struct.type** %8, align 8
  %80 = load i32, i32* @gdb_stdout, align 4
  %81 = call i32 @type_print(%struct.type* %79, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %80, i32 -1)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %77
  %85 = call i32 @printf_filtered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = call i32 @printf_filtered(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %73
  %89 = load %struct.type*, %struct.type** %9, align 8
  %90 = load i32, i32* @gdb_stdout, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @type_print(%struct.type* %89, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91)
  %93 = call i32 @printf_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %94 = load i8*, i8** %3, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %88
  %97 = load %struct.cleanup*, %struct.cleanup** %7, align 8
  %98 = call i32 @do_cleanups(%struct.cleanup* %97)
  br label %99

99:                                               ; preds = %96, %88
  ret void
}

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_type(%struct.expression*) #1

declare dso_local %struct.value* @access_value_history(i32) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @value_rtti_target_type(%struct.value*, i32*, i32*, i32*) #1

declare dso_local %struct.type* @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.type* @lookup_reference_type(%struct.type*) #1

declare dso_local %struct.type* @value_rtti_type(%struct.value*, i32*, i32*, i32*) #1

declare dso_local i32 @printf_filtered(i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
