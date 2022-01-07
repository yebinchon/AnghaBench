; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_rem_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_rem_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"conn not on any %s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@port_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_conn_rem_port(%struct.ccconn* %0) #0 {
  %2 = alloca %struct.ccconn*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %2, align 8
  %3 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %4 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %9 = call i32 @cc_conn_log(%struct.ccconn* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %23

10:                                               ; preds = %1
  %11 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %12 = load i32, i32* @port_link, align 4
  %13 = call i32 @LIST_REMOVE(%struct.ccconn* %11, i32 %12)
  %14 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %15 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %17 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %21 = load i32, i32* @port_link, align 4
  %22 = call i32 @LIST_INSERT_HEAD(i32* %19, %struct.ccconn* %20, i32 %21)
  br label %23

23:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @cc_conn_log(%struct.ccconn*, i8*, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ccconn*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ccconn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
