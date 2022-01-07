; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_Poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/QM/extr_qm_portal_fqr.c_QM_PORTAL_Poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (i64)*, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@e_QM_PORTAL_POLL_SOURCE_CONTROL_FRAMES = common dso_local global i64 0, align 8
@e_QM_PORTAL_POLL_SOURCE_BOTH = common dso_local global i64 0, align 8
@e_QM_PORTAL_POLL_SOURCE_DATA_FRAMES = common dso_local global i64 0, align 8
@E_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @QM_PORTAL_Poll(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = inttoptr i64 %8 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %9, %struct.TYPE_6__** %5, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_6__* %10, i32 %11)
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = call i32 @NCSW_PLOCK(%struct.TYPE_6__* %13)
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @e_QM_PORTAL_POLL_SOURCE_CONTROL_FRAMES, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @e_QM_PORTAL_POLL_SOURCE_BOTH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %18, %2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @qm_isr_status_read(i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @LoopMessageRing(%struct.TYPE_6__* %27, i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @qm_isr_status_clear(i32 %35, i64 %36)
  br label %38

38:                                               ; preds = %32, %22
  br label %39

39:                                               ; preds = %38, %18
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @e_QM_PORTAL_POLL_SOURCE_DATA_FRAMES, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @e_QM_PORTAL_POLL_SOURCE_BOTH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43, %39
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32 (i64)*, i32 (i64)** %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = ptrtoint %struct.TYPE_6__* %51 to i64
  %53 = call i32 %50(i64 %52)
  br label %54

54:                                               ; preds = %47, %43
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %56 = call i32 @PUNLOCK(%struct.TYPE_6__* %55)
  %57 = load i32, i32* @E_OK, align 4
  ret i32 %57
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @NCSW_PLOCK(%struct.TYPE_6__*) #1

declare dso_local i64 @qm_isr_status_read(i32) #1

declare dso_local i64 @LoopMessageRing(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @qm_isr_status_clear(i32, i64) #1

declare dso_local i32 @PUNLOCK(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
