; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [49 x i8] c"mi_cmd_var_create: Usage: NAME FRAME EXPRESSION.\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"mi_cmd_var_create: name of object must begin with a letter\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@USE_CURRENT_FRAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@USE_SELECTED_FRAME = common dso_local global i32 0, align 4
@USE_SPECIFIED_FRAME = common dso_local global i32 0, align 4
@varobjdebug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"Name=\22%s\22, Frame=\22%s\22 (0x%s), Expression=\22%s\22\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"mi_cmd_var_create: unable to create variable object\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"numchild\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_create(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.varobj*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.cleanup*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 3
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i8* @xstrdup(i8* %22)
  store i8* %23, i8** %9, align 8
  %24 = load i32, i32* @free_current_contents, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i32 (i8*)*
  %27 = call %struct.cleanup* (i32 (i8*)*, ...) @make_cleanup(i32 (i8*)* %26, i8** %9)
  store %struct.cleanup* %27, %struct.cleanup** %13, align 8
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i8* @xstrdup(i8* %30)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = call %struct.cleanup* (i32 (i8*)*, ...) @make_cleanup(i32 (i8*)* @xfree, i8* %32)
  store %struct.cleanup* %33, %struct.cleanup** %13, align 8
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 2
  %36 = load i8*, i8** %35, align 8
  %37 = call i8* @xstrdup(i8* %36)
  store i8* %37, i8** %11, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %19
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @xfree(i8* %42)
  %44 = call i8* (...) @varobj_gen_name()
  store i8* %44, i8** %9, align 8
  br label %53

45:                                               ; preds = %19
  %46 = load i8*, i8** %9, align 8
  %47 = load i8, i8* %46, align 1
  %48 = call i32 @isalpha(i8 signext %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %45
  %51 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i8*, i8** %10, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @USE_CURRENT_FRAME, align 4
  store i32 %58, i32* %14, align 4
  br label %70

59:                                               ; preds = %53
  %60 = load i8*, i8** %10, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @USE_SELECTED_FRAME, align 4
  store i32 %64, i32* %14, align 4
  br label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @USE_SPECIFIED_FRAME, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @string_to_core_addr(i8* %67)
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %65, %63
  br label %70

70:                                               ; preds = %69, %57
  %71 = load i64, i64* @varobjdebug, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %70
  %74 = load i32, i32* @gdb_stdlog, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @paddr(i32 %77)
  %79 = load i8*, i8** %11, align 8
  %80 = call i32 @fprintf_unfiltered(i32 %74, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i8* %75, i8* %76, i32 %78, i8* %79)
  br label %81

81:                                               ; preds = %73, %70
  %82 = load i8*, i8** %9, align 8
  %83 = load i8*, i8** %11, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call %struct.varobj* @varobj_create(i8* %82, i8* %83, i32 %84, i32 %85)
  store %struct.varobj* %86, %struct.varobj** %8, align 8
  %87 = load %struct.varobj*, %struct.varobj** %8, align 8
  %88 = icmp eq %struct.varobj* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %81
  %92 = load i32, i32* @uiout, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = call i32 @ui_out_field_string(i32 %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %93)
  %95 = load i32, i32* @uiout, align 4
  %96 = load %struct.varobj*, %struct.varobj** %8, align 8
  %97 = call i32 @varobj_get_num_children(%struct.varobj* %96)
  %98 = call i32 @ui_out_field_int(i32 %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %97)
  %99 = load %struct.varobj*, %struct.varobj** %8, align 8
  %100 = call i8* @varobj_get_type(%struct.varobj* %99)
  store i8* %100, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* @uiout, align 4
  %105 = call i32 @ui_out_field_string(i32 %104, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0))
  br label %112

106:                                              ; preds = %91
  %107 = load i32, i32* @uiout, align 4
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @ui_out_field_string(i32 %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* %108)
  %110 = load i8*, i8** %12, align 8
  %111 = call i32 @xfree(i8* %110)
  br label %112

112:                                              ; preds = %106, %103
  %113 = load %struct.cleanup*, %struct.cleanup** %13, align 8
  %114 = call i32 @do_cleanups(%struct.cleanup* %113)
  %115 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %115
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32 (i8*)*, ...) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @varobj_gen_name(...) #1

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i32 @string_to_core_addr(i8*) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i32 @paddr(i32) #1

declare dso_local %struct.varobj* @varobj_create(i8*, i8*, i32, i32) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @varobj_get_num_children(%struct.varobj*) #1

declare dso_local i8* @varobj_get_type(%struct.varobj*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
