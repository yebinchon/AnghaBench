; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_invalidate_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_invalidate_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_lun = type { i64 }
%struct.ctl_lun = type { i32, i32, i32 }

@CTL_LUN_DISABLED = common dso_local global i32 0, align 4
@CTL_LUN_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_invalidate_lun(%struct.ctl_be_lun* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  store %struct.ctl_be_lun* %0, %struct.ctl_be_lun** %3, align 8
  %5 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %6 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ctl_lun*
  store %struct.ctl_lun* %8, %struct.ctl_lun** %4, align 8
  %9 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %10 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %13 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CTL_LUN_DISABLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %20 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %19, i32 0, i32 1
  %21 = call i32 @mtx_unlock(i32* %20)
  store i32 -1, i32* %2, align 4
  br label %43

22:                                               ; preds = %1
  %23 = load i32, i32* @CTL_LUN_INVALID, align 4
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %25 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %28, i32 0, i32 2
  %30 = call i64 @TAILQ_EMPTY(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %34 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %33, i32 0, i32 1
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %37 = call i32 @ctl_free_lun(%struct.ctl_lun* %36)
  br label %42

38:                                               ; preds = %22
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 1
  %41 = call i32 @mtx_unlock(i32* %40)
  br label %42

42:                                               ; preds = %38, %32
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @ctl_free_lun(%struct.ctl_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
