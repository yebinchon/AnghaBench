; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_ins_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_ins_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.ccport* }
%struct.ccport = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"conn is already on port %u\00", align 1
@port_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_conn_ins_port(%struct.ccconn* %0, %struct.ccport* %1) #0 {
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca %struct.ccport*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %3, align 8
  store %struct.ccport* %1, %struct.ccport** %4, align 8
  %5 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %6 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %5, i32 0, i32 0
  %7 = load %struct.ccport*, %struct.ccport** %6, align 8
  %8 = icmp ne %struct.ccport* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %11 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %12 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %11, i32 0, i32 0
  %13 = load %struct.ccport*, %struct.ccport** %12, align 8
  %14 = getelementptr inbounds %struct.ccport, %struct.ccport* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cc_conn_log(%struct.ccconn* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %19 = call i32 @cc_conn_rem_port(%struct.ccconn* %18)
  br label %20

20:                                               ; preds = %9, %2
  %21 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %22 = load i32, i32* @port_link, align 4
  %23 = call i32 @LIST_REMOVE(%struct.ccconn* %21, i32 %22)
  %24 = load %struct.ccport*, %struct.ccport** %4, align 8
  %25 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %26 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %25, i32 0, i32 0
  store %struct.ccport* %24, %struct.ccport** %26, align 8
  %27 = load %struct.ccport*, %struct.ccport** %4, align 8
  %28 = getelementptr inbounds %struct.ccport, %struct.ccport* %27, i32 0, i32 0
  %29 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %30 = load i32, i32* @port_link, align 4
  %31 = call i32 @LIST_INSERT_HEAD(i32* %28, %struct.ccconn* %29, i32 %30)
  ret void
}

declare dso_local i32 @cc_conn_log(%struct.ccconn*, i8*, i32) #1

declare dso_local i32 @cc_conn_rem_port(%struct.ccconn*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ccconn*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ccconn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
