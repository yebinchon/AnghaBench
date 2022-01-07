; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { i32 }

@M_CAMQ = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.camq* @camq_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.camq*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @M_CAMQ, align 4
  %5 = load i32, i32* @M_NOWAIT, align 4
  %6 = call i64 @malloc(i32 4, i32 %4, i32 %5)
  %7 = inttoptr i64 %6 to %struct.camq*
  store %struct.camq* %7, %struct.camq** %3, align 8
  %8 = load %struct.camq*, %struct.camq** %3, align 8
  %9 = icmp ne %struct.camq* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.camq*, %struct.camq** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @camq_init(%struct.camq* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.camq*, %struct.camq** %3, align 8
  %17 = load i32, i32* @M_CAMQ, align 4
  %18 = call i32 @free(%struct.camq* %16, i32 %17)
  store %struct.camq* null, %struct.camq** %3, align 8
  br label %19

19:                                               ; preds = %15, %10
  br label %20

20:                                               ; preds = %19, %1
  %21 = load %struct.camq*, %struct.camq** %3, align 8
  ret %struct.camq* %21
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i64 @camq_init(%struct.camq*, i32) #1

declare dso_local i32 @free(%struct.camq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
