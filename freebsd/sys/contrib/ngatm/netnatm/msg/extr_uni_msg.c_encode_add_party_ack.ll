; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_add_party_ack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_add_party_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_add_party_ack = type { %struct.TYPE_36__, %struct.TYPE_34__, %struct.TYPE_31__*, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_43__, %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_37__, i32 }
%struct.TYPE_36__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_34__ = type { %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_30__ }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_ADD_PARTY_ACK = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_CONNED = common dso_local global i32 0, align 4
@UNI_IE_CONNEDSUB = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_add_party_ack*, %struct.unicx*)* @encode_add_party_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_add_party_ack(%struct.uni_msg* %0, %struct.uni_add_party_ack* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_add_party_ack*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_add_party_ack* %1, %struct.uni_add_party_ack** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %12 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %11, i32 0, i32 11
  %13 = load i32, i32* @UNI_ADD_PARTY_ACK, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %293

18:                                               ; preds = %3
  %19 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %20 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %19, i32 0, i32 10
  %21 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_EPREF, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %31 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %30, i32 0, i32 10
  %32 = bitcast %struct.TYPE_37__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %37, i32* %4, align 4
  br label %293

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %40 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %39, i32 0, i32 9
  %41 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_AAL, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %51 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %50, i32 0, i32 9
  %52 = bitcast %struct.TYPE_39__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_AAL, align 4
  store i32 %57, i32* %4, align 4
  br label %293

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %60 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %59, i32 0, i32 8
  %61 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_BLLI, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %71 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %70, i32 0, i32 8
  %72 = bitcast %struct.TYPE_41__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_BLLI, align 4
  store i32 %77, i32* %4, align 4
  br label %293

78:                                               ; preds = %67, %58
  %79 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %80 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %91 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %90, i32 0, i32 7
  %92 = bitcast %struct.TYPE_43__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %97, i32* %4, align 4
  br label %293

98:                                               ; preds = %87, %78
  %99 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %100 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UNI_IE_PRESENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load i32, i32* @UNI_IE_EETD, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %111 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %110, i32 0, i32 6
  %112 = bitcast %struct.TYPE_23__* %111 to %union.uni_ieall*
  %113 = load %struct.unicx*, %struct.unicx** %7, align 8
  %114 = call i64 @uni_encode_ie(i32 %108, %struct.uni_msg* %109, %union.uni_ieall* %112, %struct.unicx* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @UNI_IE_EETD, align 4
  store i32 %117, i32* %4, align 4
  br label %293

118:                                              ; preds = %107, %98
  %119 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %120 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %119, i32 0, i32 5
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @UNI_IE_PRESENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load i32, i32* @UNI_IE_CONNED, align 4
  %129 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %130 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %131 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %130, i32 0, i32 5
  %132 = bitcast %struct.TYPE_25__* %131 to %union.uni_ieall*
  %133 = load %struct.unicx*, %struct.unicx** %7, align 8
  %134 = call i64 @uni_encode_ie(i32 %128, %struct.uni_msg* %129, %union.uni_ieall* %132, %struct.unicx* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @UNI_IE_CONNED, align 4
  store i32 %137, i32* %4, align 4
  br label %293

138:                                              ; preds = %127, %118
  %139 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %140 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UNI_IE_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  %149 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %150 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %151 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %150, i32 0, i32 4
  %152 = bitcast %struct.TYPE_27__* %151 to %union.uni_ieall*
  %153 = load %struct.unicx*, %struct.unicx** %7, align 8
  %154 = call i64 @uni_encode_ie(i32 %148, %struct.uni_msg* %149, %union.uni_ieall* %152, %struct.unicx* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  store i32 %157, i32* %4, align 4
  br label %293

158:                                              ; preds = %147, %138
  %159 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %160 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @UNI_IE_PRESENT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load i32, i32* @UNI_IE_UU, align 4
  %169 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %170 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %171 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %170, i32 0, i32 3
  %172 = bitcast %struct.TYPE_29__* %171 to %union.uni_ieall*
  %173 = load %struct.unicx*, %struct.unicx** %7, align 8
  %174 = call i64 @uni_encode_ie(i32 %168, %struct.uni_msg* %169, %union.uni_ieall* %172, %struct.unicx* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %177, i32* %4, align 4
  br label %293

178:                                              ; preds = %167, %158
  store i64 0, i64* %9, align 8
  br label %179

179:                                              ; preds = %215, %178
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %179
  %184 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %185 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %184, i32 0, i32 2
  %186 = load %struct.TYPE_31__*, %struct.TYPE_31__** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @UNI_IE_PRESENT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %183
  %196 = load i32, i32* @UNI_IE_GIT, align 4
  %197 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %198 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %199 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %198, i32 0, i32 2
  %200 = load %struct.TYPE_31__*, %struct.TYPE_31__** %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %200, i64 %201
  %203 = bitcast %struct.TYPE_31__* %202 to %union.uni_ieall*
  %204 = load %struct.unicx*, %struct.unicx** %7, align 8
  %205 = call i64 @uni_encode_ie(i32 %196, %struct.uni_msg* %197, %union.uni_ieall* %203, %struct.unicx* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %195
  %208 = load i64, i64* %9, align 8
  %209 = shl i64 %208, 16
  %210 = load i32, i32* @UNI_IE_GIT, align 4
  %211 = sext i32 %210 to i64
  %212 = add i64 %209, %211
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %4, align 4
  br label %293

214:                                              ; preds = %195, %183
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %9, align 8
  br label %179

218:                                              ; preds = %179
  %219 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %220 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @UNI_IE_PRESENT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %218
  %228 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %229 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %230 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %231 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %230, i32 0, i32 1
  %232 = bitcast %struct.TYPE_34__* %231 to %union.uni_ieall*
  %233 = load %struct.unicx*, %struct.unicx** %7, align 8
  %234 = call i64 @uni_encode_ie(i32 %228, %struct.uni_msg* %229, %union.uni_ieall* %232, %struct.unicx* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  store i32 %237, i32* %4, align 4
  br label %293

238:                                              ; preds = %227, %218
  %239 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %240 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @UNI_IE_PRESENT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %238
  %248 = load i32, i32* @UNI_IE_UNREC, align 4
  %249 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %250 = load %struct.uni_add_party_ack*, %struct.uni_add_party_ack** %6, align 8
  %251 = getelementptr inbounds %struct.uni_add_party_ack, %struct.uni_add_party_ack* %250, i32 0, i32 0
  %252 = bitcast %struct.TYPE_36__* %251 to %union.uni_ieall*
  %253 = load %struct.unicx*, %struct.unicx** %7, align 8
  %254 = call i64 @uni_encode_ie(i32 %248, %struct.uni_msg* %249, %union.uni_ieall* %252, %struct.unicx* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %247
  %257 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %257, i32* %4, align 4
  br label %293

258:                                              ; preds = %247, %238
  %259 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %260 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %263 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = sub i64 %261, %264
  %266 = load i64, i64* %8, align 8
  %267 = sub i64 %265, %266
  %268 = sub i64 %267, 2
  %269 = lshr i64 %268, 8
  %270 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %271 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %270, i32 0, i32 0
  %272 = load i64*, i64** %271, align 8
  %273 = load i64, i64* %8, align 8
  %274 = add i64 %273, 0
  %275 = getelementptr inbounds i64, i64* %272, i64 %274
  store i64 %269, i64* %275, align 8
  %276 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %277 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %276, i32 0, i32 1
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %280 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %279, i32 0, i32 2
  %281 = load i64, i64* %280, align 8
  %282 = sub i64 %278, %281
  %283 = load i64, i64* %8, align 8
  %284 = sub i64 %282, %283
  %285 = sub i64 %284, 2
  %286 = lshr i64 %285, 0
  %287 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %288 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %287, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = load i64, i64* %8, align 8
  %291 = add i64 %290, 1
  %292 = getelementptr inbounds i64, i64* %289, i64 %291
  store i64 %286, i64* %292, align 8
  store i32 0, i32* %4, align 4
  br label %293

293:                                              ; preds = %258, %256, %236, %207, %176, %156, %136, %116, %96, %76, %56, %36, %17
  %294 = load i32, i32* %4, align 4
  ret i32 %294
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
