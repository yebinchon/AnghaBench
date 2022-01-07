; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_cv_timedwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_cv_timedwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cv = type { i32 }
%struct.mtx = type { i32 }

@ticks = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cv_timedwait(%struct.cv* %0, %struct.mtx* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cv*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cv* %0, %struct.cv** %5, align 8
  store %struct.mtx* %1, %struct.mtx** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @ticks, align 4
  store i32 %11, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.cv*, %struct.cv** %5, align 8
  %13 = getelementptr inbounds %struct.cv, %struct.cv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %17, i32* %4, align 4
  br label %66

18:                                               ; preds = %3
  %19 = load %struct.cv*, %struct.cv** %5, align 8
  %20 = getelementptr inbounds %struct.cv, %struct.cv* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %52, %18
  %22 = load %struct.cv*, %struct.cv** %5, align 8
  %23 = getelementptr inbounds %struct.cv, %struct.cv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %26
  %30 = load i32, i32* @ticks, align 4
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %29
  br label %56

40:                                               ; preds = %36
  br label %41

41:                                               ; preds = %40, %26
  %42 = load %struct.mtx*, %struct.mtx** %6, align 8
  %43 = call i32 @mtx_unlock(%struct.mtx* %42)
  %44 = call i32 (...) @usb_idle()
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* @hz, align 4
  %48 = sdiv i32 1000000, %47
  %49 = icmp sge i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  %51 = call i32 @callout_process(i32 1)
  br label %52

52:                                               ; preds = %50, %41
  %53 = call i32 @delay(i32 1)
  %54 = load %struct.mtx*, %struct.mtx** %6, align 8
  %55 = call i32 @mtx_lock(%struct.mtx* %54)
  br label %21

56:                                               ; preds = %39, %21
  %57 = load %struct.cv*, %struct.cv** %5, align 8
  %58 = getelementptr inbounds %struct.cv, %struct.cv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load %struct.cv*, %struct.cv** %5, align 8
  %63 = getelementptr inbounds %struct.cv, %struct.cv* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %61, %16
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

declare dso_local i32 @usb_idle(...) #1

declare dso_local i32 @callout_process(i32) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
