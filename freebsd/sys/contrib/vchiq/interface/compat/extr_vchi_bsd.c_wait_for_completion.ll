; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wait_for_completion(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  store %struct.completion* %0, %struct.completion** %2, align 8
  %3 = load %struct.completion*, %struct.completion** %2, align 8
  %4 = getelementptr inbounds %struct.completion, %struct.completion* %3, i32 0, i32 0
  %5 = call i32 @mtx_lock(i32* %4)
  %6 = load %struct.completion*, %struct.completion** %2, align 8
  %7 = getelementptr inbounds %struct.completion, %struct.completion* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.completion*, %struct.completion** %2, align 8
  %12 = getelementptr inbounds %struct.completion, %struct.completion* %11, i32 0, i32 2
  %13 = load %struct.completion*, %struct.completion** %2, align 8
  %14 = getelementptr inbounds %struct.completion, %struct.completion* %13, i32 0, i32 0
  %15 = call i32 @cv_wait(i32* %12, i32* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.completion*, %struct.completion** %2, align 8
  %18 = getelementptr inbounds %struct.completion, %struct.completion* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.completion*, %struct.completion** %2, align 8
  %22 = getelementptr inbounds %struct.completion, %struct.completion* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
