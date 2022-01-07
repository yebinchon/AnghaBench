; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_psci_bp_hardening.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_cpu_errata.c_install_psci_bp_hardening.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMCCC_ARCH_WORKAROUND_1 = common dso_local global i32 0, align 4
@SMCCC_RET_SUCCESS = common dso_local global i64 0, align 8
@bp_harden = common dso_local global i32 0, align 4
@smccc_arch_workaround_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @install_psci_bp_hardening to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @install_psci_bp_hardening() #0 {
  %1 = load i32, i32* @SMCCC_ARCH_WORKAROUND_1, align 4
  %2 = call i64 @smccc_arch_features(i32 %1)
  %3 = load i64, i64* @SMCCC_RET_SUCCESS, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %10

6:                                                ; preds = %0
  %7 = load i32, i32* @bp_harden, align 4
  %8 = load i32, i32* @smccc_arch_workaround_1, align 4
  %9 = call i32 @PCPU_SET(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

declare dso_local i64 @smccc_arch_features(i32) #1

declare dso_local i32 @PCPU_SET(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
