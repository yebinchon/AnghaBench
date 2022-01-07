; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-env.c_mi_cmd_env_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-env.c_mi_cmd_env_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }

@mi_cmd_env_path.opts = internal global [2 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mi_cmd_env_path\00", align 1
@orig_path = common dso_local global i8* null, align 8
@inferior_environ = common dso_local global i32 0, align 4
@path_var_name = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_env_path(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = call i32 (...) @dont_repeat()
  %16 = load i32, i32* @uiout, align 4
  %17 = call i32 @mi_version(i32 %16)
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %37

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %12, align 4
  br label %22

22:                                               ; preds = %32, %19
  %23 = load i32, i32* %12, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i8**, i8*** %6, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @env_execute_cli_command(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %12, align 4
  br label %22

35:                                               ; preds = %22
  %36 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %36, i32* %4, align 4
  br label %102

37:                                               ; preds = %3
  br label %38

38:                                               ; preds = %37, %48
  %39 = load i32, i32* %7, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = call i32 @mi_getopt(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %39, i8** %40, %struct.mi_opt* getelementptr inbounds ([2 x %struct.mi_opt], [2 x %struct.mi_opt]* @mi_cmd_env_path.opts, i64 0, i64 0), i32* %11, i8** %13)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %49

45:                                               ; preds = %38
  %46 = load i32, i32* %14, align 4
  switch i32 %46, label %48 [
    i32 0, label %47
  ]

47:                                               ; preds = %45
  store i32 1, i32* %10, align 4
  br label %48

48:                                               ; preds = %45, %47
  br label %38

49:                                               ; preds = %44
  %50 = load i32, i32* %11, align 4
  %51 = load i8**, i8*** %6, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8** %53, i8*** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i8*, i8** @orig_path, align 8
  %61 = call i8* @xstrdup(i8* %60)
  store i8* %61, i8** %8, align 8
  br label %72

62:                                               ; preds = %49
  %63 = load i32, i32* @inferior_environ, align 4
  %64 = load i32, i32* @path_var_name, align 4
  %65 = call i8* @get_in_environ(i32 %63, i32 %64)
  store i8* %65, i8** %9, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = load i8*, i8** %9, align 8
  %71 = call i8* @xstrdup(i8* %70)
  store i8* %71, i8** %8, align 8
  br label %72

72:                                               ; preds = %69, %59
  %73 = load i32, i32* %7, align 4
  %74 = sub nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %85, %72
  %76 = load i32, i32* %12, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %75
  %79 = load i8**, i8*** %6, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @env_mod_path(i8* %83, i8** %8)
  br label %85

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %12, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load i32, i32* @inferior_environ, align 4
  %90 = load i32, i32* @path_var_name, align 4
  %91 = load i8*, i8** %8, align 8
  %92 = call i32 @set_in_environ(i32 %89, i32 %90, i8* %91)
  %93 = load i8*, i8** %8, align 8
  %94 = call i32 @xfree(i8* %93)
  %95 = load i32, i32* @inferior_environ, align 4
  %96 = load i32, i32* @path_var_name, align 4
  %97 = call i8* @get_in_environ(i32 %95, i32 %96)
  store i8* %97, i8** %9, align 8
  %98 = load i32, i32* @uiout, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @ui_out_field_string(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %99)
  %101 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %88, %35
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @mi_version(i32) #1

declare dso_local i32 @env_execute_cli_command(i8*, i8*) #1

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i8* @get_in_environ(i32, i32) #1

declare dso_local i32 @env_mod_path(i8*, i8**) #1

declare dso_local i32 @set_in_environ(i32, i32, i8*) #1

declare dso_local i32 @xfree(i8*) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
