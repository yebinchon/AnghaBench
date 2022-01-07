; ModuleID = '/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_callout_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/kshim/extr_bsd_kernel.c_callout_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callout = type { void (i8*)*, i64, i8* }

@ticks = common dso_local global i64 0, align 8
@mtx_callout = common dso_local global i32 0, align 4
@head_callout = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @callout_reset(%struct.callout* %0, i32 %1, void (i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.callout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i8*, align 8
  store %struct.callout* %0, %struct.callout** %5, align 8
  store i32 %1, i32* %6, align 4
  store void (i8*)* %2, void (i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.callout*, %struct.callout** %5, align 8
  %10 = call i32 @callout_stop(%struct.callout* %9)
  %11 = load void (i8*)*, void (i8*)** %7, align 8
  %12 = load %struct.callout*, %struct.callout** %5, align 8
  %13 = getelementptr inbounds %struct.callout, %struct.callout* %12, i32 0, i32 0
  store void (i8*)* %11, void (i8*)** %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load %struct.callout*, %struct.callout** %5, align 8
  %16 = getelementptr inbounds %struct.callout, %struct.callout* %15, i32 0, i32 2
  store i8* %14, i8** %16, align 8
  %17 = load i64, i64* @ticks, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = load %struct.callout*, %struct.callout** %5, align 8
  %22 = getelementptr inbounds %struct.callout, %struct.callout* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = call i32 @mtx_lock(i32* @mtx_callout)
  %24 = load %struct.callout*, %struct.callout** %5, align 8
  %25 = load i32, i32* @entry, align 4
  %26 = call i32 @LIST_INSERT_HEAD(i32* @head_callout, %struct.callout* %24, i32 %25)
  %27 = call i32 @mtx_unlock(i32* @mtx_callout)
  ret void
}

declare dso_local i32 @callout_stop(%struct.callout*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.callout*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
