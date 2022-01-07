; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_send_uni.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_send_uni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ccconn*, i32, i32, i64, %struct.uni_msg*)* }
%struct.uni_msg = type { i32 }
%struct.ccreq = type { i64, %struct.ccconn*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"no memory for cookie op=%u\00", align 1
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccconn*, i32, %struct.uni_msg*)* @cc_send_uni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_send_uni(%struct.ccconn* %0, i32 %1, %struct.uni_msg* %2) #0 {
  %4 = alloca %struct.ccconn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca %struct.ccreq*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.uni_msg* %2, %struct.uni_msg** %6, align 8
  %8 = call %struct.ccreq* @CCZALLOC(i32 24)
  store %struct.ccreq* %8, %struct.ccreq** %7, align 8
  %9 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %10 = icmp eq %struct.ccreq* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %3
  %12 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %13 = icmp ne %struct.uni_msg* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %16 = call i32 @uni_msg_destroy(%struct.uni_msg* %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @cc_conn_log(%struct.ccconn* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %79

21:                                               ; preds = %3
  %22 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %23 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %31 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = icmp eq i64 %29, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %21
  %34 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %35 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %43 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %33, %21
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %47 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %49 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %50 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %49, i32 0, i32 1
  store %struct.ccconn* %48, %struct.ccconn** %50, align 8
  %51 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %52 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %56 = load i32, i32* @link, align 4
  %57 = call i32 @TAILQ_INSERT_TAIL(i32* %54, %struct.ccreq* %55, i32 %56)
  %58 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %59 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32 (%struct.ccconn*, i32, i32, i64, %struct.uni_msg*)*, i32 (%struct.ccconn*, i32, i32, i64, %struct.uni_msg*)** %65, align 8
  %67 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %68 = load %struct.ccconn*, %struct.ccconn** %4, align 8
  %69 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ccreq*, %struct.ccreq** %7, align 8
  %75 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %78 = call i32 %66(%struct.ccconn* %67, i32 %72, i32 %73, i64 %76, %struct.uni_msg* %77)
  br label %79

79:                                               ; preds = %44, %17
  ret void
}

declare dso_local %struct.ccreq* @CCZALLOC(i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @cc_conn_log(%struct.ccconn*, i8*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.ccreq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
