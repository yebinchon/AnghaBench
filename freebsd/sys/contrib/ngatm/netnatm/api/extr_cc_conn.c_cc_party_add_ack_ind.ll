; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_add_ack_ind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_add_ack_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { i32 }
%struct.uni_ie_epref = type { i32 }
%struct.ccparty = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"no party for %s\00", align 1
@cc_conn_sigtab = common dso_local global i32* null, align 8
@CONN_SIG_PARTY_ADD_ACK_IND = common dso_local global i64 0, align 8
@PARTY_ADD_WAIT_ACK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"bad state=%s for signal=%s\00", align 1
@ptab = common dso_local global i32* null, align 8
@PARTY_ACTIVE = common dso_local global i32 0, align 4
@USER_SIG_ADD_PARTY_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccconn*, %struct.uni_ie_epref*)* @cc_party_add_ack_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_party_add_ack_ind(%struct.ccconn* %0, %struct.uni_ie_epref* %1) #0 {
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca %struct.uni_ie_epref*, align 8
  %5 = alloca %struct.ccparty*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %3, align 8
  store %struct.uni_ie_epref* %1, %struct.uni_ie_epref** %4, align 8
  %6 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %7 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %4, align 8
  %8 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ccparty* @cc_party_find(%struct.ccconn* %6, i32 %9)
  store %struct.ccparty* %10, %struct.ccparty** %5, align 8
  %11 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %12 = icmp eq %struct.ccparty* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %15 = load i32*, i32** @cc_conn_sigtab, align 8
  %16 = load i64, i64* @CONN_SIG_PARTY_ADD_ACK_IND, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %22 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PARTY_ADD_WAIT_ACK, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %20
  %27 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %28 = load i32*, i32** @ptab, align 8
  %29 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %30 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @cc_conn_sigtab, align 8
  %35 = load i64, i64* @CONN_SIG_PARTY_ADD_ACK_IND, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %37)
  br label %51

39:                                               ; preds = %20
  %40 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %41 = load i32, i32* @PARTY_ACTIVE, align 4
  %42 = call i32 @cc_party_set_state(%struct.ccparty* %40, i32 %41)
  %43 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %44 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @USER_SIG_ADD_PARTY_ACK, align 4
  %47 = load %struct.uni_ie_epref*, %struct.uni_ie_epref** %4, align 8
  %48 = getelementptr inbounds %struct.uni_ie_epref, %struct.uni_ie_epref* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @cc_user_sig(i32 %45, i32 %46, i32* null, i32 %49)
  br label %51

51:                                               ; preds = %39, %26
  ret void
}

declare dso_local %struct.ccparty* @cc_party_find(%struct.ccconn*, i32) #1

declare dso_local i32 @cc_party_log(%struct.ccparty*, i8*, i32, ...) #1

declare dso_local i32 @cc_party_set_state(%struct.ccparty*, i32) #1

declare dso_local i32 @cc_user_sig(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
