; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_reclaim_tcp_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_reclaim_tcp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i64, %struct.TYPE_2__*, %struct.comm_point*, i32* }
%struct.TYPE_2__ = type { %struct.comm_point*, i32 }

@comm_tcp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comm_point*)* @reclaim_tcp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reclaim_tcp_handler(%struct.comm_point* %0) #0 {
  %2 = alloca %struct.comm_point*, align 8
  store %struct.comm_point* %0, %struct.comm_point** %2, align 8
  %3 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %4 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @comm_tcp, align 8
  %7 = icmp eq i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @log_assert(i32 %8)
  %10 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %11 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %1
  %16 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %17 = call i32 @comm_point_close(%struct.comm_point* %16)
  %18 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %19 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %15
  %23 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %24 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 8
  %29 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %30 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.comm_point*, %struct.comm_point** %32, align 8
  %34 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %35 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %34, i32 0, i32 2
  store %struct.comm_point* %33, %struct.comm_point** %35, align 8
  %36 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %37 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %38 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store %struct.comm_point* %36, %struct.comm_point** %40, align 8
  %41 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 2
  %43 = load %struct.comm_point*, %struct.comm_point** %42, align 8
  %44 = icmp ne %struct.comm_point* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %22
  %46 = load %struct.comm_point*, %struct.comm_point** %2, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @comm_point_start_listening(%struct.TYPE_2__* %48, i32 -1, i32 -1)
  br label %50

50:                                               ; preds = %45, %22
  br label %51

51:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @comm_point_close(%struct.comm_point*) #1

declare dso_local i32 @comm_point_start_listening(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
