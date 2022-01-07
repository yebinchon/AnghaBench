; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalMrPvbUpdate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qmPortalMrPvbUpdate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_mr }
%struct.qm_mr = type { i32, i64, i32, i32, i32 }
%struct.qm_mr_entry = type { i32 }

@QM_MR_VERB_VBIT = common dso_local global i32 0, align 4
@QM_MR_SIZE = common dso_local global i32 0, align 4
@e_QmPortalPVB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qmPortalMrPvbUpdate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmPortalMrPvbUpdate(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_mr*, align 8
  %4 = alloca %struct.qm_mr_entry*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 0
  store %struct.qm_mr* %6, %struct.qm_mr** %3, align 8
  %7 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %8 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %11 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @qm_cl(i32 %12)
  %14 = call %struct.qm_mr_entry* @ptr_ADD(i32 %9, i32 %13)
  store %struct.qm_mr_entry* %14, %struct.qm_mr_entry** %4, align 8
  %15 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %16 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %19 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @qm_cl(i32 %20)
  %22 = call %struct.qm_mr_entry* @ptr_ADD(i32 %17, i32 %21)
  %23 = call i32 @dcbit_ro(%struct.qm_mr_entry* %22)
  %24 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %4, align 8
  %25 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @QM_MR_VERB_VBIT, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %30 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %1
  %34 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %35 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @QM_MR_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  %41 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %42 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %44 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %33
  %48 = load i32, i32* @QM_MR_VERB_VBIT, align 4
  %49 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %50 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = xor i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %33
  %54 = load %struct.qm_mr*, %struct.qm_mr** %3, align 8
  %55 = getelementptr inbounds %struct.qm_mr, %struct.qm_mr* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %53, %1
  ret void
}

declare dso_local %struct.qm_mr_entry* @ptr_ADD(i32, i32) #1

declare dso_local i32 @qm_cl(i32) #1

declare dso_local i32 @dcbit_ro(%struct.qm_mr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
