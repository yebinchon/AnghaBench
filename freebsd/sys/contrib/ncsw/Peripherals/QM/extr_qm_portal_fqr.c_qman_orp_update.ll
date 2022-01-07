; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_orp_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_orp_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.qm_eqcr_entry = type { i32, i32 }

@E_BUSY = common dso_local global i32 0, align 4
@QMAN_ENQUEUE_FLAG_NESN = common dso_local global i32 0, align 4
@QM_EQCR_SEQNUM_NESN = common dso_local global i32 0, align 4
@QM_EQCR_VERB_ORP = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32)* @qman_orp_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_orp_update(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qm_eqcr_entry*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = call i32 @NCSW_PLOCK(%struct.TYPE_6__* %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %14 = call %struct.qm_eqcr_entry* @try_eq_start(%struct.TYPE_6__* %13)
  store %struct.qm_eqcr_entry* %14, %struct.qm_eqcr_entry** %10, align 8
  %15 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %10, align 8
  %16 = icmp ne %struct.qm_eqcr_entry* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %19 = call i32 @PUNLOCK(%struct.TYPE_6__* %18)
  %20 = load i32, i32* @E_BUSY, align 4
  %21 = call i32 @ERROR_CODE(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @QMAN_ENQUEUE_FLAG_NESN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @QM_EQCR_SEQNUM_NESN, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %22
  %32 = load i32, i32* @QM_EQCR_SEQNUM_NESN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %10, align 8
  %39 = getelementptr inbounds %struct.qm_eqcr_entry, %struct.qm_eqcr_entry* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.qm_eqcr_entry*, %struct.qm_eqcr_entry** %10, align 8
  %42 = getelementptr inbounds %struct.qm_eqcr_entry, %struct.qm_eqcr_entry* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* @QM_EQCR_VERB_ORP, align 8
  %47 = trunc i64 %46 to i32
  %48 = call i32 @qmPortalEqcrPvbCommit(i32 %45, i32 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = call i32 @PUNLOCK(%struct.TYPE_6__* %49)
  %51 = load i32, i32* @E_OK, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %36, %17
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_6__*) #1

declare dso_local %struct.qm_eqcr_entry* @try_eq_start(%struct.TYPE_6__*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_6__*) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @qmPortalEqcrPvbCommit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
