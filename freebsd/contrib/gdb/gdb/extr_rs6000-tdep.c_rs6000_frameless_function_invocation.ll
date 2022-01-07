; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frameless_function_invocation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_frameless_function_invocation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_info = type { i32 }
%struct.rs6000_framedata = type { i32 }

@SIGTRAMP_FRAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rs6000_frameless_function_invocation(%struct.frame_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.frame_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rs6000_framedata, align 4
  store %struct.frame_info* %0, %struct.frame_info** %3, align 8
  %6 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %7 = call i32* @get_next_frame(%struct.frame_info* %6)
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %11 = call i32* @get_next_frame(%struct.frame_info* %10)
  %12 = call i64 @get_frame_type(i32* %11)
  %13 = load i64, i64* @SIGTRAMP_FRAME, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %9, %1
  %17 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %18 = call i32 @get_frame_func(%struct.frame_info* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %23 = call i64 @get_frame_pc(%struct.frame_info* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %34

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.frame_info*, %struct.frame_info** %3, align 8
  %30 = call i64 @get_frame_pc(%struct.frame_info* %29)
  %31 = call i32 @skip_prologue(i32 %28, i64 %30, %struct.rs6000_framedata* %5)
  %32 = getelementptr inbounds %struct.rs6000_framedata, %struct.rs6000_framedata* %5, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %27, %26, %25, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32* @get_next_frame(%struct.frame_info*) #1

declare dso_local i64 @get_frame_type(i32*) #1

declare dso_local i32 @get_frame_func(%struct.frame_info*) #1

declare dso_local i64 @get_frame_pc(%struct.frame_info*) #1

declare dso_local i32 @skip_prologue(i32, i64, %struct.rs6000_framedata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
