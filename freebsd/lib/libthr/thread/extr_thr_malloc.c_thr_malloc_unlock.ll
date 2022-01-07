; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_malloc.c_thr_malloc_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_malloc.c_thr_malloc_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pthread = type { i32 }

@thr_malloc_umtx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pthread*)* @thr_malloc_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @thr_malloc_unlock(%struct.pthread* %0) #0 {
  %2 = alloca %struct.pthread*, align 8
  store %struct.pthread* %0, %struct.pthread** %2, align 8
  %3 = load %struct.pthread*, %struct.pthread** %2, align 8
  %4 = icmp eq %struct.pthread* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.pthread*, %struct.pthread** %2, align 8
  %8 = call i32 @TID(%struct.pthread* %7)
  %9 = call i32 @_thr_umutex_unlock(i32* @thr_malloc_umtx, i32 %8)
  %10 = load %struct.pthread*, %struct.pthread** %2, align 8
  %11 = getelementptr inbounds %struct.pthread, %struct.pthread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.pthread*, %struct.pthread** %2, align 8
  %15 = call i32 @_thr_ast(%struct.pthread* %14)
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @_thr_umutex_unlock(i32*, i32) #1

declare dso_local i32 @TID(%struct.pthread*) #1

declare dso_local i32 @_thr_ast(%struct.pthread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
