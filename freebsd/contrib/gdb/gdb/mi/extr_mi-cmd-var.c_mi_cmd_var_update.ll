; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"mi_cmd_var_update: Usage: NAME.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"changelist\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"mi_cmd_var_update: Variable object not found\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_update(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.varobj*, align 8
  %9 = alloca %struct.varobj**, align 8
  %10 = alloca %struct.varobj**, align 8
  %11 = alloca %struct.cleanup*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = call i32 @error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i8**, i8*** %6, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 42
  br i1 %25, label %26, label %67

26:                                               ; preds = %18
  %27 = load i8*, i8** %12, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %26
  %33 = call i32 @varobj_list(%struct.varobj*** %9)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* @uiout, align 4
  %35 = call i32 @mi_version(i32 %34)
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @uiout, align 4
  %39 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %39, %struct.cleanup** %11, align 8
  br label %43

40:                                               ; preds = %32
  %41 = load i32, i32* @uiout, align 4
  %42 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %41, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %42, %struct.cleanup** %11, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %13, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %48 = call i32 @do_cleanups(%struct.cleanup* %47)
  %49 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %49, i32* %4, align 4
  br label %91

50:                                               ; preds = %43
  %51 = load %struct.varobj**, %struct.varobj*** %9, align 8
  store %struct.varobj** %51, %struct.varobj*** %10, align 8
  br label %52

52:                                               ; preds = %56, %50
  %53 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %54 = load %struct.varobj*, %struct.varobj** %53, align 8
  %55 = icmp ne %struct.varobj* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %58 = load %struct.varobj*, %struct.varobj** %57, align 8
  %59 = call i32 @varobj_update_one(%struct.varobj* %58)
  %60 = load %struct.varobj**, %struct.varobj*** %10, align 8
  %61 = getelementptr inbounds %struct.varobj*, %struct.varobj** %60, i32 1
  store %struct.varobj** %61, %struct.varobj*** %10, align 8
  br label %52

62:                                               ; preds = %52
  %63 = load %struct.varobj**, %struct.varobj*** %9, align 8
  %64 = call i32 @xfree(%struct.varobj** %63)
  %65 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %66 = call i32 @do_cleanups(%struct.cleanup* %65)
  br label %89

67:                                               ; preds = %26, %18
  %68 = load i8*, i8** %12, align 8
  %69 = call %struct.varobj* @varobj_get_handle(i8* %68)
  store %struct.varobj* %69, %struct.varobj** %8, align 8
  %70 = load %struct.varobj*, %struct.varobj** %8, align 8
  %71 = icmp eq %struct.varobj* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %67
  %75 = load i32, i32* @uiout, align 4
  %76 = call i32 @mi_version(i32 %75)
  %77 = icmp sle i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @uiout, align 4
  %80 = call %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32 %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %80, %struct.cleanup** %11, align 8
  br label %84

81:                                               ; preds = %74
  %82 = load i32, i32* @uiout, align 4
  %83 = call %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32 %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.cleanup* %83, %struct.cleanup** %11, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.varobj*, %struct.varobj** %8, align 8
  %86 = call i32 @varobj_update_one(%struct.varobj* %85)
  %87 = load %struct.cleanup*, %struct.cleanup** %11, align 8
  %88 = call i32 @do_cleanups(%struct.cleanup* %87)
  br label %89

89:                                               ; preds = %84, %62
  %90 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %46
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @varobj_list(%struct.varobj***) #1

declare dso_local i32 @mi_version(i32) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_tuple_begin_end(i32, i8*) #1

declare dso_local %struct.cleanup* @make_cleanup_ui_out_list_begin_end(i32, i8*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

declare dso_local i32 @varobj_update_one(%struct.varobj*) #1

declare dso_local i32 @xfree(%struct.varobj**) #1

declare dso_local %struct.varobj* @varobj_get_handle(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
