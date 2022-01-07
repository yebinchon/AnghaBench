; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_claim_log_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_claim_log_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@zil_claim = common dso_local global i32 0, align 4
@DS_FIND_CHILDREN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@SPA_LOG_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @spa_ld_claim_log_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_ld_claim_log_blocks(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = call %struct.TYPE_11__* @spa_get_dsl(%struct.TYPE_10__* %5)
  store %struct.TYPE_11__* %6, %struct.TYPE_11__** %4, align 8
  %7 = load i32, i32* @B_TRUE, align 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = call i32 @spa_first_txg(%struct.TYPE_10__* %11)
  %13 = call i32* @dmu_tx_create_assigned(%struct.TYPE_11__* %10, i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @zil_claim, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @DS_FIND_CHILDREN, align 4
  %21 = call i32 @dmu_objset_find_dp(%struct.TYPE_11__* %14, i32 %17, i32 %18, i32* %19, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @dmu_tx_commit(i32* %22)
  %24 = load i32, i32* @B_FALSE, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %28 = load i32, i32* @SPA_LOG_GOOD, align 4
  %29 = call i32 @spa_set_log_state(%struct.TYPE_10__* %27, i32 %28)
  ret void
}

declare dso_local %struct.TYPE_11__* @spa_get_dsl(%struct.TYPE_10__*) #1

declare dso_local i32* @dmu_tx_create_assigned(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @spa_first_txg(%struct.TYPE_10__*) #1

declare dso_local i32 @dmu_objset_find_dp(%struct.TYPE_11__*, i32, i32, i32*, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @spa_set_log_state(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
