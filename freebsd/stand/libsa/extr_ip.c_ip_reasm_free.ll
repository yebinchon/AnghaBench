; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_ip_reasm_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_ip.c_ip_reasm_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_reasm = type { %struct.ip_reasm*, %struct.ip_reasm*, i32 }
%struct.ip_queue = type { %struct.ip_queue*, %struct.ip_queue*, i32 }

@ipq_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_reasm*)* @ip_reasm_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_reasm_free(%struct.ip_reasm* %0) #0 {
  %2 = alloca %struct.ip_reasm*, align 8
  %3 = alloca %struct.ip_queue*, align 8
  store %struct.ip_reasm* %0, %struct.ip_reasm** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.ip_reasm*, %struct.ip_reasm** %2, align 8
  %6 = getelementptr inbounds %struct.ip_reasm, %struct.ip_reasm* %5, i32 0, i32 2
  %7 = call %struct.ip_reasm* @STAILQ_FIRST(i32* %6)
  %8 = bitcast %struct.ip_reasm* %7 to %struct.ip_queue*
  store %struct.ip_queue* %8, %struct.ip_queue** %3, align 8
  %9 = icmp ne %struct.ip_queue* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.ip_reasm*, %struct.ip_reasm** %2, align 8
  %12 = getelementptr inbounds %struct.ip_reasm, %struct.ip_reasm* %11, i32 0, i32 2
  %13 = load i32, i32* @ipq_next, align 4
  %14 = call i32 @STAILQ_REMOVE_HEAD(i32* %12, i32 %13)
  %15 = load %struct.ip_queue*, %struct.ip_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ip_queue, %struct.ip_queue* %15, i32 0, i32 1
  %17 = load %struct.ip_queue*, %struct.ip_queue** %16, align 8
  %18 = bitcast %struct.ip_queue* %17 to %struct.ip_reasm*
  %19 = call i32 @free(%struct.ip_reasm* %18)
  %20 = load %struct.ip_queue*, %struct.ip_queue** %3, align 8
  %21 = bitcast %struct.ip_queue* %20 to %struct.ip_reasm*
  %22 = call i32 @free(%struct.ip_reasm* %21)
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.ip_reasm*, %struct.ip_reasm** %2, align 8
  %25 = getelementptr inbounds %struct.ip_reasm, %struct.ip_reasm* %24, i32 0, i32 0
  %26 = load %struct.ip_reasm*, %struct.ip_reasm** %25, align 8
  %27 = call i32 @free(%struct.ip_reasm* %26)
  %28 = load %struct.ip_reasm*, %struct.ip_reasm** %2, align 8
  %29 = call i32 @free(%struct.ip_reasm* %28)
  ret void
}

declare dso_local %struct.ip_reasm* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.ip_reasm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
