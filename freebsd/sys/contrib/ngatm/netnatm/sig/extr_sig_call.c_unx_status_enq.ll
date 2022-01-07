; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_status_enq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_status_enq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i64, %struct.TYPE_14__*, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.party = type { i32 }

@CALL_ROOT = common dso_local global i64 0, align 8
@CALL_LEAF = common dso_local global i64 0, align 8
@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4
@UNI_STATUS = common dso_local global i32 0, align 4
@UNI_CAUSE_LOC_USER = common dso_local global i32 0, align 4
@UNI_CAUSE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*)* @unx_status_enq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_status_enq(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2) #0 {
  %4 = alloca %struct.call*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_all*, align 8
  %7 = alloca %struct.party*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.call* %0, %struct.call** %4, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %5, align 8
  store %struct.uni_all* %2, %struct.uni_all** %6, align 8
  store %struct.party* null, %struct.party** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %12 = load %struct.call*, %struct.call** %4, align 8
  %13 = getelementptr inbounds %struct.call, %struct.call* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = call i32 @uni_decode_body(%struct.uni_msg* %10, %struct.uni_all* %11, i32* %15)
  %17 = load %struct.call*, %struct.call** %4, align 8
  %18 = getelementptr inbounds %struct.call, %struct.call* %17, i32 0, i32 1
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %18, align 8
  %20 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %21 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @uni_verify(%struct.TYPE_14__* %19, i32 %24)
  switch i32 %25, label %38 [
    i32 134, label %26
    i32 130, label %37
    i32 131, label %37
    i32 129, label %37
    i32 128, label %37
    i32 133, label %37
    i32 132, label %37
  ]

26:                                               ; preds = %3
  %27 = load %struct.call*, %struct.call** %4, align 8
  %28 = getelementptr inbounds %struct.call, %struct.call* %27, i32 0, i32 1
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %28, align 8
  %30 = call i32 @uni_vfy_collect_ies(%struct.TYPE_14__* %29)
  %31 = load %struct.call*, %struct.call** %4, align 8
  %32 = call i32 @clear_callD(%struct.call* %31)
  %33 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %34 = call i32 @uni_msg_destroy(%struct.uni_msg* %33)
  %35 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %36 = call i32 @UNI_FREE(%struct.uni_all* %35)
  br label %155

37:                                               ; preds = %3, %3, %3, %3, %3, %3
  br label %38

38:                                               ; preds = %3, %37
  %39 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %40 = call i32 @uni_msg_destroy(%struct.uni_msg* %39)
  %41 = load %struct.call*, %struct.call** %4, align 8
  %42 = getelementptr inbounds %struct.call, %struct.call* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CALL_ROOT, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load %struct.call*, %struct.call** %4, align 8
  %48 = getelementptr inbounds %struct.call, %struct.call* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CALL_LEAF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %114

52:                                               ; preds = %46, %38
  %53 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %54 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = bitcast %struct.TYPE_15__* %56 to i64*
  %58 = load i64, i64* %57, align 4
  %59 = call i64 @IE_ISGOOD(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %114

61:                                               ; preds = %52
  %62 = load %struct.call*, %struct.call** %4, align 8
  %63 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %64 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = call %struct.party* @uni_find_party(%struct.call* %62, %struct.TYPE_15__* %66)
  store %struct.party* %67, %struct.party** %7, align 8
  %68 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %69 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  %74 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %75 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %9, align 4
  %80 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %81 = call i32 @memset(%struct.uni_all* %80, i32 0, i32 28)
  %82 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %83 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  %91 = zext i1 %90 to i32
  %92 = call i32 @MK_IE_EPREF(i32 %86, i32 %87, i32 %91)
  %93 = load %struct.party*, %struct.party** %7, align 8
  %94 = icmp ne %struct.party* %93, null
  br i1 %94, label %95, label %105

95:                                               ; preds = %61
  %96 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %97 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.party*, %struct.party** %7, align 8
  %102 = getelementptr inbounds %struct.party, %struct.party* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @MK_IE_EPSTATE(i32 %100, i32 %103)
  br label %113

105:                                              ; preds = %61
  %106 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %107 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  %112 = call i32 @MK_IE_EPSTATE(i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %95
  br label %117

114:                                              ; preds = %52, %46
  %115 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %116 = call i32 @memset(%struct.uni_all* %115, i32 0, i32 28)
  br label %117

117:                                              ; preds = %114, %113
  %118 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %119 = load i32, i32* @UNI_STATUS, align 4
  %120 = load %struct.call*, %struct.call** %4, align 8
  %121 = getelementptr inbounds %struct.call, %struct.call* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.call*, %struct.call** %4, align 8
  %124 = getelementptr inbounds %struct.call, %struct.call* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = call i32 @MK_MSG_ORIG(%struct.uni_all* %118, i32 %119, i32 %122, i32 %128)
  %130 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %131 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.call*, %struct.call** %4, align 8
  %136 = getelementptr inbounds %struct.call, %struct.call* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @map_callstate(i32 %137)
  %139 = call i32 @MK_IE_CALLSTATE(i32 %134, i32 %138)
  %140 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %141 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @UNI_CAUSE_LOC_USER, align 4
  %146 = load i32, i32* @UNI_CAUSE_STATUS, align 4
  %147 = call i32 @MK_IE_CAUSE(i32 %144, i32 %145, i32 %146)
  %148 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %149 = load %struct.call*, %struct.call** %4, align 8
  %150 = getelementptr inbounds %struct.call, %struct.call* %149, i32 0, i32 1
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = call i32 @uni_send_output(%struct.uni_all* %148, %struct.TYPE_14__* %151)
  %153 = load %struct.uni_all*, %struct.uni_all** %6, align 8
  %154 = call i32 @UNI_FREE(%struct.uni_all* %153)
  br label %155

155:                                              ; preds = %117, %26
  ret void
}

declare dso_local i32 @uni_decode_body(%struct.uni_msg*, %struct.uni_all*, i32*) #1

declare dso_local i32 @uni_verify(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @uni_vfy_collect_ies(%struct.TYPE_14__*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

declare dso_local i64 @IE_ISGOOD(i64) #1

declare dso_local %struct.party* @uni_find_party(%struct.call*, %struct.TYPE_15__*) #1

declare dso_local i32 @memset(%struct.uni_all*, i32, i32) #1

declare dso_local i32 @MK_IE_EPREF(i32, i32, i32) #1

declare dso_local i32 @MK_IE_EPSTATE(i32, i32) #1

declare dso_local i32 @MK_MSG_ORIG(%struct.uni_all*, i32, i32, i32) #1

declare dso_local i32 @MK_IE_CALLSTATE(i32, i32) #1

declare dso_local i32 @map_callstate(i32) #1

declare dso_local i32 @MK_IE_CAUSE(i32, i32, i32) #1

declare dso_local i32 @uni_send_output(%struct.uni_all*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
