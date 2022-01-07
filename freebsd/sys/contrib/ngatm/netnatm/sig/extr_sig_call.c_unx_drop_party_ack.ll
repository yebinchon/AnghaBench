; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_drop_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_drop_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.uni_drop_party_ack }
%struct.TYPE_10__ = type { i32, i32 }
%struct.uni_drop_party_ack = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.party = type { i32 }

@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4
@SIGP_DROP_PARTY_ACK = common dso_local global i32 0, align 4
@UNI_CAUSE_MSG_INCOMP = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_IE_INV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32)* @unx_drop_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_drop_party_ack(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2, i32 %3) #0 {
  %5 = alloca %struct.call*, align 8
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca %struct.uni_all*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.party*, align 8
  %10 = alloca %struct.uni_drop_party_ack*, align 8
  store %struct.call* %0, %struct.call** %5, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %6, align 8
  store %struct.uni_all* %2, %struct.uni_all** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %12 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store %struct.uni_drop_party_ack* %13, %struct.uni_drop_party_ack** %10, align 8
  %14 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %15 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %16, i32 0, i32 0
  %18 = bitcast %struct.TYPE_13__* %17 to i64*
  %19 = load i64, i64* %18, align 4
  %20 = call i64 @IE_ISGOOD(i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %107

22:                                               ; preds = %4
  %23 = load %struct.call*, %struct.call** %5, align 8
  %24 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %25 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %29 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call %struct.party* @uni_find_partyx(%struct.call* %23, i32 %27, i32 %31)
  store %struct.party* %32, %struct.party** %9, align 8
  %33 = load %struct.party*, %struct.party** %9, align 8
  %34 = icmp ne %struct.party* %33, null
  br i1 %34, label %35, label %106

35:                                               ; preds = %22
  %36 = load %struct.call*, %struct.call** %5, align 8
  %37 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %38 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %37, i32 0, i32 1
  %39 = call i32 @handle_bad_drop_cause(%struct.call* %36, i32* %38, i32 1)
  %40 = load %struct.call*, %struct.call** %5, align 8
  %41 = getelementptr inbounds %struct.call, %struct.call* %40, i32 0, i32 0
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = call i32 @uni_vfy_remove_unknown(%struct.TYPE_12__* %42)
  %44 = load %struct.call*, %struct.call** %5, align 8
  %45 = getelementptr inbounds %struct.call, %struct.call* %44, i32 0, i32 0
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %48 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @uni_verify(%struct.TYPE_12__* %46, i32 %51)
  switch i32 %52, label %90 [
    i32 134, label %53
    i32 130, label %54
    i32 131, label %54
    i32 133, label %72
    i32 129, label %73
    i32 128, label %89
    i32 132, label %89
  ]

53:                                               ; preds = %35
  br label %125

54:                                               ; preds = %35, %35
  %55 = load %struct.call*, %struct.call** %5, align 8
  %56 = getelementptr inbounds %struct.call, %struct.call* %55, i32 0, i32 0
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %56, align 8
  %58 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %59 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load %struct.call*, %struct.call** %5, align 8
  %63 = getelementptr inbounds %struct.call, %struct.call* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @map_callstate(i32 %64)
  %66 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %67 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %66, i32 0, i32 0
  %68 = load %struct.party*, %struct.party** %9, align 8
  %69 = getelementptr inbounds %struct.party, %struct.party* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @uni_respond_status_verify(%struct.TYPE_12__* %57, i32* %61, i32 %65, %struct.TYPE_13__* %67, i32 %70)
  br label %72

72:                                               ; preds = %35, %54
  br label %136

73:                                               ; preds = %35
  %74 = load %struct.call*, %struct.call** %5, align 8
  %75 = getelementptr inbounds %struct.call, %struct.call* %74, i32 0, i32 0
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %75, align 8
  %77 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %78 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load %struct.call*, %struct.call** %5, align 8
  %82 = getelementptr inbounds %struct.call, %struct.call* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @map_callstate(i32 %83)
  %85 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %86 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %85, i32 0, i32 0
  %87 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %88 = call i32 @uni_respond_status_verify(%struct.TYPE_12__* %76, i32* %80, i32 %84, %struct.TYPE_13__* %86, i32 %87)
  br label %89

89:                                               ; preds = %35, %35, %73
  br label %90

90:                                               ; preds = %35, %89
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.party*, %struct.party** %9, align 8
  %95 = load i32, i32* @SIGP_DROP_PARTY_ACK, align 4
  %96 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %97 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %98 = call i32 @uni_enq_party(%struct.party* %94, i32 %95, i32 0, %struct.uni_msg* %96, %struct.uni_all* %97)
  br label %141

99:                                               ; preds = %90
  %100 = load %struct.call*, %struct.call** %5, align 8
  %101 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %102 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %103 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %10, align 8
  %104 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %103, i32 0, i32 0
  %105 = call i32 @uni_bad_message(%struct.call* %100, %struct.uni_all* %101, i32 %102, %struct.TYPE_13__* %104, i32 -1)
  br label %106

106:                                              ; preds = %99, %22
  br label %136

107:                                              ; preds = %4
  %108 = load %struct.call*, %struct.call** %5, align 8
  %109 = getelementptr inbounds %struct.call, %struct.call* %108, i32 0, i32 0
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %109, align 8
  %111 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %112 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @uni_verify(%struct.TYPE_12__* %110, i32 %115)
  %117 = load %struct.call*, %struct.call** %5, align 8
  %118 = getelementptr inbounds %struct.call, %struct.call* %117, i32 0, i32 0
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %123 = load i32, i32* @UNI_CAUSE_IE_INV, align 4
  %124 = call i32 @MK_IE_CAUSE(i32 %121, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %107, %53
  %126 = load %struct.call*, %struct.call** %5, align 8
  %127 = getelementptr inbounds %struct.call, %struct.call* %126, i32 0, i32 0
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %127, align 8
  %129 = call i32 @uni_vfy_collect_ies(%struct.TYPE_12__* %128)
  %130 = load %struct.call*, %struct.call** %5, align 8
  %131 = call i32 @clear_callD(%struct.call* %130)
  %132 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %133 = call i32 @uni_msg_destroy(%struct.uni_msg* %132)
  %134 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %135 = call i32 @UNI_FREE(%struct.uni_all* %134)
  br label %141

136:                                              ; preds = %106, %72
  %137 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %138 = call i32 @uni_msg_destroy(%struct.uni_msg* %137)
  %139 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %140 = call i32 @UNI_FREE(%struct.uni_all* %139)
  br label %141

141:                                              ; preds = %136, %125, %93
  ret void
}

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local %struct.party* @uni_find_partyx(%struct.call*, i32, i32) #1

declare dso_local i32 @handle_bad_drop_cause(%struct.call*, i32*, i32) #1

declare dso_local i32 @uni_vfy_remove_unknown(%struct.TYPE_12__*) #1

declare dso_local i32 @uni_verify(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @uni_respond_status_verify(%struct.TYPE_12__*, i32*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @map_callstate(i32) #1

declare dso_local i32 @uni_enq_party(%struct.party*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_bad_message(%struct.call*, %struct.uni_all*, i32, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @uni_vfy_collect_ies(%struct.TYPE_12__*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
