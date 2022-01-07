; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_register_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-main.c_mi_cmd_data_list_register_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cleanup = type { i32 }

@NUM_REGS = common dso_local global i32 0, align 4
@NUM_PSEUDO_REGS = common dso_local global i32 0, align 4
@uiout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"register-names\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@mi_error_message = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"bad register number\00", align 1
@MI_CMD_ERROR = common dso_local global i32 0, align 4
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_data_list_register_names(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @NUM_REGS, align 4
  %13 = load i32, i32* @NUM_PSEUDO_REGS, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @uiout, align 4
  %16 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store %struct.cleanup* %16, %struct.cleanup** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %43, %19
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = call i8* @REGISTER_NAME(i32 %25)
  %27 = icmp eq i8* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %8, align 4
  %30 = call i8* @REGISTER_NAME(i32 %29)
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28, %24
  %35 = load i32, i32* @uiout, align 4
  %36 = call i32 @ui_out_field_string(i32 %35, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %42

37:                                               ; preds = %28
  %38 = load i32, i32* @uiout, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i8* @REGISTER_NAME(i32 %39)
  %41 = call i32 @ui_out_field_string(i32 %38, i32* null, i8* %40)
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %20

46:                                               ; preds = %20
  br label %47

47:                                               ; preds = %46, %3
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %89, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i8**, i8*** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @atoi(i8* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sge i32 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %52
  %66 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %67 = call i32 @do_cleanups(%struct.cleanup* %66)
  %68 = call i32 @xasprintf(i32* @mi_error_message, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @MI_CMD_ERROR, align 4
  store i32 %69, i32* %4, align 4
  br label %96

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = call i8* @REGISTER_NAME(i32 %71)
  %73 = icmp eq i8* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %8, align 4
  %76 = call i8* @REGISTER_NAME(i32 %75)
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74, %70
  %81 = load i32, i32* @uiout, align 4
  %82 = call i32 @ui_out_field_string(i32 %81, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %88

83:                                               ; preds = %74
  %84 = load i32, i32* @uiout, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i8* @REGISTER_NAME(i32 %85)
  %87 = call i32 @ui_out_field_string(i32 %84, i32* null, i8* %86)
  br label %88

88:                                               ; preds = %83, %80
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %48

92:                                               ; preds = %48
  %93 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %94 = call i32 @do_cleanups(%struct.cleanup* %93)
  %95 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %65
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i8* @REGISTER_NAME(i32) #1

declare dso_local i32 @ui_out_field_string(i32, i32*, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @xasprintf(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
