; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_lvt_off_to_idx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_lvt_off_to_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APIC_LVT_CMCI = common dso_local global i32 0, align 4
@APIC_LVT_TIMER = common dso_local global i32 0, align 4
@APIC_LVT_THERMAL = common dso_local global i32 0, align 4
@APIC_LVT_PMC = common dso_local global i32 0, align 4
@APIC_LVT_LINT0 = common dso_local global i32 0, align 4
@APIC_LVT_LINT1 = common dso_local global i32 0, align 4
@APIC_LVT_ERROR = common dso_local global i32 0, align 4
@VLAPIC_MAXLVT_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"lvt_off_to_idx: invalid lvt index %d for offset %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lvt_off_to_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lvt_off_to_idx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %19 [
    i32 134, label %5
    i32 128, label %7
    i32 129, label %9
    i32 130, label %11
    i32 132, label %13
    i32 131, label %15
    i32 133, label %17
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @APIC_LVT_CMCI, align 4
  store i32 %6, i32* %3, align 4
  br label %20

7:                                                ; preds = %1
  %8 = load i32, i32* @APIC_LVT_TIMER, align 4
  store i32 %8, i32* %3, align 4
  br label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @APIC_LVT_THERMAL, align 4
  store i32 %10, i32* %3, align 4
  br label %20

11:                                               ; preds = %1
  %12 = load i32, i32* @APIC_LVT_PMC, align 4
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i32, i32* @APIC_LVT_LINT0, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @APIC_LVT_LINT1, align 4
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @APIC_LVT_ERROR, align 4
  store i32 %18, i32* %3, align 4
  br label %20

19:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %17, %15, %13, %11, %9, %7, %5
  %21 = load i32, i32* %3, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @VLAPIC_MAXLVT_INDEX, align 4
  %26 = icmp sle i32 %24, %25
  br label %27

27:                                               ; preds = %23, %20
  %28 = phi i1 [ false, %20 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %29, i8* %33)
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
