; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion_interruptible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion_interruptible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i64, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_completion_interruptible(%struct.completion* %0) #0 {
  %2 = alloca %struct.completion*, align 8
  %3 = alloca i32, align 4
  store %struct.completion* %0, %struct.completion** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.completion*, %struct.completion** %2, align 8
  %5 = getelementptr inbounds %struct.completion, %struct.completion* %4, i32 0, i32 1
  %6 = call i32 @mtx_lock(i32* %5)
  br label %7

7:                                                ; preds = %21, %1
  %8 = load %struct.completion*, %struct.completion** %2, align 8
  %9 = getelementptr inbounds %struct.completion, %struct.completion* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load %struct.completion*, %struct.completion** %2, align 8
  %14 = getelementptr inbounds %struct.completion, %struct.completion* %13, i32 0, i32 2
  %15 = load %struct.completion*, %struct.completion** %2, align 8
  %16 = getelementptr inbounds %struct.completion, %struct.completion* %15, i32 0, i32 1
  %17 = call i32 @cv_wait_sig(i32* %14, i32* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %25

21:                                               ; preds = %12
  br label %7

22:                                               ; preds = %7
  %23 = load %struct.completion*, %struct.completion** %2, align 8
  %24 = call i32 @_completion_claim(%struct.completion* %23)
  br label %25

25:                                               ; preds = %22, %20
  %26 = load %struct.completion*, %struct.completion** %2, align 8
  %27 = getelementptr inbounds %struct.completion, %struct.completion* %26, i32 0, i32 1
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @EINTR, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @ERESTART, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %25
  %37 = load i32, i32* @ERESTART, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_wait_sig(i32*, i32*) #1

declare dso_local i32 @_completion_claim(%struct.completion*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
