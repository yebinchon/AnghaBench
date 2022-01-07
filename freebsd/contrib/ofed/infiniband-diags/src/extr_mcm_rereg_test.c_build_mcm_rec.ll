; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_build_mcm_rec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/infiniband-diags/src/extr_mcm_rereg_test.c_build_mcm_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IB_SA_DATA_SIZE = common dso_local global i32 0, align 4
@IB_SA_MCM_MGID_F = common dso_local global i32 0, align 4
@IB_SA_MCM_PORTGID_F = common dso_local global i32 0, align 4
@IB_SA_MCM_JOIN_STATE_F = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_MGID = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_PORT_GID = common dso_local global i32 0, align 4
@IB_MCR_COMPMASK_JOIN_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @build_mcm_rec(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @IB_SA_DATA_SIZE, align 4
  %9 = call i32 @memset(i32* %7, i32 0, i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @IB_SA_MCM_MGID_F, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @mad_set_array(i32* %10, i32 0, i32 %11, i32 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @IB_SA_MCM_PORTGID_F, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @mad_set_array(i32* %14, i32 0, i32 %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @IB_SA_MCM_JOIN_STATE_F, align 4
  %20 = call i32 @mad_set_field(i32* %18, i32 0, i32 %19, i32 1)
  %21 = load i32, i32* @IB_MCR_COMPMASK_MGID, align 4
  %22 = load i32, i32* @IB_MCR_COMPMASK_PORT_GID, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @IB_MCR_COMPMASK_JOIN_STATE, align 4
  %25 = or i32 %23, %24
  ret i32 %25
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @mad_set_array(i32*, i32, i32, i32) #1

declare dso_local i32 @mad_set_field(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
