; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_fq_state_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_fq_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32, i32 }
%struct.qm_mr_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QMAN_FQ_STATE_ORL = common dso_local global i32 0, align 4
@qman_fq_state_parked = common dso_local global i32 0, align 4
@qman_fq_state_sched = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_CHANGING = common dso_local global i32 0, align 4
@QM_MR_FQS_NOTEMPTY = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_NE = common dso_local global i32 0, align 4
@QM_MR_FQS_ORLPRESENT = common dso_local global i32 0, align 4
@qman_fq_state_retired = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_fq*, %struct.qm_mr_entry*, i32)* @fq_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_state_change(%struct.qman_fq* %0, %struct.qm_mr_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.qman_fq*, align 8
  %5 = alloca %struct.qm_mr_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.qman_fq* %0, %struct.qman_fq** %4, align 8
  store %struct.qm_mr_entry* %1, %struct.qm_mr_entry** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %8 = call i32 @FQLOCK(%struct.qman_fq* %7)
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %99 [
    i32 129, label %10
    i32 128, label %23
    i32 130, label %82
  ]

10:                                               ; preds = %3
  %11 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %12 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %15 = and i32 %13, %14
  %16 = call i32 @ASSERT_COND(i32 %15)
  %17 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %20 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %99

23:                                               ; preds = %3
  %24 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %25 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @qman_fq_state_parked, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %31 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @qman_fq_state_sched, align 4
  %34 = icmp eq i32 %32, %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ true, %23 ], [ %34, %29 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT_COND(i32 %37)
  %39 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %40 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @ASSERT_COND(i32 %43)
  %45 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %48 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %5, align 8
  %52 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @QM_MR_FQS_NOTEMPTY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %35
  %59 = load i32, i32* @QMAN_FQ_STATE_NE, align 4
  %60 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %61 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %58, %35
  %65 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %5, align 8
  %66 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @QM_MR_FQS_ORLPRESENT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32, i32* @QMAN_FQ_STATE_ORL, align 4
  %74 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %75 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %64
  %79 = load i32, i32* @qman_fq_state_retired, align 4
  %80 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %81 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %99

82:                                               ; preds = %3
  %83 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %84 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @qman_fq_state_sched, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT_COND(i32 %88)
  %90 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %91 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @QMAN_FQ_STATE_CHANGING, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @ASSERT_COND(i32 %94)
  %96 = load i32, i32* @qman_fq_state_parked, align 4
  %97 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %98 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %82, %3, %78, %10
  %100 = load %struct.qman_fq*, %struct.qman_fq** %4, align 8
  %101 = call i32 @FQUNLOCK(%struct.qman_fq* %100)
  ret void
}

declare dso_local i32 @FQLOCK(%struct.qman_fq*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @FQUNLOCK(%struct.qman_fq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
