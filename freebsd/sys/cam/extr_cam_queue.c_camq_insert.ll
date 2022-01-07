; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_queue.c_camq_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camq = type { i64, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"camq_insert: Attempt to insert into a full queue (%d >= %d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camq_insert(%struct.camq* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.camq*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store %struct.camq* %0, %struct.camq** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %5 = load %struct.camq*, %struct.camq** %3, align 8
  %6 = getelementptr inbounds %struct.camq, %struct.camq* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.camq*, %struct.camq** %3, align 8
  %9 = getelementptr inbounds %struct.camq, %struct.camq* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = load %struct.camq*, %struct.camq** %3, align 8
  %14 = getelementptr inbounds %struct.camq, %struct.camq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.camq*, %struct.camq** %3, align 8
  %17 = getelementptr inbounds %struct.camq, %struct.camq* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %12, i8* %19)
  %21 = load %struct.camq*, %struct.camq** %3, align 8
  %22 = getelementptr inbounds %struct.camq, %struct.camq* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %26 = load %struct.camq*, %struct.camq** %3, align 8
  %27 = getelementptr inbounds %struct.camq, %struct.camq* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %27, align 8
  %29 = load %struct.camq*, %struct.camq** %3, align 8
  %30 = getelementptr inbounds %struct.camq, %struct.camq* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %28, i64 %31
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %32, align 8
  %33 = load %struct.camq*, %struct.camq** %3, align 8
  %34 = getelementptr inbounds %struct.camq, %struct.camq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.camq*, %struct.camq** %3, align 8
  %39 = getelementptr inbounds %struct.camq, %struct.camq* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %2
  %43 = load %struct.camq*, %struct.camq** %3, align 8
  %44 = getelementptr inbounds %struct.camq, %struct.camq* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %44, align 8
  %46 = load %struct.camq*, %struct.camq** %3, align 8
  %47 = getelementptr inbounds %struct.camq, %struct.camq* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @heap_up(%struct.TYPE_4__** %45, i64 %48)
  br label %50

50:                                               ; preds = %42, %2
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @heap_up(%struct.TYPE_4__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
