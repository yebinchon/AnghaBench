; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_dqrr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qman_low.h_qm_dqrr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qm_portal = type { %struct.TYPE_2__, %struct.qm_portal_config, %struct.qm_dqrr }
%struct.TYPE_2__ = type { i32 }
%struct.qm_portal_config = type { i32 }
%struct.qm_dqrr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QM_BIND_DQRR = common dso_local global i32 0, align 4
@E_BUSY = common dso_local global i32 0, align 4
@E_INVALID_STATE = common dso_local global i32 0, align 4
@DQRR_SDQCR = common dso_local global i32 0, align 4
@DQRR_VDQCR = common dso_local global i32 0, align 4
@DQRR_PDQCR = common dso_local global i32 0, align 4
@CL_DQRR = common dso_local global i32 0, align 4
@DQRR_PI_CINH = common dso_local global i32 0, align 4
@QM_DQRR_SIZE = common dso_local global i32 0, align 4
@DQRR_CI_CINH = common dso_local global i32 0, align 4
@QM_DQRR_VERB_VBIT = common dso_local global i64 0, align 8
@DQRR_ITR = common dso_local global i32 0, align 4
@CFG = common dso_local global i32 0, align 4
@E_OK = common dso_local global i32 0, align 4
@QM_DQRR_FLAG_RE = common dso_local global i32 0, align 4
@QM_DQRR_FLAG_SE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qm_portal*, i32, i32, i32, i32, i32, i32)* @qm_dqrr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qm_dqrr_init(%struct.qm_portal* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qm_portal*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.qm_dqrr*, align 8
  %17 = alloca %struct.qm_portal_config*, align 8
  %18 = alloca i32, align 4
  store %struct.qm_portal* %0, %struct.qm_portal** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load %struct.qm_portal*, %struct.qm_portal** %9, align 8
  %20 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %19, i32 0, i32 2
  store %struct.qm_dqrr* %20, %struct.qm_dqrr** %16, align 8
  %21 = load %struct.qm_portal*, %struct.qm_portal** %9, align 8
  %22 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %21, i32 0, i32 1
  store %struct.qm_portal_config* %22, %struct.qm_portal_config** %17, align 8
  %23 = load %struct.qm_portal*, %struct.qm_portal** %9, align 8
  %24 = load i32, i32* @QM_BIND_DQRR, align 4
  %25 = call i64 @__qm_portal_bind(%struct.qm_portal* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @E_BUSY, align 4
  %29 = call i32 @ERROR_CODE(i32 %28)
  store i32 %29, i32* %8, align 4
  br label %142

30:                                               ; preds = %7
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %33, %30
  %37 = load %struct.qm_portal_config*, %struct.qm_portal_config** %17, align 8
  %38 = getelementptr inbounds %struct.qm_portal_config, %struct.qm_portal_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* @E_INVALID_STATE, align 4
  %43 = call i32 @ERROR_CODE(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %142

44:                                               ; preds = %36, %33
  %45 = load i32, i32* @DQRR_SDQCR, align 4
  %46 = call i32 @qm_out(i32 %45, i32 0)
  %47 = load i32, i32* @DQRR_VDQCR, align 4
  %48 = call i32 @qm_out(i32 %47, i32 0)
  %49 = load i32, i32* @DQRR_PDQCR, align 4
  %50 = call i32 @qm_out(i32 %49, i32 0)
  %51 = load %struct.qm_portal*, %struct.qm_portal** %9, align 8
  %52 = getelementptr inbounds %struct.qm_portal, %struct.qm_portal* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CL_DQRR, align 4
  %56 = call i32 @ptr_ADD(i32 %54, i32 %55)
  %57 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %58 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @DQRR_PI_CINH, align 4
  %60 = call i32 @qm_in(i32 %59)
  %61 = load i32, i32* @QM_DQRR_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %65 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @DQRR_CI_CINH, align 4
  %67 = call i32 @qm_in(i32 %66)
  %68 = load i32, i32* @QM_DQRR_SIZE, align 4
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %67, %69
  %71 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %72 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  %73 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %74 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %77 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %75, %78
  %80 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %81 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @QM_DQRR_SIZE, align 4
  %83 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %84 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %87 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cyc_diff(i32 %82, i32 %85, i32 %88)
  %90 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %91 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @DQRR_PI_CINH, align 4
  %93 = call i32 @qm_in(i32 %92)
  %94 = load i32, i32* @QM_DQRR_SIZE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %44
  %98 = load i64, i64* @QM_DQRR_VERB_VBIT, align 8
  br label %100

99:                                               ; preds = %44
  br label %100

100:                                              ; preds = %99, %97
  %101 = phi i64 [ %98, %97 ], [ 0, %99 ]
  %102 = trunc i64 %101 to i32
  %103 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %104 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %103, i32 0, i32 4
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* @DQRR_ITR, align 4
  %106 = call i32 @qm_in(i32 %105)
  %107 = load %struct.qm_dqrr*, %struct.qm_dqrr** %16, align 8
  %108 = getelementptr inbounds %struct.qm_dqrr, %struct.qm_dqrr* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @UNUSED(i32 %109)
  %111 = load i32, i32* @CFG, align 4
  %112 = call i32 @qm_in(i32 %111)
  %113 = and i32 %112, -16773376
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @QM_DQRR_SIZE, align 4
  %116 = sub nsw i32 %115, 1
  %117 = and i32 %114, %116
  %118 = shl i32 %117, 20
  %119 = or i32 %113, %118
  %120 = load i32, i32* %10, align 4
  %121 = and i32 %120, 1
  %122 = shl i32 %121, 18
  %123 = or i32 %119, %122
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, 3
  %126 = shl i32 %125, 16
  %127 = or i32 %123, %126
  %128 = load i32, i32* %14, align 4
  %129 = icmp ne i32 %128, 0
  %130 = zext i1 %129 to i64
  %131 = select i1 %129, i32 128, i32 0
  %132 = or i32 %127, %131
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 32, i32 0
  %137 = or i32 %132, %136
  store i32 %137, i32* %18, align 4
  %138 = load i32, i32* @CFG, align 4
  %139 = load i32, i32* %18, align 4
  %140 = call i32 @qm_out(i32 %138, i32 %139)
  %141 = load i32, i32* @E_OK, align 4
  store i32 %141, i32* %8, align 4
  br label %142

142:                                              ; preds = %100, %41, %27
  %143 = load i32, i32* %8, align 4
  ret i32 %143
}

declare dso_local i64 @__qm_portal_bind(%struct.qm_portal*, i32) #1

declare dso_local i32 @ERROR_CODE(i32) #1

declare dso_local i32 @qm_out(i32, i32) #1

declare dso_local i32 @ptr_ADD(i32, i32) #1

declare dso_local i32 @qm_in(i32) #1

declare dso_local i32 @cyc_diff(i32, i32, i32) #1

declare dso_local i32 @UNUSED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
