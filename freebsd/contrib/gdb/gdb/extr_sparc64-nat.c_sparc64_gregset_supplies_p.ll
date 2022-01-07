; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-nat.c_sparc64_gregset_supplies_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_sparc64-nat.c_sparc64_gregset_supplies_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_gdbarch = common dso_local global i32 0, align 4
@SPARC_G1_REGNUM = common dso_local global i32 0, align 4
@SPARC_G7_REGNUM = common dso_local global i32 0, align 4
@SPARC_O0_REGNUM = common dso_local global i32 0, align 4
@SPARC_O7_REGNUM = common dso_local global i32 0, align 4
@SPARC_L0_REGNUM = common dso_local global i32 0, align 4
@SPARC_L7_REGNUM = common dso_local global i32 0, align 4
@SPARC_I0_REGNUM = common dso_local global i32 0, align 4
@SPARC_I7_REGNUM = common dso_local global i32 0, align 4
@SPARC64_PC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_NPC_REGNUM = common dso_local global i32 0, align 4
@SPARC64_STATE_REGNUM = common dso_local global i32 0, align 4
@SPARC64_Y_REGNUM = common dso_local global i32 0, align 4
@SPARC64_FPRS_REGNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sparc64_gregset_supplies_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sparc64_gregset_supplies_p(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @current_gdbarch, align 4
  %5 = call i32 @gdbarch_ptr_bit(i32 %4)
  %6 = icmp eq i32 %5, 32
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @sparc32_gregset_supplies_p(i32 %8)
  store i32 %9, i32* %2, align 4
  br label %65

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SPARC_G1_REGNUM, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SPARC_G7_REGNUM, align 4
  %17 = icmp sle i32 %15, %16
  br i1 %17, label %42, label %18

18:                                               ; preds = %14, %10
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SPARC_O0_REGNUM, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @SPARC_O7_REGNUM, align 4
  %25 = icmp sle i32 %23, %24
  br i1 %25, label %42, label %26

26:                                               ; preds = %22, %18
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SPARC_L0_REGNUM, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @SPARC_L7_REGNUM, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @SPARC_I0_REGNUM, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @SPARC_I7_REGNUM, align 4
  %41 = icmp sle i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %30, %22, %14
  store i32 1, i32* %2, align 4
  br label %65

43:                                               ; preds = %38, %34
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SPARC64_PC_REGNUM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SPARC64_NPC_REGNUM, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %63, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @SPARC64_STATE_REGNUM, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @SPARC64_Y_REGNUM, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SPARC64_FPRS_REGNUM, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %55, %51, %47, %43
  store i32 1, i32* %2, align 4
  br label %65

64:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %63, %42, %7
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @gdbarch_ptr_bit(i32) #1

declare dso_local i32 @sparc32_gregset_supplies_p(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
