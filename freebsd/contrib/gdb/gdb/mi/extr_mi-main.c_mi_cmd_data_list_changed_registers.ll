; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_changed_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_changed_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"changed-registers\00", align 1
@mi_error_message = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"mi_cmd_data_list_changed_registers: Unable to read register contents.\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [68 x i8] c"mi_cmd_data_list_register_change: Unable to read register contents.\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"bad register number\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_list_changed_registers(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @NUM_REGS, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @uiout, align 4
  %15 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %15, %struct.cleanup** %12, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %57

18:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %53, %18
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @REGISTER_NAME(i32 %24)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = call i8* @REGISTER_NAME(i32 %28)
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %23
  br label %53

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @register_changed_p(i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %41 = call i32 @do_cleanups(%struct.cleanup* %40)
  %42 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %43, i32* %4, align 4
  br label %117

44:                                               ; preds = %34
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* @uiout, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @ui_out_field_int(i32 %48, i32* null, i32 %49)
  br label %51

51:                                               ; preds = %47, %44
  br label %52

52:                                               ; preds = %51
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %19

56:                                               ; preds = %19
  br label %57

57:                                               ; preds = %56, %3
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %110, %57
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %113

62:                                               ; preds = %58
  %63 = load i8**, i8*** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @atoi(i8* %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %62
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71
  %76 = load i32, i32* %8, align 4
  %77 = call i8* @REGISTER_NAME(i32 %76)
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = call i8* @REGISTER_NAME(i32 %80)
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @register_changed_p(i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %92 = call i32 @do_cleanups(%struct.cleanup* %91)
  %93 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %94, i32* %4, align 4
  br label %117

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %95
  %99 = load i32, i32* @uiout, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @ui_out_field_int(i32 %99, i32* null, i32 %100)
  br label %102

102:                                              ; preds = %98, %95
  br label %103

103:                                              ; preds = %102
  br label %109

104:                                              ; preds = %79, %75, %71, %62
  %105 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %106 = call i32 @do_cleanups(%struct.cleanup* %105)
  %107 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %108 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %108, i32* %4, align 4
  br label %117

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %58

113:                                              ; preds = %58
  %114 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %115 = call i32 @do_cleanups(%struct.cleanup* %114)
  %116 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %104, %90, %39
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @register_changed_p(i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @xasprintf(i32*, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i32*, i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
