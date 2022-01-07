; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_verbs.c___ibv_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ibv_resize_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %7 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = bitcast {}** %10 to i32 (%struct.ibv_cq*, i32)**
  %12 = load i32 (%struct.ibv_cq*, i32)*, i32 (%struct.ibv_cq*, i32)** %11, align 8
  %13 = icmp ne i32 (%struct.ibv_cq*, i32)* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOSYS, align 4
  store i32 %15, i32* %3, align 4
  br label %27

16:                                               ; preds = %2
  %17 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %18 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ibv_cq*, i32)**
  %23 = load i32 (%struct.ibv_cq*, i32)*, i32 (%struct.ibv_cq*, i32)** %22, align 8
  %24 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 %23(%struct.ibv_cq* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %16, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
