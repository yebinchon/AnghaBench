; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_null_cb_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_null_cb_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type { i32 }
%struct.qm_mr_entry = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@QM_MR_VERB_DC_ERN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Ignoring unowned MR frame on cpu %d, dc-portal 0x%02x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"Ignoring unowned MR frame on cpu %d, verb 0x%02x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_fq*, %struct.qman_fq*, %struct.qman_fq*, %struct.qm_mr_entry*)* @null_cb_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_cb_mr(%struct.qman_fq* %0, %struct.qman_fq* %1, %struct.qman_fq* %2, %struct.qm_mr_entry* %3) #0 {
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca %struct.qm_mr_entry*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.qman_fq* %0, %struct.qman_fq** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %struct.qman_fq* %2, %struct.qman_fq** %7, align 8
  store %struct.qm_mr_entry* %3, %struct.qm_mr_entry** %8, align 8
  %10 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %11 = bitcast %struct.qman_fq* %10 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %9, align 8
  %12 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %13 = call i32 @UNUSED(%struct.qman_fq* %12)
  %14 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %15 = call i32 @UNUSED(%struct.qman_fq* %14)
  %16 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %8, align 8
  %17 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @QM_MR_VERB_DC_ERN, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @QM_MR_VERB_DC_ERN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %8, align 8
  %31 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @XX_Print(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33)
  br label %46

35:                                               ; preds = %4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %8, align 8
  %43 = getelementptr inbounds %struct.qm_mr_entry, %struct.qm_mr_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @XX_Print(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %35, %23
  ret void
}

declare dso_local i32 @UNUSED(%struct.qman_fq*) #1

declare dso_local i32 @XX_Print(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
