; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_get_function_from_frame.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/tui/extr_tui-stack.c_tui_get_function_from_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.ui_file = type { i32 }

@tui_get_function_from_frame.name = internal global [256 x i8] zeroinitializer, align 16
@demangle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.frame_info*)* @tui_get_function_from_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @tui_get_function_from_frame(%struct.frame_info* %0) #0 {
  %2 = alloca %struct.frame_info*, align 8
  %3 = alloca %struct.ui_file*, align 8
  %4 = alloca i8*, align 8
  store %struct.frame_info* %0, %struct.frame_info** %2, align 8
  %5 = call %struct.ui_file* @tui_sfileopen(i32 256)
  store %struct.ui_file* %5, %struct.ui_file** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %2, align 8
  %7 = call i32 @get_frame_pc(%struct.frame_info* %6)
  %8 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %9 = load i32, i32* @demangle, align 4
  %10 = call i32 @print_address_symbolic(i32 %7, %struct.ui_file* %8, i32 %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %12 = call i8* @tui_file_get_strbuf(%struct.ui_file* %11)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 60
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %19, i8** %4, align 8
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @strncpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tui_get_function_from_frame.name, i64 0, i64 0), i8* %21, i32 256)
  %23 = call i8* @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tui_get_function_from_frame.name, i64 0, i64 0), i8 signext 40)
  store i8* %23, i8** %4, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %20
  %27 = call i8* @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tui_get_function_from_frame.name, i64 0, i64 0), i8 signext 62)
  store i8* %27, i8** %4, align 8
  br label %28

28:                                               ; preds = %26, %20
  %29 = load i8*, i8** %4, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** %4, align 8
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %28
  %34 = call i8* @strchr(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tui_get_function_from_frame.name, i64 0, i64 0), i8 signext 43)
  store i8* %34, i8** %4, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** %4, align 8
  store i8 0, i8* %38, align 1
  br label %39

39:                                               ; preds = %37, %33
  %40 = load %struct.ui_file*, %struct.ui_file** %3, align 8
  %41 = call i32 @ui_file_delete(%struct.ui_file* %40)
  ret i8* getelementptr inbounds ([256 x i8], [256 x i8]* @tui_get_function_from_frame.name, i64 0, i64 0)
}

declare dso_local %struct.ui_file* @tui_sfileopen(i32) #1

declare dso_local i32 @print_address_symbolic(i32, %struct.ui_file*, i32, i8*) #1

declare dso_local i32 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i8* @tui_file_get_strbuf(%struct.ui_file*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @ui_file_delete(%struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
