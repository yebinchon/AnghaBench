; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_modify_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_modify_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_modify_req = type { %struct.TYPE_15__, %struct.TYPE_13__*, %struct.TYPE_23__, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_MODIFY_REQ = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_ATRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_MINTRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_modify_req*, %struct.unicx*)* @encode_modify_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_modify_req(%struct.uni_msg* %0, %struct.uni_modify_req* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_modify_req*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_modify_req* %1, %struct.uni_modify_req** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %12 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %11, i32 0, i32 6
  %13 = load i32, i32* @UNI_MODIFY_REQ, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %193

18:                                               ; preds = %3
  %19 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %20 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %31 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %30, i32 0, i32 5
  %32 = bitcast %struct.TYPE_17__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  store i32 %37, i32* %4, align 4
  br label %193

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %40 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %51 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %50, i32 0, i32 4
  %52 = bitcast %struct.TYPE_19__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  store i32 %57, i32* %4, align 4
  br label %193

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %60 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %71 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %70, i32 0, i32 3
  %72 = bitcast %struct.TYPE_21__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  store i32 %77, i32* %4, align 4
  br label %193

78:                                               ; preds = %67, %58
  %79 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %80 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %91 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %90, i32 0, i32 2
  %92 = bitcast %struct.TYPE_23__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %97, i32* %4, align 4
  br label %193

98:                                               ; preds = %87, %78
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %135, %98
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %105 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %104, i32 0, i32 1
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UNI_IE_PRESENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %103
  %116 = load i32, i32* @UNI_IE_GIT, align 4
  %117 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %118 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %119 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %118, i32 0, i32 1
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 %121
  %123 = bitcast %struct.TYPE_13__* %122 to %union.uni_ieall*
  %124 = load %struct.unicx*, %struct.unicx** %7, align 8
  %125 = call i64 @uni_encode_ie(i32 %116, %struct.uni_msg* %117, %union.uni_ieall* %123, %struct.unicx* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %115
  %128 = load i64, i64* %9, align 8
  %129 = shl i64 %128, 16
  %130 = load i32, i32* @UNI_IE_GIT, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %193

134:                                              ; preds = %115, %103
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %99

138:                                              ; preds = %99
  %139 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %140 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @UNI_IE_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i32, i32* @UNI_IE_UNREC, align 4
  %149 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %150 = load %struct.uni_modify_req*, %struct.uni_modify_req** %6, align 8
  %151 = getelementptr inbounds %struct.uni_modify_req, %struct.uni_modify_req* %150, i32 0, i32 0
  %152 = bitcast %struct.TYPE_15__* %151 to %union.uni_ieall*
  %153 = load %struct.unicx*, %struct.unicx** %7, align 8
  %154 = call i64 @uni_encode_ie(i32 %148, %struct.uni_msg* %149, %union.uni_ieall* %152, %struct.unicx* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %157, i32* %4, align 4
  br label %193

158:                                              ; preds = %147, %138
  %159 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %160 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %163 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = sub i64 %161, %164
  %166 = load i64, i64* %8, align 8
  %167 = sub i64 %165, %166
  %168 = sub i64 %167, 2
  %169 = lshr i64 %168, 8
  %170 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %171 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = load i64, i64* %8, align 8
  %174 = add i64 %173, 0
  %175 = getelementptr inbounds i64, i64* %172, i64 %174
  store i64 %169, i64* %175, align 8
  %176 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %177 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %180 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = sub i64 %178, %181
  %183 = load i64, i64* %8, align 8
  %184 = sub i64 %182, %183
  %185 = sub i64 %184, 2
  %186 = lshr i64 %185, 0
  %187 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %188 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = load i64, i64* %8, align 8
  %191 = add i64 %190, 1
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  store i64 %186, i64* %192, align 8
  store i32 0, i32* %4, align 4
  br label %193

193:                                              ; preds = %158, %156, %127, %96, %76, %56, %36, %17
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
