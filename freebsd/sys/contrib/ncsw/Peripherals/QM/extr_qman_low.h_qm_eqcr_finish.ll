; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_eqcr_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_eqcr_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.qm_eqcr }
%struct.qm_eqcr = type { i64, i32, i32 }

@EQCR_PI_CINH = common dso_local global i32 0, align 4
@QM_EQCR_SIZE = common dso_local global i32 0, align 4
@EQCR_CI_CINH = common dso_local global i32 0, align 4
@WARNING = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"losing uncommitted EQCR entries\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"missing existing EQCR completions\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"EQCR destroyed unquiesced\00", align 1
@QM_BIND_EQCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qm_portal*)* @qm_eqcr_finish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qm_eqcr_finish(%struct.qm_portal* %0) #0 {
  %2 = alloca %struct.qm_portal*, align 8
  %3 = alloca %struct.qm_eqcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %2, align 8
  %6 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %6, i32 0, i32 0
  store %struct.qm_eqcr* %7, %struct.qm_eqcr** %3, align 8
  %8 = load i32, i32* @EQCR_PI_CINH, align 4
  %9 = call i32 @qm_in(i32 %8)
  %10 = load i32, i32* @QM_EQCR_SIZE, align 4
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %9, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %4, align 8
  %14 = load i32, i32* @EQCR_CI_CINH, align 4
  %15 = call i32 @qm_in(i32 %14)
  %16 = load i32, i32* @QM_EQCR_SIZE, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %15, %17
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %22 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @EQCR_PTR2IDX(i32 %23)
  %25 = icmp ne i64 %20, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i32, i32* @WARNING, align 4
  %28 = load i32, i32* @E_INVALID_STATE, align 4
  %29 = call i32 @REPORT_ERROR(i32 %27, i32 %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i64, i64* %5, align 8
  %32 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %33 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @WARNING, align 4
  %38 = load i32, i32* @E_INVALID_STATE, align 4
  %39 = call i32 @REPORT_ERROR(i32 %37, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %42 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qm_eqcr*, %struct.qm_eqcr** %3, align 8
  %45 = getelementptr inbounds %struct.qm_eqcr, %struct.qm_eqcr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @EQCR_PTR2IDX(i32 %46)
  %48 = icmp ne i64 %43, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @WARNING, align 4
  %51 = load i32, i32* @E_INVALID_STATE, align 4
  %52 = call i32 @REPORT_ERROR(i32 %50, i32 %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %49, %40
  %54 = load %struct.qm_portal*, %struct.qm_portal** %2, align 8
  %55 = load i32, i32* @QM_BIND_EQCR, align 4
  %56 = call i32 @__qm_portal_unbind(%struct.qm_portal* %54, i32 %55)
  ret void
}

declare dso_local i32 @qm_in(i32) #1

declare dso_local i64 @EQCR_PTR2IDX(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @__qm_portal_unbind(%struct.qm_portal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
