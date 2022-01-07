; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_set_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvmmapi/extr_vmmapi.c_vm_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmctx = type { i32 }
%struct.vm_seg_desc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@VM_SET_SEGMENT_DESCRIPTOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_set_desc(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.vmctx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vm_seg_desc, align 8
  store %struct.vmctx* %0, %struct.vmctx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 @bzero(%struct.vm_seg_desc* %14, i32 32)
  %16 = load i32, i32* %8, align 4
  %17 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load i32, i32* %9, align 4
  %19 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  %21 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = getelementptr inbounds %struct.vm_seg_desc, %struct.vm_seg_desc* %14, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.vmctx*, %struct.vmctx** %7, align 8
  %30 = getelementptr inbounds %struct.vmctx, %struct.vmctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @VM_SET_SEGMENT_DESCRIPTOR, align 4
  %33 = call i32 @ioctl(i32 %31, i32 %32, %struct.vm_seg_desc* %14)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  ret i32 %34
}

declare dso_local i32 @bzero(%struct.vm_seg_desc*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.vm_seg_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
