; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_pvb_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_rcr_pvb_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_rcr }
%struct.bm_rcr = type { i32, i64, i32, i32, %struct.bm_rcr_entry* }
%struct.bm_rcr_entry = type { i32 }

@e_BmPortalPVB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bm_rcr_pvb_commit(%struct.bm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm_rcr*, align 8
  %6 = alloca %struct.bm_rcr_entry*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %8 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %7, i32 0, i32 0
  store %struct.bm_rcr* %8, %struct.bm_rcr** %5, align 8
  %9 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %10 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ASSERT_COND(i32 %11)
  %13 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %14 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e_BmPortalPVB, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT_COND(i32 %18)
  %20 = call i32 (...) @rmb()
  %21 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %22 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %21, i32 0, i32 4
  %23 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %22, align 8
  store %struct.bm_rcr_entry* %23, %struct.bm_rcr_entry** %6, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %26 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %24, %27
  %29 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %6, align 8
  %30 = getelementptr inbounds %struct.bm_rcr_entry, %struct.bm_rcr_entry* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bm_rcr_entry*, %struct.bm_rcr_entry** %6, align 8
  %32 = call i32 @dcbf_64(%struct.bm_rcr_entry* %31)
  %33 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %34 = call i32 @RCR_INC(%struct.bm_rcr* %33)
  %35 = load %struct.bm_rcr*, %struct.bm_rcr** %5, align 8
  %36 = getelementptr inbounds %struct.bm_rcr, %struct.bm_rcr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dcbf_64(%struct.bm_rcr_entry*) #1

declare dso_local i32 @RCR_INC(%struct.bm_rcr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
