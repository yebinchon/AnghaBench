; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }
%struct.cleanup = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"mi_cmd_var_delete: Usage: [-c] EXPRESSION.\00", align 1
@free_current_contents = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.2 = private unnamed_addr constant [78 x i8] c"mi_cmd_var_delete: Missing required argument after '-c': variable object name\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"mi_cmd_var_delete: Illegal variable object name\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"mi_cmd_var_delete: Invalid option.\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"mi_cmd_var_delete: Variable object not found.\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"ndeleted\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_delete(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.varobj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cleanup*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = icmp sgt i32 %16, 2
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i8* @xstrdup(i8* %23)
  store i8* %24, i8** %7, align 8
  %25 = load i32, i32* @free_current_contents, align 4
  %26 = call %struct.cleanup* @make_cleanup(i32 %25, i8** %7)
  store %struct.cleanup* %26, %struct.cleanup** %12, align 8
  %27 = load i32, i32* %6, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %43

29:                                               ; preds = %20
  %30 = load i8*, i8** %7, align 8
  %31 = call i64 @strcmp(i8* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = call i32 @error(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %29
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 45
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %35
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %63

46:                                               ; preds = %43
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 1
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @xstrdup(i8* %49)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %46
  store i32 1, i32* %11, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = call i32 @xfree(i8* %57)
  %59 = load i8*, i8** %8, align 8
  %60 = call i8* @xstrdup(i8* %59)
  store i8* %60, i8** %7, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @xfree(i8* %61)
  br label %63

63:                                               ; preds = %56, %43
  %64 = load i8*, i8** %7, align 8
  %65 = call %struct.varobj* @varobj_get_handle(i8* %64)
  store %struct.varobj* %65, %struct.varobj** %9, align 8
  %66 = load %struct.varobj*, %struct.varobj** %9, align 8
  %67 = icmp eq %struct.varobj* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 @error(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %63
  %71 = load %struct.varobj*, %struct.varobj** %9, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 @varobj_delete(%struct.varobj* %71, i32* null, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @uiout, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ui_out_field_int(i32 %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %75)
  %77 = load %struct.cleanup*, %struct.cleanup** %12, align 8
  %78 = call i32 @do_cleanups(%struct.cleanup* %77)
  %79 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %79
}

declare dso_local i32 @error(i8*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local %struct.varobj* @varobj_get_handle(i8*) #1

declare dso_local i32 @varobj_delete(%struct.varobj*, i32*, i32) #1

declare dso_local i32 @ui_out_field_int(i32, i8*, i32) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
