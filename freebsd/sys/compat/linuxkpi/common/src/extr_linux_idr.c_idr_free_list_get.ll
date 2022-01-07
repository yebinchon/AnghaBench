; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_free_list_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_free_list_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr_layer = type { %struct.idr_layer** }
%struct.idr = type { %struct.idr_layer* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idr_layer* (%struct.idr*)* @idr_free_list_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idr_layer* @idr_free_list_get(%struct.idr* %0) #0 {
  %2 = alloca %struct.idr*, align 8
  %3 = alloca %struct.idr_layer*, align 8
  store %struct.idr* %0, %struct.idr** %2, align 8
  %4 = load %struct.idr*, %struct.idr** %2, align 8
  %5 = getelementptr inbounds %struct.idr, %struct.idr* %4, i32 0, i32 0
  %6 = load %struct.idr_layer*, %struct.idr_layer** %5, align 8
  store %struct.idr_layer* %6, %struct.idr_layer** %3, align 8
  %7 = icmp ne %struct.idr_layer* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %10 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %9, i32 0, i32 0
  %11 = load %struct.idr_layer**, %struct.idr_layer*** %10, align 8
  %12 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %11, i64 0
  %13 = load %struct.idr_layer*, %struct.idr_layer** %12, align 8
  %14 = load %struct.idr*, %struct.idr** %2, align 8
  %15 = getelementptr inbounds %struct.idr, %struct.idr* %14, i32 0, i32 0
  store %struct.idr_layer* %13, %struct.idr_layer** %15, align 8
  %16 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  %17 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %16, i32 0, i32 0
  %18 = load %struct.idr_layer**, %struct.idr_layer*** %17, align 8
  %19 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %18, i64 0
  store %struct.idr_layer* null, %struct.idr_layer** %19, align 8
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.idr_layer*, %struct.idr_layer** %3, align 8
  ret %struct.idr_layer* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
