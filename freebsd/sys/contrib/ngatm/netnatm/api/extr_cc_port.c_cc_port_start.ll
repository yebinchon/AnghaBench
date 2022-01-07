; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_port_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ccport*, i32, i32, i32, i32*)* }
%struct.ccport = type { i64, i32 }

@ENOENT = common dso_local global i32 0, align 4
@CCPORT_STOPPED = common dso_local global i64 0, align 8
@EISCONN = common dso_local global i32 0, align 4
@UNIAPI_LINK_ESTABLISH_request = common dso_local global i32 0, align 4
@CCPORT_RUNNING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_port_start(%struct.ccdata* %0, i32 %1) #0 {
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
  br label %36

13:                                               ; preds = %2
  %14 = load %struct.ccport*, %struct.ccport** %6, align 8
  %15 = getelementptr inbounds %struct.ccport, %struct.ccport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CCPORT_STOPPED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* @EISCONN, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %13
  %22 = load %struct.ccdata*, %struct.ccdata** %4, align 8
  %23 = getelementptr inbounds %struct.ccdata, %struct.ccdata* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.ccport*, i32, i32, i32, i32*)*, i32 (%struct.ccport*, i32, i32, i32, i32*)** %25, align 8
  %27 = load %struct.ccport*, %struct.ccport** %6, align 8
  %28 = load %struct.ccport*, %struct.ccport** %6, align 8
  %29 = getelementptr inbounds %struct.ccport, %struct.ccport* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @UNIAPI_LINK_ESTABLISH_request, align 4
  %32 = call i32 %26(%struct.ccport* %27, i32 %30, i32 %31, i32 0, i32* null)
  %33 = load i64, i64* @CCPORT_RUNNING, align 8
  %34 = load %struct.ccport*, %struct.ccport** %6, align 8
  %35 = getelementptr inbounds %struct.ccport, %struct.ccport* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %19, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ccport* @find_port(%struct.ccdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
