; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_setup_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_setup_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ccparty = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"no party for %s\00", align 1
@cc_conn_sigtab = common dso_local global i32* null, align 8
@CONN_SIG_SETUP_CONFIRM = common dso_local global i64 0, align 8
@PARTY_WAIT_SETUP_CONF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"bad state=%s for signal=%s\00", align 1
@ptab = common dso_local global i32* null, align 8
@PARTY_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccconn*)* @cc_party_setup_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_party_setup_conf(%struct.ccconn* %0) #0 {
  %2 = alloca %struct.ccconn*, align 8
  %3 = alloca %struct.ccparty*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %2, align 8
  %4 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %5 = load %struct.ccconn*, %struct.ccconn** %2, align 8
  %6 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.ccparty* @cc_party_find(%struct.ccconn* %4, i32 %8)
  store %struct.ccparty* %9, %struct.ccparty** %3, align 8
  %10 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %11 = icmp eq %struct.ccparty* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %14 = load i32*, i32** @cc_conn_sigtab, align 8
  %15 = load i64, i64* @CONN_SIG_SETUP_CONFIRM, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %13, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %42

19:                                               ; preds = %1
  %20 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %21 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PARTY_WAIT_SETUP_CONF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %27 = load i32*, i32** @ptab, align 8
  %28 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %29 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** @cc_conn_sigtab, align 8
  %34 = load i64, i64* @CONN_SIG_SETUP_CONFIRM, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %36)
  br label %42

38:                                               ; preds = %19
  %39 = load %struct.ccparty*, %struct.ccparty** %3, align 8
  %40 = load i32, i32* @PARTY_ACTIVE, align 4
  %41 = call i32 @cc_party_set_state(%struct.ccparty* %39, i32 %40)
  br label %42

42:                                               ; preds = %38, %25, %12
  ret void
}

declare dso_local %struct.ccparty* @cc_party_find(%struct.ccconn*, i32) #1

declare dso_local i32 @cc_party_log(%struct.ccparty*, i8*, i32, ...) #1

declare dso_local i32 @cc_party_set_state(%struct.ccparty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
