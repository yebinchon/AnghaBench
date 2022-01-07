; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_seg_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VM_GET_SEGMENT_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_get_desc(%struct.vmctx* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_seg_desc, align 4
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = call i32 @bzero(%struct.vm_seg_desc* %14, i32 20)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %21 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VM_GET_SEGMENT_DESCRIPTOR, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.vm_seg_desc* %14)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %6
  %28 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %11, align 8
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %12, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %6
  %41 = load i32, i32* %13, align 4
  ret i32 %41
}

declare dso_local i32 @bzero(%struct.vm_seg_desc*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_seg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
