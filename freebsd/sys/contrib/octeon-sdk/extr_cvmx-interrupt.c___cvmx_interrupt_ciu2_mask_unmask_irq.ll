; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu2_mask_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu2_mask_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CVMX_IRQ_MAX = common dso_local global i32 0, align 4
@CVMX_IRQ_MIPS7 = common dso_local global i32 0, align 4
@cvmx_interrupt_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__cvmx_interrupt_ciu2_mask_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_interrupt_ciu2_mask_unmask_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @CVMX_IRQ_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %2
  br label %86

18:                                               ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @CVMX_IRQ_MIPS7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = call i32 (...) @cvmx_interrupt_disable_save()
  store i32 %23, i32* %5, align 4
  %24 = call i32 asm sideeffect "mfc0 $0,$$12,0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 8, %26
  %28 = shl i32 1, %27
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @CLEAR_OR_MASK(i32 %25, i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  call void asm sideeffect "mtc0 $0,$$12,0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %31) #2, !srcloc !3
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @cvmx_interrupt_restore(i32 %32)
  br label %86

34:                                               ; preds = %18
  %35 = call i32 (...) @cvmx_get_core_num()
  store i32 %35, i32* %9, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %86

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  %47 = ashr i32 %46, 6
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 63
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp sgt i32 %50, 7
  br i1 %51, label %52, label %62

52:                                               ; preds = %45
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* %9, align 4
  %57 = call i64 @CVMX_CIU2_EN_PPX_IP2_MBOX_W1C(i32 %56)
  store i64 %57, i64* %8, align 8
  br label %61

58:                                               ; preds = %52
  %59 = load i32, i32* %9, align 4
  %60 = call i64 @CVMX_CIU2_EN_PPX_IP2_MBOX_W1S(i32 %59)
  store i64 %60, i64* %8, align 8
  br label %61

61:                                               ; preds = %58, %55
  br label %80

62:                                               ; preds = %45
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @CVMX_CIU2_EN_PPX_IP2_WRKQ_W1C(i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = mul nsw i32 4096, %68
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %67, %70
  store i64 %71, i64* %8, align 8
  br label %79

72:                                               ; preds = %62
  %73 = load i32, i32* %9, align 4
  %74 = call i64 @CVMX_CIU2_EN_PPX_IP2_WRKQ_W1S(i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = mul nsw i32 4096, %75
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %74, %77
  store i64 %78, i64* %8, align 8
  br label %79

79:                                               ; preds = %72, %65
  br label %80

80:                                               ; preds = %79, %61
  %81 = load i64, i64* %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = shl i64 1, %83
  %85 = call i32 @cvmx_write_csr(i64 %81, i64 %84)
  br label %86

86:                                               ; preds = %17, %44, %80, %22
  ret void
}

declare dso_local i32 @cvmx_interrupt_disable_save(...) #1

declare dso_local i32 @CLEAR_OR_MASK(i32, i32, i32) #1

declare dso_local i32 @cvmx_interrupt_restore(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i64 @CVMX_CIU2_EN_PPX_IP2_MBOX_W1C(i32) #1

declare dso_local i64 @CVMX_CIU2_EN_PPX_IP2_MBOX_W1S(i32) #1

declare dso_local i64 @CVMX_CIU2_EN_PPX_IP2_WRKQ_W1C(i32) #1

declare dso_local i64 @CVMX_CIU2_EN_PPX_IP2_WRKQ_W1S(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1123}
!3 = !{i32 1233}
