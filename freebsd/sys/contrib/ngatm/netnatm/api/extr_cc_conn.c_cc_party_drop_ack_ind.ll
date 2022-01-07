; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_drop_ack_ind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_conn.c_cc_party_drop_ack_ind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccconn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.uni_drop_party = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ccparty = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"no party for %s\00", align 1
@cc_conn_sigtab = common dso_local global i32* null, align 8
@CONN_SIG_DROP_PARTY_ACK_IND = common dso_local global i64 0, align 8
@PARTY_WAIT_DESTROY = common dso_local global i32 0, align 4
@USER_SIG_DROP_PARTY_IND = common dso_local global i32 0, align 4
@USER_SIG_ADD_PARTY_REJ = common dso_local global i32 0, align 4
@USER_SIG_DROP_PARTY_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bad state=%s for signal=%s\00", align 1
@ptab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccconn*, %struct.uni_drop_party*)* @cc_party_drop_ack_ind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc_party_drop_ack_ind(%struct.ccconn* %0, %struct.uni_drop_party* %1) #0 {
  %3 = alloca %struct.ccconn*, align 8
  %4 = alloca %struct.uni_drop_party*, align 8
  %5 = alloca %struct.ccparty*, align 8
  store %struct.ccconn* %0, %struct.ccconn** %3, align 8
  store %struct.uni_drop_party* %1, %struct.uni_drop_party** %4, align 8
  %6 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %7 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %8 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ccparty* @cc_party_find(%struct.ccconn* %6, i32 %10)
  store %struct.ccparty* %11, %struct.ccparty** %5, align 8
  %12 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %13 = icmp eq %struct.ccparty* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %16 = load i32*, i32** @cc_conn_sigtab, align 8
  %17 = load i64, i64* @CONN_SIG_DROP_PARTY_ACK_IND, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %23 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %96 [
    i32 132, label %25
    i32 131, label %54
    i32 130, label %83
    i32 129, label %92
    i32 128, label %92
  ]

25:                                               ; preds = %21
  %26 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %27 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = call i32 @memset(i32* %31, i32 0, i32 4)
  %33 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %34 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %37 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %35, i32* %41, align 4
  %42 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %43 = load i32, i32* @PARTY_WAIT_DESTROY, align 4
  %44 = call i32 @cc_party_set_state(%struct.ccparty* %42, i32 %43)
  %45 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %46 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* @USER_SIG_DROP_PARTY_IND, align 4
  %49 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %50 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @cc_user_sig(%struct.TYPE_6__* %47, i32 %48, i32* null, i32 %52)
  br label %110

54:                                               ; preds = %21
  %55 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %56 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load %struct.uni_drop_party*, %struct.uni_drop_party** %4, align 8
  %63 = getelementptr inbounds %struct.uni_drop_party, %struct.uni_drop_party* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %66 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %64, i32* %70, align 4
  %71 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %72 = load i32, i32* @PARTY_WAIT_DESTROY, align 4
  %73 = call i32 @cc_party_set_state(%struct.ccparty* %71, i32 %72)
  %74 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %75 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = load i32, i32* @USER_SIG_ADD_PARTY_REJ, align 4
  %78 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %79 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cc_user_sig(%struct.TYPE_6__* %76, i32 %77, i32* null, i32 %81)
  br label %110

83:                                               ; preds = %21
  %84 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %85 = load i32, i32* @PARTY_WAIT_DESTROY, align 4
  %86 = call i32 @cc_party_set_state(%struct.ccparty* %84, i32 %85)
  %87 = load %struct.ccconn*, %struct.ccconn** %3, align 8
  %88 = getelementptr inbounds %struct.ccconn, %struct.ccconn* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = load i32, i32* @USER_SIG_DROP_PARTY_OK, align 4
  %91 = call i32 @cc_user_sig(%struct.TYPE_6__* %89, i32 %90, i32* null, i32 0)
  br label %110

92:                                               ; preds = %21, %21
  %93 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %94 = load i32, i32* @PARTY_WAIT_DESTROY, align 4
  %95 = call i32 @cc_party_set_state(%struct.ccparty* %93, i32 %94)
  br label %110

96:                                               ; preds = %21
  %97 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %98 = load i32*, i32** @ptab, align 8
  %99 = load %struct.ccparty*, %struct.ccparty** %5, align 8
  %100 = getelementptr inbounds %struct.ccparty, %struct.ccparty* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %98, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** @cc_conn_sigtab, align 8
  %106 = load i64, i64* @CONN_SIG_DROP_PARTY_ACK_IND, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (%struct.ccparty*, i8*, i32, ...) @cc_party_log(%struct.ccparty* %97, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %108)
  br label %110

110:                                              ; preds = %14, %96, %92, %83, %54, %25
  ret void
}

declare dso_local %struct.ccparty* @cc_party_find(%struct.ccconn*, i32) #1

declare dso_local i32 @cc_party_log(%struct.ccparty*, i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cc_party_set_state(%struct.ccparty*, i32) #1

declare dso_local i32 @cc_user_sig(%struct.TYPE_6__*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
