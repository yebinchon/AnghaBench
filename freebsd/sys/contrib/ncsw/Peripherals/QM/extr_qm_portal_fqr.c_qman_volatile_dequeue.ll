; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_volatile_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_qman_volatile_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.qman_fq = type { i64, i32, i32 }

@qman_fq_state_parked = common dso_local global i64 0, align 8
@qman_fq_state_retired = common dso_local global i64 0, align 8
@QM_VDQCR_FQID_MASK = common dso_local global i32 0, align 4
@QMAN_FQ_STATE_VDQCR = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, %struct.qman_fq*, i32)* @qman_volatile_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qman_volatile_dequeue(%struct.TYPE_5__* %0, %struct.qman_fq* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %8 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @qman_fq_state_parked, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %14 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @qman_fq_state_retired, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %12, %3
  %19 = phi i1 [ true, %3 ], [ %17, %12 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT_COND(i32 %20)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @QM_VDQCR_FQID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT_COND(i32 %27)
  %29 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %30 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT_COND(i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @QM_VDQCR_FQID_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %43 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %41, %44
  store i32 %45, i32* %6, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %47 = call i32 @NCSW_PLOCK(%struct.TYPE_5__* %46)
  %48 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %49 = call i32 @FQLOCK(%struct.qman_fq* %48)
  %50 = load i32, i32* @QMAN_FQ_STATE_VDQCR, align 4
  %51 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %52 = getelementptr inbounds %struct.qman_fq, %struct.qman_fq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @qm_dqrr_vdqcr_set(i32 %57, i32 %58)
  %60 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %61 = call i32 @FQUNLOCK(%struct.qman_fq* %60)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = call i32 @PUNLOCK(%struct.TYPE_5__* %62)
  %64 = load i32, i32* @E_OK, align 4
  ret i32 %64
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @FQLOCK(%struct.qman_fq*) #1

declare dso_local i32 @qm_dqrr_vdqcr_set(i32, i32) #1

declare dso_local i32 @FQUNLOCK(%struct.qman_fq*) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
