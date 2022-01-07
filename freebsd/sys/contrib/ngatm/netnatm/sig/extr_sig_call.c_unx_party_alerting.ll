; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_party_alerting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/sig/extr_sig_call.c_unx_party_alerting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.call = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.uni_msg = type { i32 }
%struct.uni_all = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64, i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.party = type { i32 }

@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IERR_BAD = common dso_local global i32 0, align 4
@UNI_CAUSE_ENDP_INV = common dso_local global i32 0, align 4
@UNI_EPSTATE_NULL = common dso_local global i32 0, align 4
@UNI_EPSTATE_ALERT_RCVD = common dso_local global i32 0, align 4
@SIGP_PARTY_ALERTING = common dso_local global i32 0, align 4
@UNI_CAUSE_MSG_INCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.call*, %struct.uni_msg*, %struct.uni_all*, i32)* @unx_party_alerting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unx_party_alerting(%struct.call* %0, %struct.uni_msg* %1, %struct.uni_all* %2, i32 %3) #0 {
  %5 = alloca %struct.call*, align 8
  %6 = alloca %struct.uni_msg*, align 8
  %7 = alloca %struct.uni_all*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.party*, align 8
  store %struct.call* %0, %struct.call** %5, align 8
  store %struct.uni_msg* %1, %struct.uni_msg** %6, align 8
  store %struct.uni_all* %2, %struct.uni_all** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.party* null, %struct.party** %9, align 8
  %10 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %11 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 0
  %14 = bitcast %struct.TYPE_20__* %13 to { i64, i64 }*
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @IE_ISGOOD(i64 %16, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %75

21:                                               ; preds = %4
  %22 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %23 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %31 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 0
  %34 = bitcast %struct.TYPE_20__* %33 to { i64, i64 }*
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @IE_SETERROR(i64 %36, i64 %38)
  %40 = load %struct.call*, %struct.call** %5, align 8
  %41 = getelementptr inbounds %struct.call, %struct.call* %40, i32 0, i32 1
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* @UNI_IE_EPREF, align 4
  %45 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %46 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @UNI_IERR_BAD, align 4
  %53 = call i32 @UNI_SAVE_IERR(i32* %43, i32 %44, i32 %51, i32 %52)
  br label %74

54:                                               ; preds = %21
  %55 = load %struct.call*, %struct.call** %5, align 8
  %56 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %57 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call %struct.party* @uni_find_partyx(%struct.call* %55, i32 %61, i32 1)
  store %struct.party* %62, %struct.party** %9, align 8
  %63 = load %struct.party*, %struct.party** %9, align 8
  %64 = icmp eq %struct.party* %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %54
  %66 = load %struct.call*, %struct.call** %5, align 8
  %67 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %68 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  %71 = load i32, i32* @UNI_CAUSE_ENDP_INV, align 4
  %72 = call i32 @respond_drop_party_ack(%struct.call* %66, %struct.TYPE_20__* %70, i32 %71)
  br label %214

73:                                               ; preds = %54
  br label %74

74:                                               ; preds = %73, %29
  br label %75

75:                                               ; preds = %74, %4
  %76 = load %struct.call*, %struct.call** %5, align 8
  %77 = getelementptr inbounds %struct.call, %struct.call* %76, i32 0, i32 1
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %80 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = call i32 @uni_mandate_epref(%struct.TYPE_19__* %78, %struct.TYPE_20__* %82)
  %84 = load %struct.call*, %struct.call** %5, align 8
  %85 = getelementptr inbounds %struct.call, %struct.call* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %88 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @uni_verify(%struct.TYPE_19__* %86, i32 %91)
  switch i32 %92, label %181 [
    i32 134, label %93
    i32 130, label %100
    i32 131, label %100
    i32 133, label %128
    i32 129, label %129
    i32 128, label %129
    i32 132, label %167
  ]

93:                                               ; preds = %75
  %94 = load %struct.call*, %struct.call** %5, align 8
  %95 = getelementptr inbounds %struct.call, %struct.call* %94, i32 0, i32 1
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = call i32 @uni_vfy_collect_ies(%struct.TYPE_19__* %96)
  %98 = load %struct.call*, %struct.call** %5, align 8
  %99 = call i32 @clear_callD(%struct.call* %98)
  br label %214

100:                                              ; preds = %75, %75
  br label %101

101:                                              ; preds = %179, %100
  %102 = load %struct.call*, %struct.call** %5, align 8
  %103 = getelementptr inbounds %struct.call, %struct.call* %102, i32 0, i32 1
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %103, align 8
  %105 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %106 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load %struct.call*, %struct.call** %5, align 8
  %110 = getelementptr inbounds %struct.call, %struct.call* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @map_callstate(i32 %111)
  %113 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %114 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  %117 = load %struct.party*, %struct.party** %9, align 8
  %118 = icmp ne %struct.party* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %101
  %120 = load %struct.party*, %struct.party** %9, align 8
  %121 = getelementptr inbounds %struct.party, %struct.party* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  br label %125

123:                                              ; preds = %101
  %124 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  br label %125

125:                                              ; preds = %123, %119
  %126 = phi i32 [ %122, %119 ], [ %124, %123 ]
  %127 = call i32 @uni_respond_status_verify(%struct.TYPE_19__* %104, i32* %108, i32 %112, %struct.TYPE_20__* %116, i32 %126)
  br label %128

128:                                              ; preds = %75, %125
  br label %214

129:                                              ; preds = %75, %75
  %130 = load %struct.call*, %struct.call** %5, align 8
  %131 = getelementptr inbounds %struct.call, %struct.call* %130, i32 0, i32 1
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %134 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 0
  %137 = load %struct.call*, %struct.call** %5, align 8
  %138 = getelementptr inbounds %struct.call, %struct.call* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @map_callstate(i32 %139)
  %141 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %142 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.party*, %struct.party** %9, align 8
  %146 = icmp ne %struct.party* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = load i32, i32* @UNI_EPSTATE_ALERT_RCVD, align 4
  br label %151

149:                                              ; preds = %129
  %150 = load i32, i32* @UNI_EPSTATE_NULL, align 4
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i32 [ %148, %147 ], [ %150, %149 ]
  %153 = call i32 @uni_respond_status_verify(%struct.TYPE_19__* %132, i32* %136, i32 %140, %struct.TYPE_20__* %144, i32 %152)
  %154 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %155 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %156, i32 0, i32 0
  %158 = bitcast %struct.TYPE_20__* %157 to { i64, i64 }*
  %159 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %158, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @IE_ISGOOD(i64 %160, i64 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %151
  br label %214

166:                                              ; preds = %151
  br label %181

167:                                              ; preds = %75
  %168 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %169 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = bitcast %struct.TYPE_20__* %171 to { i64, i64 }*
  %173 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %172, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @IE_ISGOOD(i64 %174, i64 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %167
  br label %101

180:                                              ; preds = %167
  br label %181

181:                                              ; preds = %75, %180, %166
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %181
  %185 = load %struct.party*, %struct.party** %9, align 8
  %186 = load i32, i32* @SIGP_PARTY_ALERTING, align 4
  %187 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %188 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %189 = call i32 @uni_enq_party(%struct.party* %185, i32 %186, i32 0, %struct.uni_msg* %187, %struct.uni_all* %188)
  br label %219

190:                                              ; preds = %181
  %191 = load %struct.party*, %struct.party** %9, align 8
  %192 = icmp eq %struct.party* %191, null
  br i1 %192, label %193, label %201

193:                                              ; preds = %190
  %194 = load %struct.call*, %struct.call** %5, align 8
  %195 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %196 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* @UNI_CAUSE_ENDP_INV, align 4
  %200 = call i32 @respond_drop_party_ack(%struct.call* %194, %struct.TYPE_20__* %198, i32 %199)
  br label %213

201:                                              ; preds = %190
  %202 = load %struct.call*, %struct.call** %5, align 8
  %203 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %204 = load i32, i32* @UNI_CAUSE_MSG_INCOMP, align 4
  %205 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %206 = getelementptr inbounds %struct.uni_all, %struct.uni_all* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load %struct.party*, %struct.party** %9, align 8
  %210 = getelementptr inbounds %struct.party, %struct.party* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @uni_bad_message(%struct.call* %202, %struct.uni_all* %203, i32 %204, %struct.TYPE_20__* %208, i32 %211)
  br label %213

213:                                              ; preds = %201, %193
  br label %214

214:                                              ; preds = %213, %165, %128, %93, %65
  %215 = load %struct.uni_msg*, %struct.uni_msg** %6, align 8
  %216 = call i32 @uni_msg_destroy(%struct.uni_msg* %215)
  %217 = load %struct.uni_all*, %struct.uni_all** %7, align 8
  %218 = call i32 @UNI_FREE(%struct.uni_all* %217)
  br label %219

219:                                              ; preds = %214, %184
  ret void
}

declare dso_local i64 @IE_ISGOOD(i64, i64) #1

declare dso_local i32 @IE_SETERROR(i64, i64) #1

declare dso_local i32 @UNI_SAVE_IERR(i32*, i32, i32, i32) #1

declare dso_local %struct.party* @uni_find_partyx(%struct.call*, i32, i32) #1

declare dso_local i32 @respond_drop_party_ack(%struct.call*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @uni_mandate_epref(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @uni_verify(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @uni_vfy_collect_ies(%struct.TYPE_19__*) #1

declare dso_local i32 @clear_callD(%struct.call*) #1

declare dso_local i32 @uni_respond_status_verify(%struct.TYPE_19__*, i32*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @map_callstate(i32) #1

declare dso_local i32 @uni_enq_party(%struct.party*, i32, i32, %struct.uni_msg*, %struct.uni_all*) #1

declare dso_local i32 @uni_bad_message(%struct.call*, %struct.uni_all*, i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @uni_msg_destroy(%struct.uni_msg*) #1

declare dso_local i32 @UNI_FREE(%struct.uni_all*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
