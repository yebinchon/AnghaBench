; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_cci_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_cci_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i64, i32, i64 }

@e_BmPortalRcrCCI = common dso_local global i64 0, align 8
@RCR_CI_CINH = common dso_local global i32 0, align 4
@BM_RCR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bm_rcr_cci_update(%struct.bm_portal* %0) #0 {
  %2 = alloca %struct.bm_portal*, align 8
  %3 = alloca %struct.bm_rcr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %2, align 8
  %6 = load %struct.bm_portal*, %struct.bm_portal** %2, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_rcr* %7, %struct.bm_rcr** %3, align 8
  %8 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %9 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %12 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @e_BmPortalRcrCCI, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT_COND(i32 %16)
  %18 = load i32, i32* @RCR_CI_CINH, align 4
  %19 = call i32 @bm_in(i32 %18)
  %20 = load i32, i32* @BM_RCR_SIZE, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = sext i32 %22 to i64
  %24 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %25 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %24, i32 0, i32 2
  store i64 %23, i64* %25, align 8
  %26 = load i32, i32* @BM_RCR_SIZE, align 4
  %27 = load i64, i64* %5, align 8
  %28 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %29 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @cyc_diff(i32 %26, i64 %27, i64 %30)
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load %struct.bm_rcr*, %struct.bm_rcr** %3, align 8
  %34 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %36, %32
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %34, align 8
  %39 = load i64, i64* %4, align 8
  ret i64 %39
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @bm_in(i32) #1

declare dso_local i64 @cyc_diff(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
