; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_pce_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_pce_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@e_BmPortalPCE = common dso_local global i64 0, align 8
@RCR_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bm_rcr_pce_commit(%struct.bm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm_rcr*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_rcr* %7, %struct.bm_rcr** %5, align 8
  %8 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %9 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ASSERT_COND(i32 %10)
  %12 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %13 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e_BmPortalPCE, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @ASSERT_COND(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %21 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %19, %22
  %24 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %25 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %29 = call i32 @RCR_INC(%struct.bm_rcr* %28)
  %30 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %31 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %31, align 8
  %34 = call i32 (...) @wmb()
  %35 = load i32, i32* @RCR_PI, align 4
  %36 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %37 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = call i32 @RCR_PTR2IDX(%struct.TYPE_2__* %38)
  %40 = call i32 @bm_cl_out(i32 %35, i32 %39)
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @RCR_INC(%struct.bm_rcr*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @bm_cl_out(i32, i32) #1

declare dso_local i32 @RCR_PTR2IDX(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
