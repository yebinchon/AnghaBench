; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_change_priority.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_change_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { %struct.TYPE_3__**, i32 }
%struct.TYPE_3__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camq_change_priority(%struct.camq* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.camq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.camq* %0, %struct.camq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.camq*, %struct.camq** %4, align 8
  %9 = getelementptr inbounds %struct.camq, %struct.camq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %10, i64 %12
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %7, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.camq*, %struct.camq** %4, align 8
  %21 = getelementptr inbounds %struct.camq, %struct.camq* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %22, i64 %24
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i64 %19, i64* %27, align 8
  %28 = load %struct.camq*, %struct.camq** %4, align 8
  %29 = getelementptr inbounds %struct.camq, %struct.camq* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.camq*, %struct.camq** %4, align 8
  %33 = getelementptr inbounds %struct.camq, %struct.camq* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @heap_down(%struct.TYPE_3__** %30, i32 %31, i32 %34)
  br label %51

36:                                               ; preds = %3
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.camq*, %struct.camq** %4, align 8
  %39 = getelementptr inbounds %struct.camq, %struct.camq* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %40, i64 %42
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %37, i64* %45, align 8
  %46 = load %struct.camq*, %struct.camq** %4, align 8
  %47 = getelementptr inbounds %struct.camq, %struct.camq* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @heap_up(%struct.TYPE_3__** %48, i32 %49)
  br label %51

51:                                               ; preds = %36, %18
  ret void
}

declare dso_local i32 @heap_down(%struct.TYPE_3__**, i32, i32) #1

declare dso_local i32 @heap_up(%struct.TYPE_3__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
