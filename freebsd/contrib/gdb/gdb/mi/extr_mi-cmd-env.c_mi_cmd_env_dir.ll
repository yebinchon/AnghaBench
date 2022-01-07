; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-env.c_mi_cmd_env_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/mi/extr_mi-cmd-env.c_mi_cmd_env_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mi_opt = type { i8*, i32, i32 }

@mi_cmd_env_dir.opts = internal global [2 x %struct.mi_opt] [%struct.mi_opt { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 0, i32 0 }, %struct.mi_opt zeroinitializer], align 16
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@uiout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@MI_CMD_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"mi_cmd_env_dir\00", align 1
@source_path = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"source-path\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mi_cmd_env_dir(i8* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = call i32 (...) @dont_repeat()
  %14 = load i32, i32* @uiout, align 4
  %15 = call i32 @mi_version(i32 %14)
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %35

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %30, %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %20
  %24 = load i8**, i8*** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @env_execute_cli_command(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  br label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %8, align 4
  br label %20

33:                                               ; preds = %20
  %34 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %34, i32* %4, align 4
  br label %84

35:                                               ; preds = %3
  br label %36

36:                                               ; preds = %35, %46
  %37 = load i32, i32* %7, align 4
  %38 = load i8**, i8*** %6, align 8
  %39 = call i32 @mi_getopt(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %37, i8** %38, %struct.mi_opt* getelementptr inbounds ([2 x %struct.mi_opt], [2 x %struct.mi_opt]* @mi_cmd_env_dir.opts, i64 0, i64 0), i32* %9, i8** %11)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %47

43:                                               ; preds = %36
  %44 = load i32, i32* %12, align 4
  switch i32 %44, label %46 [
    i32 0, label %45
  ]

45:                                               ; preds = %43
  store i32 1, i32* %10, align 4
  br label %46

46:                                               ; preds = %43, %45
  br label %36

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = load i8**, i8*** %6, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8** %51, i8*** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @source_path, align 4
  %59 = call i32 @xfree(i32 %58)
  %60 = call i32 (...) @init_source_path()
  br label %61

61:                                               ; preds = %57, %47
  %62 = load i32, i32* %7, align 4
  %63 = sub nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %74, %61
  %65 = load i32, i32* %8, align 4
  %66 = icmp sge i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %64
  %68 = load i8**, i8*** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @env_mod_path(i8* %72, i32* @source_path)
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %8, align 4
  br label %64

77:                                               ; preds = %64
  %78 = call i32 (...) @init_last_source_visited()
  %79 = load i32, i32* @uiout, align 4
  %80 = load i32, i32* @source_path, align 4
  %81 = call i32 @ui_out_field_string(i32 %79, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = call i32 (...) @forget_cached_source_info()
  %83 = load i32, i32* @MI_CMD_DONE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %77, %33
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @dont_repeat(...) #1

declare dso_local i32 @mi_version(i32) #1

declare dso_local i32 @env_execute_cli_command(i8*, i8*) #1

declare dso_local i32 @mi_getopt(i8*, i32, i8**, %struct.mi_opt*, i32*, i8**) #1

declare dso_local i32 @xfree(i32) #1

declare dso_local i32 @init_source_path(...) #1

declare dso_local i32 @env_mod_path(i8*, i32*) #1

declare dso_local i32 @init_last_source_visited(...) #1

declare dso_local i32 @ui_out_field_string(i32, i8*, i32) #1

declare dso_local i32 @forget_cached_source_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
