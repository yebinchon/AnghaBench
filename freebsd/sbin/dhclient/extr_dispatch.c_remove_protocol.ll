; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_remove_protocol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/dhclient/extr_dispatch.c_remove_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol = type { %struct.protocol* }

@protocols = common dso_local global %struct.protocol* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @remove_protocol(%struct.protocol* %0) #0 {
  %2 = alloca %struct.protocol*, align 8
  %3 = alloca %struct.protocol*, align 8
  %4 = alloca %struct.protocol*, align 8
  store %struct.protocol* %0, %struct.protocol** %2, align 8
  %5 = load %struct.protocol*, %struct.protocol** @protocols, align 8
  store %struct.protocol* %5, %struct.protocol** %3, align 8
  br label %6

6:                                                ; preds = %23, %1
  %7 = load %struct.protocol*, %struct.protocol** %3, align 8
  %8 = icmp ne %struct.protocol* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load %struct.protocol*, %struct.protocol** %3, align 8
  %11 = getelementptr inbounds %struct.protocol, %struct.protocol* %10, i32 0, i32 0
  %12 = load %struct.protocol*, %struct.protocol** %11, align 8
  store %struct.protocol* %12, %struct.protocol** %4, align 8
  %13 = load %struct.protocol*, %struct.protocol** %3, align 8
  %14 = load %struct.protocol*, %struct.protocol** %2, align 8
  %15 = icmp eq %struct.protocol* %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %9
  %17 = load %struct.protocol*, %struct.protocol** %3, align 8
  %18 = getelementptr inbounds %struct.protocol, %struct.protocol* %17, i32 0, i32 0
  %19 = load %struct.protocol*, %struct.protocol** %18, align 8
  store %struct.protocol* %19, %struct.protocol** @protocols, align 8
  %20 = load %struct.protocol*, %struct.protocol** %3, align 8
  %21 = call i32 @free(%struct.protocol* %20)
  br label %22

22:                                               ; preds = %16, %9
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.protocol*, %struct.protocol** %4, align 8
  store %struct.protocol* %24, %struct.protocol** %3, align 8
  br label %6

25:                                               ; preds = %6
  ret void
}

declare dso_local i32 @free(%struct.protocol*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
