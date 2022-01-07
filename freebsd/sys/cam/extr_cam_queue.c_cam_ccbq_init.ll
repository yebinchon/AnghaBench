; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_ccbq_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_cam_ccbq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ccbq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cam_ccbq_init(%struct.cam_ccbq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_ccbq*, align 8
  %5 = alloca i32, align 4
  store %struct.cam_ccbq* %0, %struct.cam_ccbq** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.cam_ccbq*, %struct.cam_ccbq** %4, align 8
  %7 = call i32 @bzero(%struct.cam_ccbq* %6, i32 12)
  %8 = load %struct.cam_ccbq*, %struct.cam_ccbq** %4, align 8
  %9 = getelementptr inbounds %struct.cam_ccbq, %struct.cam_ccbq* %8, i32 0, i32 2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sdiv i32 %11, 2
  %13 = add nsw i32 %10, %12
  %14 = call i32 @fls(i32 %13)
  %15 = shl i32 1, %14
  %16 = call i32 @imax(i32 64, i32 %15)
  %17 = call i64 @camq_init(i32* %9, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.cam_ccbq*, %struct.cam_ccbq** %4, align 8
  %23 = getelementptr inbounds %struct.cam_ccbq, %struct.cam_ccbq* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.cam_ccbq*, %struct.cam_ccbq** %4, align 8
  %26 = getelementptr inbounds %struct.cam_ccbq, %struct.cam_ccbq* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %19
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.cam_ccbq*, i32) #1

declare dso_local i64 @camq_init(i32*, i32) #1

declare dso_local i32 @imax(i32, i32) #1

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
