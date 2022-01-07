; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { i32 }

@M_CAMQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camq_free(%struct.camq* %0) #0 {
  %2 = alloca %struct.camq*, align 8
  store %struct.camq* %0, %struct.camq** %2, align 8
  %3 = load %struct.camq*, %struct.camq** %2, align 8
  %4 = icmp ne %struct.camq* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load %struct.camq*, %struct.camq** %2, align 8
  %7 = call i32 @camq_fini(%struct.camq* %6)
  %8 = load %struct.camq*, %struct.camq** %2, align 8
  %9 = load i32, i32* @M_CAMQ, align 4
  %10 = call i32 @free(%struct.camq* %8, i32 %9)
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

declare dso_local i32 @camq_fini(%struct.camq*) #1

declare dso_local i32 @free(%struct.camq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
