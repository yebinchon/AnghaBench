; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_down_silently_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stack.c_down_silently_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }

@target_has_stack = common dso_local global i64 0, align 8
@deprecated_selected_frame = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No stack.\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Bottom (i.e., innermost) frame selected; you cannot go down.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @down_silently_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @down_silently_base(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @parse_and_eval_long(i8* %9)
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %8, %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i64, i64* @target_has_stack, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* @deprecated_selected_frame, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %12
  %20 = call i32 @error(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i64, i64* @deprecated_selected_frame, align 8
  %23 = call %struct.frame_info* @find_relative_frame(i64 %22, i32* %5)
  store %struct.frame_info* %23, %struct.frame_info** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load i8*, i8** %2, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32 @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26, %21
  %32 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %33 = call i32 @select_frame(%struct.frame_info* %32)
  %34 = load i64, i64* @deprecated_selected_frame, align 8
  %35 = call i32 @frame_relative_level(i64 %34)
  %36 = call i32 @selected_frame_level_changed_event(i32 %35)
  ret void
}

declare dso_local i32 @parse_and_eval_long(i8*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.frame_info* @find_relative_frame(i64, i32*) #1

declare dso_local i32 @select_frame(%struct.frame_info*) #1

declare dso_local i32 @selected_frame_level_changed_event(i32) #1

declare dso_local i32 @frame_relative_level(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
