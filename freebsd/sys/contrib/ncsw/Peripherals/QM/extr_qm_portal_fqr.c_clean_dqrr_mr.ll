; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_clean_dqrr_mr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_clean_dqrr_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.qm_dqrr_entry = type { i32 }
%struct.qm_mr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @clean_dqrr_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_dqrr_mr(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.qm_dqrr_entry*, align 8
  %4 = alloca %struct.qm_mr_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @qm_dqrr_sdqcr_set(i32 %8, i32 0)
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @qm_dqrr_vdqcr_set(i32 %12, i32 0)
  br label %14

14:                                               ; preds = %71, %68, %1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @qmPortalDqrrPvbPrefetch(i32 %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @qmPortalDqrrPvbUpdate(i32 %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @qmPortalMrPvbUpdate(i32 %25)
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.qm_dqrr_entry* @qm_dqrr_current(i32 %29)
  store %struct.qm_dqrr_entry* %30, %struct.qm_dqrr_entry** %3, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.qm_mr_entry* @qm_mr_current(i32 %33)
  store %struct.qm_mr_entry* %34, %struct.qm_mr_entry** %4, align 8
  %35 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %36 = icmp ne %struct.qm_dqrr_entry* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %14
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @qm_dqrr_next(i32 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qmPortalDqrrCciConsume(i32 %44, i32 1)
  br label %46

46:                                               ; preds = %37, %14
  %47 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %4, align 8
  %48 = icmp ne %struct.qm_mr_entry* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @qm_mr_next(i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qmPortalMrCciConsume(i32 %56, i32 1)
  br label %58

58:                                               ; preds = %49, %46
  %59 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %3, align 8
  %60 = icmp ne %struct.qm_dqrr_entry* %59, null
  br i1 %60, label %71, label %61

61:                                               ; preds = %58
  %62 = load %struct.qm_mr_entry*, %struct.qm_mr_entry** %4, align 8
  %63 = icmp ne %struct.qm_mr_entry* %62, null
  br i1 %63, label %71, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  %67 = icmp slt i32 %66, 5
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = call i32 @XX_UDelay(i32 1000)
  br label %14

70:                                               ; preds = %64
  br label %72

71:                                               ; preds = %61, %58
  store i32 0, i32* %5, align 4
  br label %14

72:                                               ; preds = %70
  ret void
}

declare dso_local i32 @qm_dqrr_sdqcr_set(i32, i32) #1

declare dso_local i32 @qm_dqrr_vdqcr_set(i32, i32) #1

declare dso_local i32 @qmPortalDqrrPvbPrefetch(i32) #1

declare dso_local i32 @qmPortalDqrrPvbUpdate(i32) #1

declare dso_local i32 @qmPortalMrPvbUpdate(i32) #1

declare dso_local %struct.qm_dqrr_entry* @qm_dqrr_current(i32) #1

declare dso_local %struct.qm_mr_entry* @qm_mr_current(i32) #1

declare dso_local i32 @qm_dqrr_next(i32) #1

declare dso_local i32 @qmPortalDqrrCciConsume(i32, i32) #1

declare dso_local i32 @qm_mr_next(i32) #1

declare dso_local i32 @qmPortalMrCciConsume(i32, i32) #1

declare dso_local i32 @XX_UDelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
