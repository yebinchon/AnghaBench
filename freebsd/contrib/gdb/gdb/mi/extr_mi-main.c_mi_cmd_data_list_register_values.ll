; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_register_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_register_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@mi_error_message = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [101 x i8] c"mi_cmd_data_list_register_values: Usage: -data-list-register-values <format> [<regnum1>...<regnumN>]\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@target_has_registers = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"mi_cmd_data_list_register_values: No registers.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"register-values\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"number\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"bad register number\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_list_register_values(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @NUM_REGS, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %20, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  %22 = load i8**, i8*** %6, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* @target_has_registers, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %32, i32* %4, align 4
  br label %135

33:                                               ; preds = %21
  %34 = load i32, i32* @uiout, align 4
  %35 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store %struct.cleanup* %35, %struct.cleanup** %13, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %76

38:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %72, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %75

43:                                               ; preds = %39
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @REGISTER_NAME(i32 %44)
  %46 = icmp eq i8* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = call i8* @REGISTER_NAME(i32 %48)
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %43
  br label %72

54:                                               ; preds = %47
  %55 = load i32, i32* @uiout, align 4
  %56 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %55, i32* null)
  store %struct.cleanup* %56, %struct.cleanup** %14, align 8
  %57 = load i32, i32* @uiout, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @ui_out_field_int(i32 %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @get_register(i32 %60, i32 %61)
  store i32 %62, i32* %11, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %67 = call i32 @do_cleanups(%struct.cleanup* %66)
  %68 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %68, i32* %4, align 4
  br label %135

69:                                               ; preds = %54
  %70 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %71 = call i32 @do_cleanups(%struct.cleanup* %70)
  br label %72

72:                                               ; preds = %69, %53
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %39

75:                                               ; preds = %39
  br label %76

76:                                               ; preds = %75, %33
  store i32 1, i32* %12, align 4
  br label %77

77:                                               ; preds = %128, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %131

81:                                               ; preds = %77
  %82 = load i8**, i8*** %6, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %82, i64 %84
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @atoi(i8* %86)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp sge i32 %88, 0
  br i1 %89, label %90, label %122

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load i32, i32* %8, align 4
  %96 = call i8* @REGISTER_NAME(i32 %95)
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %122

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  %100 = call i8* @REGISTER_NAME(i32 %99)
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %98
  %105 = load i32, i32* @uiout, align 4
  %106 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %105, i32* null)
  store %struct.cleanup* %106, %struct.cleanup** %14, align 8
  %107 = load i32, i32* @uiout, align 4
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @ui_out_field_int(i32 %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %108)
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @get_register(i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %11, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %119

115:                                              ; preds = %104
  %116 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %117 = call i32 @do_cleanups(%struct.cleanup* %116)
  %118 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %118, i32* %4, align 4
  br label %135

119:                                              ; preds = %104
  %120 = load %struct.cleanup*, %struct.cleanup** %14, align 8
  %121 = call i32 @do_cleanups(%struct.cleanup* %120)
  br label %127

122:                                              ; preds = %98, %94, %90, %81
  %123 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %124 = call i32 @do_cleanups(%struct.cleanup* %123)
  %125 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %126 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %126, i32* %4, align 4
  br label %135

127:                                              ; preds = %119
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %77

131:                                              ; preds = %77
  %132 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %133 = call i32 @do_cleanups(%struct.cleanup* %132)
  %134 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %131, %122, %115, %65, %30, %18
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i32*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @get_register(i32, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
