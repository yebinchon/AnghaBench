; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_drop_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_drop_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_drop_party_ack = type { %struct.TYPE_11__, %struct.TYPE_19__*, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_DROP_PARTY_ACK = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_CAUSE = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_drop_party_ack*, %struct.unicx*)* @encode_drop_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_drop_party_ack(%struct.uni_msg* %0, %struct.uni_drop_party_ack* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_drop_party_ack*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_drop_party_ack* %1, %struct.uni_drop_party_ack** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %12 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %11, i32 0, i32 5
  %13 = load i32, i32* @UNI_DROP_PARTY_ACK, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %173

18:                                               ; preds = %3
  %19 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %20 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_EPREF, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %31 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %30, i32 0, i32 4
  %32 = bitcast %struct.TYPE_13__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %37, i32* %4, align 4
  br label %173

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %40 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_CAUSE, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %51 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %50, i32 0, i32 3
  %52 = bitcast %struct.TYPE_15__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_CAUSE, align 4
  store i32 %57, i32* %4, align 4
  br label %173

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %60 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_UU, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %71 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_17__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %77, i32* %4, align 4
  br label %173

78:                                               ; preds = %67, %58
  store i64 0, i64* %9, align 8
  br label %79

79:                                               ; preds = %115, %78
  %80 = load i64, i64* %9, align 8
  %81 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %79
  %84 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %85 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @UNI_IE_PRESENT, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %83
  %96 = load i32, i32* @UNI_IE_GIT, align 4
  %97 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %98 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %99 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %98, i32 0, i32 1
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 %101
  %103 = bitcast %struct.TYPE_19__* %102 to %union.uni_ieall*
  %104 = load %struct.unicx*, %struct.unicx** %7, align 8
  %105 = call i64 @uni_encode_ie(i32 %96, %struct.uni_msg* %97, %union.uni_ieall* %103, %struct.unicx* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %95
  %108 = load i64, i64* %9, align 8
  %109 = shl i64 %108, 16
  %110 = load i32, i32* @UNI_IE_GIT, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 %109, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %4, align 4
  br label %173

114:                                              ; preds = %95, %83
  br label %115

115:                                              ; preds = %114
  %116 = load i64, i64* %9, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %9, align 8
  br label %79

118:                                              ; preds = %79
  %119 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %120 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @UNI_IE_PRESENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load i32, i32* @UNI_IE_UNREC, align 4
  %129 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %130 = load %struct.uni_drop_party_ack*, %struct.uni_drop_party_ack** %6, align 8
  %131 = getelementptr inbounds %struct.uni_drop_party_ack, %struct.uni_drop_party_ack* %130, i32 0, i32 0
  %132 = bitcast %struct.TYPE_11__* %131 to %union.uni_ieall*
  %133 = load %struct.unicx*, %struct.unicx** %7, align 8
  %134 = call i64 @uni_encode_ie(i32 %128, %struct.uni_msg* %129, %union.uni_ieall* %132, %struct.unicx* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %137, i32* %4, align 4
  br label %173

138:                                              ; preds = %127, %118
  %139 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %140 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %143 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = sub i64 %141, %144
  %146 = load i64, i64* %8, align 8
  %147 = sub i64 %145, %146
  %148 = sub i64 %147, 2
  %149 = lshr i64 %148, 8
  %150 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %151 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %150, i32 0, i32 0
  %152 = load i64*, i64** %151, align 8
  %153 = load i64, i64* %8, align 8
  %154 = add i64 %153, 0
  %155 = getelementptr inbounds i64, i64* %152, i64 %154
  store i64 %149, i64* %155, align 8
  %156 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %157 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %160 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %158, %161
  %163 = load i64, i64* %8, align 8
  %164 = sub i64 %162, %163
  %165 = sub i64 %164, 2
  %166 = lshr i64 %165, 0
  %167 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %168 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %167, i32 0, i32 0
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* %8, align 8
  %171 = add i64 %170, 1
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  store i64 %166, i64* %172, align 8
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %138, %136, %107, %76, %56, %36, %17
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
