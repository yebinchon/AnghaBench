; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_arch_leave.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_arch_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@curproc = common dso_local global %struct.TYPE_14__* null, align 8
@pmap_pcid_enabled = common dso_local global i64 0, align 8
@invpcid_works = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efi_arch_leave() #0 {
  %1 = alloca %struct.TYPE_12__*, align 8
  %2 = load %struct.TYPE_14__*, %struct.TYPE_14__** @curproc, align 8
  %3 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %2, i32 0, i32 0
  %4 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store %struct.TYPE_12__* %5, %struct.TYPE_12__** %1, align 8
  %6 = load i64, i64* @pmap_pcid_enabled, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %0
  %9 = load i32, i32* @invpcid_works, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %14 = call i32 @PCPU_SET(%struct.TYPE_12__* %12, %struct.TYPE_12__* %13)
  br label %15

15:                                               ; preds = %11, %8, %0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64, i64* @pmap_pcid_enabled, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %1, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32, i32* @cpuid, align 4
  %26 = call i64 @PCPU_GET(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  br label %31

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %21
  %32 = phi i32 [ %29, %21 ], [ 0, %30 ]
  %33 = or i32 %18, %32
  %34 = call i32 @load_cr3(i32 %33)
  %35 = load i64, i64* @pmap_pcid_enabled, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = call i32 (...) @invltlb()
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** @curthread, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vm_fault_enable_pagefaults(i32 %43)
  ret void
}

declare dso_local i32 @PCPU_SET(%struct.TYPE_12__*, %struct.TYPE_12__*) #1

declare dso_local i32 @load_cr3(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @invltlb(...) #1

declare dso_local i32 @vm_fault_enable_pagefaults(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
