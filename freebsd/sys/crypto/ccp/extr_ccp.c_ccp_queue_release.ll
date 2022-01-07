; ModuleID = '/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_queue_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/crypto/ccp/extr_ccp.c_ccp_queue_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccp_queue = type { i64, i64, i32 }

@MA_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ccp_queue_release(%struct.ccp_queue* %0) #0 {
  %2 = alloca %struct.ccp_queue*, align 8
  store %struct.ccp_queue* %0, %struct.ccp_queue** %2, align 8
  %3 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %4 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %3, i32 0, i32 2
  %5 = load i32, i32* @MA_OWNED, align 4
  %6 = call i32 @mtx_assert(i32* %4, i32 %5)
  %7 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %8 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %11 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 (...) @wmb()
  %16 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %17 = call i32 @ccp_queue_write_tail(%struct.ccp_queue* %16)
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.ccp_queue*, %struct.ccp_queue** %2, align 8
  %20 = getelementptr inbounds %struct.ccp_queue, %struct.ccp_queue* %19, i32 0, i32 2
  %21 = call i32 @mtx_unlock(i32* %20)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ccp_queue_write_tail(%struct.ccp_queue*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
