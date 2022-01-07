; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_assign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-var.c_mi_cmd_var_assign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.varobj = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"mi_cmd_var_assign: Usage: NAME EXPRESSION.\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"mi_cmd_var_assign: Variable object not found\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"mi_cmd_var_assign: Variable object is not editable\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"mi_cmd_var_assign: Could not assign expression to varible object\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_var_assign(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.varobj*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %3
  %12 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %3
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call %struct.varobj* @varobj_get_handle(i8* %16)
  store %struct.varobj* %17, %struct.varobj** %7, align 8
  %18 = load %struct.varobj*, %struct.varobj** %7, align 8
  %19 = icmp eq %struct.varobj* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %13
  %23 = load %struct.varobj*, %struct.varobj** %7, align 8
  %24 = call i32 @varobj_get_attributes(%struct.varobj* %23)
  %25 = and i32 %24, 1
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @xstrdup(i8* %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.varobj*, %struct.varobj** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @varobj_set_value(%struct.varobj* %34, i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %29
  %39 = call i32 @error(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %29
  %41 = load i32, i32* @uiout, align 4
  %42 = load %struct.varobj*, %struct.varobj** %7, align 8
  %43 = call i32 @varobj_get_value(%struct.varobj* %42)
  %44 = call i32 @ui_out_field_string(i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @MI_CMD_DONE, align 4
  ret i32 %45
}

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.varobj* @varobj_get_handle(i8*) #1

declare dso_local i32 @varobj_get_attributes(%struct.varobj*) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @varobj_set_value(%struct.varobj*, i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32) #1

declare dso_local i32 @varobj_get_value(%struct.varobj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
