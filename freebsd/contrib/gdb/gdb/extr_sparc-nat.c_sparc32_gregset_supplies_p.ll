; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_sparc32_gregset_supplies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc-nat.c_sparc32_gregset_supplies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPARC_G1_REGNUM = common dso_local global i32 0, align 4
@SPARC_G7_REGNUM = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_L7_REGNUM = common dso_local global i32 0, align 4
@SPARC_I0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC32_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC32_PSR_REGNUM = common dso_local global i32 0, align 4
@SPARC32_Y_REGNUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc32_gregset_supplies_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @SPARC_G1_REGNUM, align 4
  %6 = icmp sge i32 %4, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SPARC_G7_REGNUM, align 4
  %10 = icmp sle i32 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %7, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SPARC_L7_REGNUM, align 4
  %26 = icmp sle i32 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @SPARC_I0_REGNUM, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %23, %15, %7
  store i32 1, i32* %2, align 4
  br label %54

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @SPARC32_PC_REGNUM, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @SPARC32_NPC_REGNUM, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %52, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @SPARC32_PSR_REGNUM, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @SPARC32_Y_REGNUM, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48, %44, %40, %36
  store i32 1, i32* %2, align 4
  br label %54

53:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %35
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
