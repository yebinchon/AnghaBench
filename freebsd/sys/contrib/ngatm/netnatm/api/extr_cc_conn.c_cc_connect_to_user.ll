; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_connect_to_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_connect_to_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.ccuser* }
%struct.ccuser = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"still connected to %p\00", align 1
@connq_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_connect_to_user(%struct.ccconn* %0, %struct.ccuser* %1) #0 {
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca %struct.ccuser*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %3, align 8
  store %struct.ccuser* %1, %struct.ccuser** %4, align 8
  %5 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %6 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %5, i32 0, i32 0
  %7 = load %struct.ccuser*, %struct.ccuser** %6, align 8
  %8 = icmp ne %struct.ccuser* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %11 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %12 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %11, i32 0, i32 0
  %13 = load %struct.ccuser*, %struct.ccuser** %12, align 8
  %14 = call i32 @cc_conn_log(%struct.ccconn* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ccuser* %13)
  br label %15

15:                                               ; preds = %9, %2
  %16 = load %struct.ccuser*, %struct.ccuser** %4, align 8
  %17 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %18 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %17, i32 0, i32 0
  store %struct.ccuser* %16, %struct.ccuser** %18, align 8
  %19 = load %struct.ccuser*, %struct.ccuser** %4, align 8
  %20 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %19, i32 0, i32 1
  %21 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %22 = load i32, i32* @connq_link, align 4
  %23 = call i32 @TAILQ_INSERT_TAIL(i32* %20, %struct.ccconn* %21, i32 %22)
  %24 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %25 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %24, i32 0, i32 0
  %26 = load %struct.ccuser*, %struct.ccuser** %25, align 8
  %27 = getelementptr inbounds %struct.ccuser, %struct.ccuser* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  ret void
}

declare dso_local i32 @cc_conn_log(%struct.ccconn*, i8*, %struct.ccuser*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccconn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
