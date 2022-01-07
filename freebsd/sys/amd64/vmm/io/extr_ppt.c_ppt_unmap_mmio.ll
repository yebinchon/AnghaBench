; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_unmap_mmio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_ppt.c_ppt_unmap_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm = type { i32 }
%struct.pptdev = type { %struct.pptseg* }
%struct.pptseg = type { i64, i32 }

@MAX_MMIOSEGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm*, %struct.pptdev*)* @ppt_unmap_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppt_unmap_mmio(%struct.vm* %0, %struct.pptdev* %1) #0 {
  %3 = alloca %struct.vm*, align 8
  %4 = alloca %struct.pptdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pptseg*, align 8
  store %struct.vm* %0, %struct.vm** %3, align 8
  store %struct.pptdev* %1, %struct.pptdev** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %34, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @MAX_MMIOSEGS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load %struct.pptdev*, %struct.pptdev** %4, align 8
  %13 = getelementptr inbounds %struct.pptdev, %struct.pptdev* %12, i32 0, i32 0
  %14 = load %struct.pptseg*, %struct.pptseg** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %14, i64 %16
  store %struct.pptseg* %17, %struct.pptseg** %6, align 8
  %18 = load %struct.pptseg*, %struct.pptseg** %6, align 8
  %19 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %34

23:                                               ; preds = %11
  %24 = load %struct.vm*, %struct.vm** %3, align 8
  %25 = load %struct.pptseg*, %struct.pptseg** %6, align 8
  %26 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pptseg*, %struct.pptseg** %6, align 8
  %29 = getelementptr inbounds %struct.pptseg, %struct.pptseg* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @vm_unmap_mmio(%struct.vm* %24, i32 %27, i64 %30)
  %32 = load %struct.pptseg*, %struct.pptseg** %6, align 8
  %33 = call i32 @bzero(%struct.pptseg* %32, i32 16)
  br label %34

34:                                               ; preds = %23, %22
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %7

37:                                               ; preds = %7
  ret void
}

declare dso_local i32 @vm_unmap_mmio(%struct.vm*, i32, i64) #1

declare dso_local i32 @bzero(%struct.pptseg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
