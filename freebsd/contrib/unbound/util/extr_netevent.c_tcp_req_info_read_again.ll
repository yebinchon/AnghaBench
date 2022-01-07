; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_tcp_req_info_read_again.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_tcp_req_info_read_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32 (%struct.comm_point*, i32, i32, i32*)*, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.comm_point*)* @tcp_req_info_read_again to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_req_info_read_again(i32 %0, %struct.comm_point* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comm_point*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.comm_point* %1, %struct.comm_point** %4, align 8
  br label %6

6:                                                ; preds = %56, %2
  %7 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %8 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %7, i32 0, i32 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %6
  %14 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %15 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %19 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %25 = call i32 @comm_point_tcp_handle_read(i32 %23, %struct.comm_point* %24, i32 0)
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %29 = call i32 @comm_point_tcp_handle_write(i32 %27, %struct.comm_point* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %56, label %33

33:                                               ; preds = %30
  %34 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %35 = call i32 @reclaim_tcp_handler(%struct.comm_point* %34)
  %36 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %37 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %33
  %41 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %42 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %41, i32 0, i32 1
  %43 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %42, align 8
  %44 = call i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)* %43)
  %45 = call i32 @fptr_ok(i32 %44)
  %46 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %47 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %46, i32 0, i32 1
  %48 = load i32 (%struct.comm_point*, i32, i32, i32*)*, i32 (%struct.comm_point*, i32, i32, i32*)** %47, align 8
  %49 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %50 = load %struct.comm_point*, %struct.comm_point** %4, align 8
  %51 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @NETEVENT_CLOSED, align 4
  %54 = call i32 %48(%struct.comm_point* %49, i32 %52, i32 %53, i32* null)
  br label %55

55:                                               ; preds = %40, %33
  br label %57

56:                                               ; preds = %30
  br label %6

57:                                               ; preds = %55, %6
  ret void
}

declare dso_local i32 @comm_point_tcp_handle_read(i32, %struct.comm_point*, i32) #1

declare dso_local i32 @comm_point_tcp_handle_write(i32, %struct.comm_point*) #1

declare dso_local i32 @reclaim_tcp_handler(%struct.comm_point*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_comm_point(i32 (%struct.comm_point*, i32, i32, i32*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
