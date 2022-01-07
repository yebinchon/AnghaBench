; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_vmcb.c_vmcb_segptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_vmcb.c_vmcb_segptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmcb_segment = type { i32 }
%struct.vmcb = type { %struct.vmcb_state }
%struct.vmcb_state = type { %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment, %struct.vmcb_segment }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmcb_segment* (%struct.vmcb*, i32)* @vmcb_segptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmcb_segment* @vmcb_segptr(%struct.vmcb* %0, i32 %1) #0 {
  %3 = alloca %struct.vmcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vmcb_state*, align 8
  %6 = alloca %struct.vmcb_segment*, align 8
  store %struct.vmcb* %0, %struct.vmcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.vmcb*, %struct.vmcb** %3, align 8
  %8 = getelementptr inbounds %struct.vmcb, %struct.vmcb* %7, i32 0, i32 0
  store %struct.vmcb_state* %8, %struct.vmcb_state** %5, align 8
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %40 [
    i32 137, label %10
    i32 136, label %13
    i32 135, label %16
    i32 134, label %19
    i32 132, label %22
    i32 129, label %25
    i32 133, label %28
    i32 131, label %31
    i32 130, label %34
    i32 128, label %37
  ]

10:                                               ; preds = %2
  %11 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %12 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %11, i32 0, i32 9
  store %struct.vmcb_segment* %12, %struct.vmcb_segment** %6, align 8
  br label %41

13:                                               ; preds = %2
  %14 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %15 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %14, i32 0, i32 8
  store %struct.vmcb_segment* %15, %struct.vmcb_segment** %6, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %18 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %17, i32 0, i32 7
  store %struct.vmcb_segment* %18, %struct.vmcb_segment** %6, align 8
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %21 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %20, i32 0, i32 6
  store %struct.vmcb_segment* %21, %struct.vmcb_segment** %6, align 8
  br label %41

22:                                               ; preds = %2
  %23 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %24 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %23, i32 0, i32 5
  store %struct.vmcb_segment* %24, %struct.vmcb_segment** %6, align 8
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %27 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %26, i32 0, i32 4
  store %struct.vmcb_segment* %27, %struct.vmcb_segment** %6, align 8
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %30 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %29, i32 0, i32 3
  store %struct.vmcb_segment* %30, %struct.vmcb_segment** %6, align 8
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %33 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %32, i32 0, i32 2
  store %struct.vmcb_segment* %33, %struct.vmcb_segment** %6, align 8
  br label %41

34:                                               ; preds = %2
  %35 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %36 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %35, i32 0, i32 1
  store %struct.vmcb_segment* %36, %struct.vmcb_segment** %6, align 8
  br label %41

37:                                               ; preds = %2
  %38 = load %struct.vmcb_state*, %struct.vmcb_state** %5, align 8
  %39 = getelementptr inbounds %struct.vmcb_state, %struct.vmcb_state* %38, i32 0, i32 0
  store %struct.vmcb_segment* %39, %struct.vmcb_segment** %6, align 8
  br label %41

40:                                               ; preds = %2
  store %struct.vmcb_segment* null, %struct.vmcb_segment** %6, align 8
  br label %41

41:                                               ; preds = %40, %37, %34, %31, %28, %25, %22, %19, %16, %13, %10
  %42 = load %struct.vmcb_segment*, %struct.vmcb_segment** %6, align 8
  ret %struct.vmcb_segment* %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
