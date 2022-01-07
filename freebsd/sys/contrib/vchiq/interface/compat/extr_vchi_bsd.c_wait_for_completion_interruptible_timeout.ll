; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion_interruptible_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/vchiq/interface/compat/extr_vchi_bsd.c_wait_for_completion_interruptible_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.completion = type { i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"res = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_completion_interruptible_timeout(%struct.completion* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.completion*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.completion* %0, %struct.completion** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %7, align 8
  %10 = load %struct.completion*, %struct.completion** %4, align 8
  %11 = getelementptr inbounds %struct.completion, %struct.completion* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  br label %13

13:                                               ; preds = %37, %2
  %14 = load %struct.completion*, %struct.completion** %4, align 8
  %15 = getelementptr inbounds %struct.completion, %struct.completion* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %13
  %19 = load %struct.completion*, %struct.completion** %4, align 8
  %20 = getelementptr inbounds %struct.completion, %struct.completion* %19, i32 0, i32 2
  %21 = load %struct.completion*, %struct.completion** %4, align 8
  %22 = getelementptr inbounds %struct.completion, %struct.completion* %21, i32 0, i32 1
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @cv_timedwait_sig(i32* %20, i32* %22, i64 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %47

28:                                               ; preds = %18
  %29 = load i64, i64* @jiffies, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = sub i64 %31, %32
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %36, i32* %6, align 4
  br label %47

37:                                               ; preds = %28
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %5, align 8
  %42 = sub i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %7, align 8
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.completion*, %struct.completion** %4, align 8
  %46 = call i32 @_completion_claim(%struct.completion* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %35, %27
  %48 = load %struct.completion*, %struct.completion** %4, align 8
  %49 = getelementptr inbounds %struct.completion, %struct.completion* %48, i32 0, i32 1
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @EWOULDBLOCK, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %76

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @EINTR, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %63, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @ERESTART, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59, %55
  %64 = load i32, i32* @ERESTART, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %76

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  %69 = zext i1 %68 to i32
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call i32 @KASSERT(i32 %69, i8* %72)
  %74 = load i64, i64* %5, align 8
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %66, %63, %54
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cv_timedwait_sig(i32*, i32*, i64) #1

declare dso_local i32 @_completion_claim(%struct.completion*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
