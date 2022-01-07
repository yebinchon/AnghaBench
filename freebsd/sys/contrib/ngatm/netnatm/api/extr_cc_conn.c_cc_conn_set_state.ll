; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_conn_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CCLOG_CONN_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s -> %s\00", align 1
@stab = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cc_conn_set_state(%struct.ccconn* %0, i32 %1) #0 {
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca i32, align 4
  store %struct.ccconn* %0, %struct.ccconn** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %6 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %7, %8
  br i1 %9, label %10, label %38

10:                                               ; preds = %2
  %11 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %12 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CCLOG_CONN_STATE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %21 = load i32*, i32** @stab, align 8
  %22 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %23 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @stab, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @cc_conn_log(%struct.ccconn* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %19, %10
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %37 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %38

38:                                               ; preds = %34, %2
  ret void
}

declare dso_local i32 @cc_conn_log(%struct.ccconn*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
