; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu_mask_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_ciu_mask_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@CVMX_IRQ_MAX = common dso_local global i32 0, align 4
@CVMX_IRQ_MIPS7 = common dso_local global i32 0, align 4
@cvmx_interrupt_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@cvmx_interrupt_ciu_61xx_timer_mirror = common dso_local global i32 0, align 4
@cvmx_interrupt_ciu_en0_mirror = common dso_local global i32 0, align 4
@cvmx_interrupt_ciu_en1_mirror = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__cvmx_interrupt_ciu_mask_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_interrupt_ciu_mask_unmask_irq(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @CVMX_IRQ_MAX, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %2
  br label %102

19:                                               ; preds = %14
  %20 = call i32 (...) @cvmx_interrupt_disable_save()
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @CVMX_IRQ_MIPS7, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = call i32 asm sideeffect "mfc0 $0,$$12,0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 8, %27
  %29 = shl i32 1, %28
  %30 = sext i32 %29 to i64
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CLEAR_OR_MASK(i32 %26, i64 %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  call void asm sideeffect "mtc0 $0,$$12,0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %33) #2, !srcloc !3
  br label %98

34:                                               ; preds = %19
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cvmx_interrupt_state, i32 0, i32 0), align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = ashr i32 %41, 6
  store i32 %42, i32* %10, align 4
  %43 = call i32 (...) @cvmx_get_core_num()
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %99

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 63
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 2
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 8
  br i1 %53, label %54, label %68

54:                                               ; preds = %47
  %55 = load i32, i32* @cvmx_interrupt_ciu_61xx_timer_mirror, align 4
  %56 = load i32, i32* %7, align 4
  %57 = zext i32 %56 to i64
  %58 = shl i64 1, %57
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @CLEAR_OR_MASK(i32 %55, i64 %58, i32 %59)
  %61 = load i32, i32* @cvmx_interrupt_ciu_en0_mirror, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @CLEAR_OR_MASK(i32 %61, i64 2251799813685248, i32 %62)
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @CVMX_CIU_EN2_PPX_IP2(i32 %64)
  %66 = load i32, i32* @cvmx_interrupt_ciu_61xx_timer_mirror, align 4
  %67 = call i32 @cvmx_write_csr(i32 %65, i32 %66)
  br label %97

68:                                               ; preds = %47
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 64
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* @cvmx_interrupt_ciu_en1_mirror, align 4
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = shl i64 1, %77
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @CLEAR_OR_MASK(i32 %75, i64 %78, i32 %79)
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @CVMX_CIU_INTX_EN1(i32 %81)
  %83 = load i32, i32* @cvmx_interrupt_ciu_en1_mirror, align 4
  %84 = call i32 @cvmx_write_csr(i32 %82, i32 %83)
  br label %96

85:                                               ; preds = %68
  %86 = load i32, i32* @cvmx_interrupt_ciu_en0_mirror, align 4
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @CLEAR_OR_MASK(i32 %86, i64 %89, i32 %90)
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @CVMX_CIU_INTX_EN0(i32 %92)
  %94 = load i32, i32* @cvmx_interrupt_ciu_en0_mirror, align 4
  %95 = call i32 @cvmx_write_csr(i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %85, %72
  br label %97

97:                                               ; preds = %96, %54
  br label %98

98:                                               ; preds = %97, %24
  br label %99

99:                                               ; preds = %98, %46
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @cvmx_interrupt_restore(i32 %100)
  br label %102

102:                                              ; preds = %99, %18
  ret void
}

declare dso_local i32 @cvmx_interrupt_disable_save(...) #1

declare dso_local i32 @CLEAR_OR_MASK(i32, i64, i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU_EN2_PPX_IP2(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @cvmx_interrupt_restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1109}
!3 = !{i32 1219}
