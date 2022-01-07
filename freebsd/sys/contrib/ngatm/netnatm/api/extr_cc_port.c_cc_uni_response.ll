; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_uni_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_cc_uni_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccport = type { i64, i32 }
%struct.ccconn = type { i32 }
%struct.ccreq = type { %struct.ccconn* }

@EINVAL = common dso_local global i32 0, align 4
@CCPORT_RUNNING = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"UNI response for unknown cookie %u\00", align 1
@link = common dso_local global i32 0, align 4
@UNIAPI_OK = common dso_local global i64 0, align 8
@CONN_SIG_OK = common dso_local global i32 0, align 4
@CONN_SIG_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cc_uni_response(%struct.ccport* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ccport*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ccconn*, align 8
  %11 = alloca %struct.ccreq*, align 8
  store %struct.ccport* %0, %struct.ccport** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %62

16:                                               ; preds = %4
  %17 = load %struct.ccport*, %struct.ccport** %6, align 8
  %18 = getelementptr inbounds %struct.ccport, %struct.ccport* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CCPORT_RUNNING, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOTCONN, align 4
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %16
  %25 = load %struct.ccport*, %struct.ccport** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call %struct.ccreq* @find_cookie(%struct.ccport* %25, i64 %26)
  store %struct.ccreq* %27, %struct.ccreq** %11, align 8
  %28 = icmp eq %struct.ccreq* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ccport*, %struct.ccport** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @cc_port_log(%struct.ccport* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %5, align 4
  br label %62

34:                                               ; preds = %24
  %35 = load %struct.ccreq*, %struct.ccreq** %11, align 8
  %36 = getelementptr inbounds %struct.ccreq, %struct.ccreq* %35, i32 0, i32 0
  %37 = load %struct.ccconn*, %struct.ccconn** %36, align 8
  store %struct.ccconn* %37, %struct.ccconn** %10, align 8
  %38 = load %struct.ccport*, %struct.ccport** %6, align 8
  %39 = getelementptr inbounds %struct.ccport, %struct.ccport* %38, i32 0, i32 1
  %40 = load %struct.ccreq*, %struct.ccreq** %11, align 8
  %41 = load i32, i32* @link, align 4
  %42 = call i32 @TAILQ_REMOVE(i32* %39, %struct.ccreq* %40, i32 %41)
  %43 = load %struct.ccreq*, %struct.ccreq** %11, align 8
  %44 = call i32 @CCFREE(%struct.ccreq* %43)
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @UNIAPI_OK, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %34
  %49 = load %struct.ccconn*, %struct.ccconn** %10, align 8
  %50 = load i32, i32* @CONN_SIG_OK, align 4
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @cc_conn_resp(%struct.ccconn* %49, i32 %50, i64 %51, i64 %52, i64 %53)
  store i32 %54, i32* %5, align 4
  br label %62

55:                                               ; preds = %34
  %56 = load %struct.ccconn*, %struct.ccconn** %10, align 8
  %57 = load i32, i32* @CONN_SIG_ERROR, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @cc_conn_resp(%struct.ccconn* %56, i32 %57, i64 %58, i64 %59, i64 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %48, %29, %22, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.ccreq* @find_cookie(%struct.ccport*, i64) #1

declare dso_local i32 @cc_port_log(%struct.ccport*, i8*, i64) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.ccreq*, i32) #1

declare dso_local i32 @CCFREE(%struct.ccreq*) #1

declare dso_local i32 @cc_conn_resp(%struct.ccconn*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
