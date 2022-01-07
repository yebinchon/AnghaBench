; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_cb_ern_dcErn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_cb_ern_dcErn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_fq = type opaque
%struct.qm_mr_entry = type opaque

@cb_ern_dcErn.cnt = internal global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cb_ern_dcErn_fqs() unimplemented %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qman_fq*, %struct.qman_fq*, %struct.qman_fq*, %struct.qm_mr_entry*)* @cb_ern_dcErn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb_ern_dcErn(%struct.qman_fq* %0, %struct.qman_fq* %1, %struct.qman_fq* %2, %struct.qm_mr_entry* %3) #0 {
  %5 = alloca %struct.qman_fq*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %struct.qman_fq*, align 8
  %8 = alloca %struct.qm_mr_entry*, align 8
  store %struct.qman_fq* %0, %struct.qman_fq** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %struct.qman_fq* %2, %struct.qman_fq** %7, align 8
  store %struct.qm_mr_entry* %3, %struct.qm_mr_entry** %8, align 8
  %9 = load %struct.qman_fq*, %struct.qman_fq** %7, align 8
  %10 = call i32 @UNUSED(%struct.qman_fq* %9)
  %11 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %8, align 8
  %12 = bitcast %struct.qm_mr_entry* %11 to %struct.qman_fq*
  %13 = call i32 @UNUSED(%struct.qman_fq* %12)
  %14 = load %struct.qman_fq*, %struct.qman_fq** %5, align 8
  %15 = call i32 @UNUSED(%struct.qman_fq* %14)
  %16 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %17 = call i32 @UNUSED(%struct.qman_fq* %16)
  %18 = load i32, i32* @cb_ern_dcErn.cnt, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @cb_ern_dcErn.cnt, align 4
  %20 = call i32 @XX_Print(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19)
  ret void
}

declare dso_local i32 @UNUSED(%struct.qman_fq*) #1

declare dso_local i32 @XX_Print(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
