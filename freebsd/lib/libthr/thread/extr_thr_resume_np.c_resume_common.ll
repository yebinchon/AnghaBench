; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_resume_np.c_resume_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_resume_np.c_resume_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32, i32 }

@THR_FLAGS_NEED_SUSPEND = common dso_local global i32 0, align 4
@THR_FLAGS_SUSPENDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @resume_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resume_common(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load i32, i32* @THR_FLAGS_NEED_SUSPEND, align 4
  %4 = load i32, i32* @THR_FLAGS_SUSPENDED, align 4
  %5 = or i32 %3, %4
  %6 = xor i32 %5, -1
  %7 = load %struct.pthread*, %struct.pthread** %2, align 8
  %8 = getelementptr inbounds %struct.pthread, %struct.pthread* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.pthread*, %struct.pthread** %2, align 8
  %12 = getelementptr inbounds %struct.pthread, %struct.pthread* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 4
  %15 = load %struct.pthread*, %struct.pthread** %2, align 8
  %16 = getelementptr inbounds %struct.pthread, %struct.pthread* %15, i32 0, i32 1
  %17 = call i32 @_thr_umtx_wake(i32* %16, i32 1, i32 0)
  ret void
}

declare dso_local i32 @_thr_umtx_wake(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
