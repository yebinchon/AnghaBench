; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_conf_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_go_neg_conf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { %struct.TYPE_4__*, i32, %struct.p2p_device* }
%struct.TYPE_4__ = type { i32, i32 (i32)*, i32 }
%struct.p2p_device = type { i64, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"GO Negotiation Confirm TX callback: result=%d\00", align 1
@P2P_SEND_ACTION_FAILED = common dso_local global i32 0, align 4
@P2P_SEND_ACTION_NO_ACK = common dso_local global i32 0, align 4
@P2P_GO_NEG_CNF_MAX_RETRY_COUNT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"GO Negotiation Confirm retry %d\00", align 1
@P2P_PENDING_GO_NEG_CONFIRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to re-send Action frame\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"Assume GO Negotiation Confirm TX was actually received by the peer even though Ack was not reported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p2p_data*, i32)* @p2p_go_neg_conf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p2p_go_neg_conf_cb(%struct.p2p_data* %0, i32 %1) #0 {
  %3 = alloca %struct.p2p_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.p2p_device*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @P2P_SEND_ACTION_FAILED, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %26

12:                                               ; preds = %2
  %13 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %14 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %19 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %17(i32 %22)
  %24 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %25 = call i32 @p2p_go_neg_failed(%struct.p2p_data* %24, i32 -1)
  br label %113

26:                                               ; preds = %2
  %27 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 2
  %29 = load %struct.p2p_device*, %struct.p2p_device** %28, align 8
  store %struct.p2p_device* %29, %struct.p2p_device** %5, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @P2P_SEND_ACTION_NO_ACK, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %94

33:                                               ; preds = %26
  %34 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %35 = icmp ne %struct.p2p_device* %34, null
  br i1 %35, label %36, label %91

36:                                               ; preds = %33
  %37 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %38 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %43 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @P2P_GO_NEG_CNF_MAX_RETRY_COUNT, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %41
  %48 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %49 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %50 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load i32, i32* @P2P_PENDING_GO_NEG_CONFIRM, align 4
  %54 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %55 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %57 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %58 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %61 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %65 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %70 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %74 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @wpabuf_head(i64 %75)
  %77 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %78 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @wpabuf_len(i64 %79)
  %81 = call i64 @p2p_send_action(%struct.p2p_data* %56, i32 %59, i32 %63, i32 %68, i32 %72, i32 %76, i32 %80, i32 0)
  %82 = icmp sge i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %47
  %84 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %85 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %113

88:                                               ; preds = %47
  %89 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %90 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %89, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %41, %36, %33
  %92 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %93 = call i32 (%struct.p2p_data*, i8*, ...) @p2p_dbg(%struct.p2p_data* %92, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %26
  %95 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %96 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32 (i32)*, i32 (i32)** %98, align 8
  %100 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %101 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %99(i32 %104)
  %106 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %107 = icmp eq %struct.p2p_device* %106, null
  br i1 %107, label %108, label %109

108:                                              ; preds = %94
  br label %113

109:                                              ; preds = %94
  %110 = load %struct.p2p_data*, %struct.p2p_data** %3, align 8
  %111 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %112 = call i32 @p2p_go_complete(%struct.p2p_data* %110, %struct.p2p_device* %111)
  br label %113

113:                                              ; preds = %109, %108, %83, %12
  ret void
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*, ...) #1

declare dso_local i32 @p2p_go_neg_failed(%struct.p2p_data*, i32) #1

declare dso_local i64 @p2p_send_action(%struct.p2p_data*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wpabuf_head(i64) #1

declare dso_local i32 @wpabuf_len(i64) #1

declare dso_local i32 @p2p_go_complete(%struct.p2p_data*, %struct.p2p_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
