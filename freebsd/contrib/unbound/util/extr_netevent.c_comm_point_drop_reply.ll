; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_drop_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_point_drop_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_reply = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@comm_tcp_accept = common dso_local global i64 0, align 8
@comm_udp = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_point_drop_reply(%struct.comm_reply* %0) #0 {
  %2 = alloca %struct.comm_reply*, align 8
  store %struct.comm_reply* %0, %struct.comm_reply** %2, align 8
  %3 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %4 = icmp ne %struct.comm_reply* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %54

6:                                                ; preds = %1
  %7 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %8 = icmp ne %struct.comm_reply* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %11 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i1 [ false, %6 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @log_assert(i32 %16)
  %18 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %19 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @comm_tcp_accept, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @log_assert(i32 %25)
  %27 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %28 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @comm_udp, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %14
  br label %54

35:                                               ; preds = %14
  %36 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %37 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = icmp ne %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %44 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.comm_reply*, %struct.comm_reply** %2, align 8
  %51 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = call i32 @reclaim_tcp_handler(%struct.TYPE_4__* %52)
  br label %54

54:                                               ; preds = %49, %34, %5
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @reclaim_tcp_handler(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
