; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_mc_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/BM/extr_bman_low.c_bm_mc_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bm_portal = type { %struct.bm_mc }
%struct.bm_mc = type { i64, i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@mc_user = common dso_local global i64 0, align 8
@mc_hw = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bm_mc_commit(%struct.bm_portal* %0, i32 %1) #0 {
  %3 = alloca %struct.bm_portal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bm_mc*, align 8
  store %struct.bm_portal* %0, %struct.bm_portal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bm_portal*, %struct.bm_portal** %3, align 8
  %7 = getelementptr inbounds %struct.bm_portal, %struct.bm_portal* %6, i32 0, i32 0
  store %struct.bm_mc* %7, %struct.bm_mc** %5, align 8
  %8 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %9 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @mc_user, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT_COND(i32 %13)
  %15 = call i32 (...) @rmb()
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %18 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %16, %19
  %21 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %22 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %20, i32* %24, align 4
  %25 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %26 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @dcbf_64(%struct.TYPE_2__* %27)
  %29 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %30 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bm_mc*, %struct.bm_mc** %5, align 8
  %33 = getelementptr inbounds %struct.bm_mc, %struct.bm_mc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = call i32 @dcbit_ro(i64 %35)
  ret void
}

declare dso_local i32 @ASSERT_COND(i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @dcbf_64(%struct.TYPE_2__*) #1

declare dso_local i32 @dcbit_ro(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
