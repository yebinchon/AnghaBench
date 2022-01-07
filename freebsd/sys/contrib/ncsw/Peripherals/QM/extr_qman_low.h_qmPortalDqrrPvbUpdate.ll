; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPvbUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalDqrrPvbUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_dqrr }
%struct.qm_dqrr = type { i32, i64, i32, i32, i32 }
%struct.qm_dqrr_entry = type { i32 }

@QM_DQRR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_DQRR_SIZE = common dso_local global i32 0, align 4
@e_QmPortalPVB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*)* @qmPortalDqrrPvbUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmPortalDqrrPvbUpdate(%struct.qm_portal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_dqrr*, align 8
  %5 = alloca %struct.qm_dqrr_entry*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_dqrr* %7, %struct.qm_dqrr** %4, align 8
  %8 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %9 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %12 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @qm_cl(i32 %13)
  %15 = call %struct.qm_dqrr_entry* @ptr_ADD(i32 %10, i32 %14)
  store %struct.qm_dqrr_entry* %15, %struct.qm_dqrr_entry** %5, align 8
  %16 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %5, align 8
  %17 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QM_DQRR_VERB_VBIT, align 4
  %20 = and i32 %18, %19
  %21 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %22 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %1
  %26 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %27 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = load i32, i32* @QM_DQRR_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %34 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %36 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %25
  %40 = load i32, i32* @QM_DQRR_VERB_VBIT, align 4
  %41 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %42 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = xor i32 %43, %40
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %39, %25
  %46 = load %struct.qm_dqrr*, %struct.qm_dqrr** %4, align 8
  %47 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  store i32 1, i32* %2, align 4
  br label %51

50:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.qm_dqrr_entry* @ptr_ADD(i32, i32) #1

declare dso_local i32 @qm_cl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
