; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_try_wait_for_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_try_wait_for_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @try_wait_for_completion(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  %3 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.completion*, %struct.completion** %2, align 8
  %5 = getelementptr inbounds %struct.completion, %struct.completion* %4, i32 0, i32 0
  %6 = call i32 @mtx_lock(i32* %5)
  %7 = load %struct.completion*, %struct.completion** %2, align 8
  %8 = getelementptr inbounds %struct.completion, %struct.completion* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %17

12:                                               ; preds = %1
  %13 = load %struct.completion*, %struct.completion** %2, align 8
  %14 = getelementptr inbounds %struct.completion, %struct.completion* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  br label %17

17:                                               ; preds = %12, %11
  %18 = load %struct.completion*, %struct.completion** %2, align 8
  %19 = getelementptr inbounds %struct.completion, %struct.completion* %18, i32 0, i32 0
  %20 = call i32 @mtx_unlock(i32* %19)
  %21 = load i32, i32* %3, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  ret i32 %23
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
