; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_mc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.TYPE_3__, %struct.qm_mc }
%struct.TYPE_3__ = type { i32 }
%struct.qm_mc = type { i32, i8*, i8*, %struct.TYPE_4__*, i8* }
%struct.TYPE_4__ = type { i32 }

@QM_BIND_MC = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@CL_CR = common dso_local global i32 0, align 4
@CL_RR0 = common dso_local global i32 0, align 4
@QM_MCC_VERB_VBIT = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@mc_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*)* @qm_mc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_mc_init(%struct.qm_portal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qm_portal*, align 8
  %4 = alloca %struct.qm_mc*, align 8
  store %struct.qm_portal* %0, %struct.qm_portal** %3, align 8
  %5 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %6 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %5, i32 0, i32 1
  store %struct.qm_mc* %6, %struct.qm_mc** %4, align 8
  %7 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %8 = load i32, i32* @QM_BIND_MC, align 4
  %9 = call i64 @__qm_portal_bind(%struct.qm_portal* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @E_BUSY, align 4
  %13 = call i32 @ERROR_CODE(i32 %12)
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %16 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CL_CR, align 4
  %20 = call i8* @ptr_ADD(i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.TYPE_4__*
  %22 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %23 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %22, i32 0, i32 3
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.qm_portal*, %struct.qm_portal** %3, align 8
  %25 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @CL_RR0, align 4
  %29 = call i8* @ptr_ADD(i32 %27, i32 %28)
  %30 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %31 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  %32 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %33 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @QM_MCC_VERB_VBIT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 0, i32 1
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %45 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %47 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %14
  %51 = load i32, i32* @QM_MCC_VERB_VBIT, align 4
  br label %53

52:                                               ; preds = %14
  br label %53

53:                                               ; preds = %52, %50
  %54 = phi i32 [ %51, %50 ], [ 0, %52 ]
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.qm_mc*, %struct.qm_mc** %4, align 8
  %58 = getelementptr inbounds %struct.qm_mc, %struct.qm_mc* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @E_OK, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %53, %11
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @__qm_portal_bind(%struct.qm_portal*, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i8* @ptr_ADD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
