; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_evaluate_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_evaluate_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i32 }
%struct.cleanup = type { i32 }
%struct.value = type { i32 }
%struct.ui_stream = type { i32 }

@uiout = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"mi_cmd_data_evaluate_expression: Usage: -data-evaluate-expression expression\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@free_current_contents = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_evaluate_expression(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.expression*, align 8
  %9 = alloca %struct.cleanup*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.ui_stream*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.cleanup* null, %struct.cleanup** %9, align 8
  store %struct.ui_stream* null, %struct.ui_stream** %11, align 8
  %12 = load i32, i32* @uiout, align 4
  %13 = call %struct.ui_stream* @ui_out_stream_new(i32 %12)
  store %struct.ui_stream* %13, %struct.ui_stream** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load i8**, i8*** %6, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call %struct.expression* @parse_expression(i8* %22)
  store %struct.expression* %23, %struct.expression** %8, align 8
  %24 = load i32, i32* @free_current_contents, align 4
  %25 = call %struct.cleanup* @make_cleanup(i32 %24, %struct.expression** %8)
  store %struct.cleanup* %25, %struct.cleanup** %9, align 8
  %26 = load %struct.expression*, %struct.expression** %8, align 8
  %27 = call %struct.value* @evaluate_expression(%struct.expression* %26)
  store %struct.value* %27, %struct.value** %10, align 8
  %28 = load %struct.value*, %struct.value** %10, align 8
  %29 = call i32 @VALUE_TYPE(%struct.value* %28)
  %30 = load %struct.value*, %struct.value** %10, align 8
  %31 = call i32 @VALUE_CONTENTS(%struct.value* %30)
  %32 = load %struct.value*, %struct.value** %10, align 8
  %33 = call i32 @VALUE_EMBEDDED_OFFSET(%struct.value* %32)
  %34 = load %struct.value*, %struct.value** %10, align 8
  %35 = call i32 @VALUE_ADDRESS(%struct.value* %34)
  %36 = load %struct.ui_stream*, %struct.ui_stream** %11, align 8
  %37 = getelementptr inbounds %struct.ui_stream, %struct.ui_stream* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @val_print(i32 %29, i32 %31, i32 %33, i32 %35, i32 %38, i32 0, i32 0, i32 0, i32 0)
  %40 = load i32, i32* @uiout, align 4
  %41 = load %struct.ui_stream*, %struct.ui_stream** %11, align 8
  %42 = call i32 @ui_out_field_stream(i32 %40, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct.ui_stream* %41)
  %43 = load %struct.ui_stream*, %struct.ui_stream** %11, align 8
  %44 = call i32 @ui_out_stream_delete(%struct.ui_stream* %43)
  %45 = load %struct.cleanup*, %struct.cleanup** %9, align 8
  %46 = call i32 @do_cleanups(%struct.cleanup* %45)
  %47 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %19, %16
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.ui_stream* @ui_out_stream_new(i32) #1

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local %struct.expression* @parse_expression(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, %struct.expression**) #1

declare dso_local %struct.value* @evaluate_expression(%struct.expression*) #1

declare dso_local i32 @val_print(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @VALUE_EMBEDDED_OFFSET(%struct.value*) #1

declare dso_local i32 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i32 @ui_out_field_stream(i32, i8*, %struct.ui_stream*) #1

declare dso_local i32 @ui_out_stream_delete(%struct.ui_stream*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
