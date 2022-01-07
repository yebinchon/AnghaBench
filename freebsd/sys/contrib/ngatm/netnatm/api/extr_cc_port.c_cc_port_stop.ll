; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { i32 }
%struct.ccport = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@CCPORT_RUNNING = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@CCPORT_STOPPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_port_stop(%struct.ccdata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccport*, align 8
  store %struct.ccdata* %0, %struct.ccdata** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.ccport* @find_port(%struct.ccdata* %7, i32 %8)
  store %struct.ccport* %9, %struct.ccport** %6, align 8
  %10 = icmp eq %struct.ccport* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %3, align 4
  br label %37

13:                                               ; preds = %2
  %14 = load %struct.ccport*, %struct.ccport** %6, align 8
  %15 = getelementptr inbounds %struct.ccport, %struct.ccport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CCPORT_RUNNING, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @ENOTCONN, align 4
  store i32 %20, i32* %3, align 4
  br label %37

21:                                               ; preds = %13
  %22 = load i64, i64* @CCPORT_STOPPED, align 8
  %23 = load %struct.ccport*, %struct.ccport** %6, align 8
  %24 = getelementptr inbounds %struct.ccport, %struct.ccport* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  br label %25

25:                                               ; preds = %31, %21
  %26 = load %struct.ccport*, %struct.ccport** %6, align 8
  %27 = getelementptr inbounds %struct.ccport, %struct.ccport* %26, i32 0, i32 1
  %28 = call i32 @LIST_EMPTY(i32* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.ccport*, %struct.ccport** %6, align 8
  %33 = getelementptr inbounds %struct.ccport, %struct.ccport* %32, i32 0, i32 1
  %34 = call i32 @LIST_FIRST(i32* %33)
  %35 = call i32 @cc_conn_destroy(i32 %34)
  br label %25

36:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %19, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.ccport* @find_port(%struct.ccdata*, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @cc_conn_destroy(i32) #1

declare dso_local i32 @LIST_FIRST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
