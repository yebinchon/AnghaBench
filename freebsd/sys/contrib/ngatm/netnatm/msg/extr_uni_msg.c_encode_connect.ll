; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_connect = type { %struct.TYPE_65__, %struct.TYPE_63__, %struct.TYPE_61__, %struct.TYPE_59__, %struct.TYPE_56__, %struct.TYPE_54__, %struct.TYPE_52__, %struct.TYPE_50__, %struct.TYPE_48__, %struct.TYPE_45__*, %struct.TYPE_43__, %struct.TYPE_41__, %struct.TYPE_39__, %struct.TYPE_37__, %struct.TYPE_71__, %struct.TYPE_69__, %struct.TYPE_67__, %struct.TYPE_58__, i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_63__ = type { %struct.TYPE_62__ }
%struct.TYPE_62__ = type { i32 }
%struct.TYPE_61__ = type { %struct.TYPE_60__ }
%struct.TYPE_60__ = type { i32 }
%struct.TYPE_59__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_54__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_50__ = type { %struct.TYPE_49__ }
%struct.TYPE_49__ = type { i32 }
%struct.TYPE_48__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_40__ }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_69__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_67__ = type { %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_58__ = type { %struct.TYPE_47__ }
%struct.TYPE_47__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_CONNECT = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_CONNED = common dso_local global i32 0, align 4
@UNI_IE_CONNEDSUB = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_EXQOS = common dso_local global i32 0, align 4
@UNI_IE_FACILITY = common dso_local global i32 0, align 4
@UNI_IE_ABRSETUP = common dso_local global i32 0, align 4
@UNI_IE_ABRADD = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_connect*, %struct.unicx*)* @encode_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_connect(%struct.uni_msg* %0, %struct.uni_connect* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_connect*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_connect* %1, %struct.uni_connect** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %12 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %11, i32 0, i32 18
  %13 = load i32, i32* @UNI_CONNECT, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %433

18:                                               ; preds = %3
  %19 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %20 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %19, i32 0, i32 17
  %21 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_AAL, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %31 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %30, i32 0, i32 17
  %32 = bitcast %struct.TYPE_58__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_AAL, align 4
  store i32 %37, i32* %4, align 4
  br label %433

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %40 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %39, i32 0, i32 16
  %41 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_BLLI, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %51 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %50, i32 0, i32 16
  %52 = bitcast %struct.TYPE_67__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_BLLI, align 4
  store i32 %57, i32* %4, align 4
  br label %433

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %60 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %59, i32 0, i32 15
  %61 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_CONNID, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %71 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %70, i32 0, i32 15
  %72 = bitcast %struct.TYPE_69__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_CONNID, align 4
  store i32 %77, i32* %4, align 4
  br label %433

78:                                               ; preds = %67, %58
  %79 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %80 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %79, i32 0, i32 14
  %81 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_EPREF, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %91 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %90, i32 0, i32 14
  %92 = bitcast %struct.TYPE_71__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %97, i32* %4, align 4
  br label %433

98:                                               ; preds = %87, %78
  %99 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %100 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %99, i32 0, i32 13
  %101 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @UNI_IE_PRESENT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %98
  %108 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %109 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %110 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %111 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %110, i32 0, i32 13
  %112 = bitcast %struct.TYPE_37__* %111 to %union.uni_ieall*
  %113 = load %struct.unicx*, %struct.unicx** %7, align 8
  %114 = call i64 @uni_encode_ie(i32 %108, %struct.uni_msg* %109, %union.uni_ieall* %112, %struct.unicx* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %107
  %117 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %117, i32* %4, align 4
  br label %433

118:                                              ; preds = %107, %98
  %119 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %120 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %119, i32 0, i32 12
  %121 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @UNI_IE_PRESENT, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %138

127:                                              ; preds = %118
  %128 = load i32, i32* @UNI_IE_CONNED, align 4
  %129 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %130 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %131 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %130, i32 0, i32 12
  %132 = bitcast %struct.TYPE_39__* %131 to %union.uni_ieall*
  %133 = load %struct.unicx*, %struct.unicx** %7, align 8
  %134 = call i64 @uni_encode_ie(i32 %128, %struct.uni_msg* %129, %union.uni_ieall* %132, %struct.unicx* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %127
  %137 = load i32, i32* @UNI_IE_CONNED, align 4
  store i32 %137, i32* %4, align 4
  br label %433

138:                                              ; preds = %127, %118
  %139 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %140 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %139, i32 0, i32 11
  %141 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @UNI_IE_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  %149 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %150 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %151 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %150, i32 0, i32 11
  %152 = bitcast %struct.TYPE_41__* %151 to %union.uni_ieall*
  %153 = load %struct.unicx*, %struct.unicx** %7, align 8
  %154 = call i64 @uni_encode_ie(i32 %148, %struct.uni_msg* %149, %union.uni_ieall* %152, %struct.unicx* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @UNI_IE_CONNEDSUB, align 4
  store i32 %157, i32* %4, align 4
  br label %433

158:                                              ; preds = %147, %138
  %159 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %160 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %159, i32 0, i32 10
  %161 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @UNI_IE_PRESENT, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %158
  %168 = load i32, i32* @UNI_IE_EETD, align 4
  %169 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %170 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %171 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %170, i32 0, i32 10
  %172 = bitcast %struct.TYPE_43__* %171 to %union.uni_ieall*
  %173 = load %struct.unicx*, %struct.unicx** %7, align 8
  %174 = call i64 @uni_encode_ie(i32 %168, %struct.uni_msg* %169, %union.uni_ieall* %172, %struct.unicx* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %167
  %177 = load i32, i32* @UNI_IE_EETD, align 4
  store i32 %177, i32* %4, align 4
  br label %433

178:                                              ; preds = %167, %158
  store i64 0, i64* %9, align 8
  br label %179

179:                                              ; preds = %215, %178
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %218

183:                                              ; preds = %179
  %184 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %185 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %184, i32 0, i32 9
  %186 = load %struct.TYPE_45__*, %struct.TYPE_45__** %185, align 8
  %187 = load i64, i64* %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %186, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @UNI_IE_PRESENT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %214

195:                                              ; preds = %183
  %196 = load i32, i32* @UNI_IE_GIT, align 4
  %197 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %198 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %199 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %198, i32 0, i32 9
  %200 = load %struct.TYPE_45__*, %struct.TYPE_45__** %199, align 8
  %201 = load i64, i64* %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %200, i64 %201
  %203 = bitcast %struct.TYPE_45__* %202 to %union.uni_ieall*
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
  br label %433

214:                                              ; preds = %195, %183
  br label %215

215:                                              ; preds = %214
  %216 = load i64, i64* %9, align 8
  %217 = add i64 %216, 1
  store i64 %217, i64* %9, align 8
  br label %179

218:                                              ; preds = %179
  %219 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %220 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %219, i32 0, i32 8
  %221 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @UNI_IE_PRESENT, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %238

227:                                              ; preds = %218
  %228 = load i32, i32* @UNI_IE_UU, align 4
  %229 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %230 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %231 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %230, i32 0, i32 8
  %232 = bitcast %struct.TYPE_48__* %231 to %union.uni_ieall*
  %233 = load %struct.unicx*, %struct.unicx** %7, align 8
  %234 = call i64 @uni_encode_ie(i32 %228, %struct.uni_msg* %229, %union.uni_ieall* %232, %struct.unicx* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %227
  %237 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %237, i32* %4, align 4
  br label %433

238:                                              ; preds = %227, %218
  %239 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %240 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %239, i32 0, i32 7
  %241 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @UNI_IE_PRESENT, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %258

247:                                              ; preds = %238
  %248 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %249 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %250 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %251 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %250, i32 0, i32 7
  %252 = bitcast %struct.TYPE_50__* %251 to %union.uni_ieall*
  %253 = load %struct.unicx*, %struct.unicx** %7, align 8
  %254 = call i64 @uni_encode_ie(i32 %248, %struct.uni_msg* %249, %union.uni_ieall* %252, %struct.unicx* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %247
  %257 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  store i32 %257, i32* %4, align 4
  br label %433

258:                                              ; preds = %247, %238
  %259 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %260 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %259, i32 0, i32 6
  %261 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @UNI_IE_PRESENT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %258
  %268 = load i32, i32* @UNI_IE_EXQOS, align 4
  %269 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %270 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %271 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %270, i32 0, i32 6
  %272 = bitcast %struct.TYPE_52__* %271 to %union.uni_ieall*
  %273 = load %struct.unicx*, %struct.unicx** %7, align 8
  %274 = call i64 @uni_encode_ie(i32 %268, %struct.uni_msg* %269, %union.uni_ieall* %272, %struct.unicx* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %267
  %277 = load i32, i32* @UNI_IE_EXQOS, align 4
  store i32 %277, i32* %4, align 4
  br label %433

278:                                              ; preds = %267, %258
  %279 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %280 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @UNI_IE_PRESENT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %278
  %288 = load i32, i32* @UNI_IE_FACILITY, align 4
  %289 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %290 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %291 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %290, i32 0, i32 5
  %292 = bitcast %struct.TYPE_54__* %291 to %union.uni_ieall*
  %293 = load %struct.unicx*, %struct.unicx** %7, align 8
  %294 = call i64 @uni_encode_ie(i32 %288, %struct.uni_msg* %289, %union.uni_ieall* %292, %struct.unicx* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %287
  %297 = load i32, i32* @UNI_IE_FACILITY, align 4
  store i32 %297, i32* %4, align 4
  br label %433

298:                                              ; preds = %287, %278
  %299 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %300 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %299, i32 0, i32 4
  %301 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @UNI_IE_PRESENT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %298
  %308 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  %309 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %310 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %311 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %310, i32 0, i32 4
  %312 = bitcast %struct.TYPE_56__* %311 to %union.uni_ieall*
  %313 = load %struct.unicx*, %struct.unicx** %7, align 8
  %314 = call i64 @uni_encode_ie(i32 %308, %struct.uni_msg* %309, %union.uni_ieall* %312, %struct.unicx* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %307
  %317 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  store i32 %317, i32* %4, align 4
  br label %433

318:                                              ; preds = %307, %298
  %319 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %320 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* @UNI_IE_PRESENT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %338

327:                                              ; preds = %318
  %328 = load i32, i32* @UNI_IE_ABRADD, align 4
  %329 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %330 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %331 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %330, i32 0, i32 3
  %332 = bitcast %struct.TYPE_59__* %331 to %union.uni_ieall*
  %333 = load %struct.unicx*, %struct.unicx** %7, align 8
  %334 = call i64 @uni_encode_ie(i32 %328, %struct.uni_msg* %329, %union.uni_ieall* %332, %struct.unicx* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %327
  %337 = load i32, i32* @UNI_IE_ABRADD, align 4
  store i32 %337, i32* %4, align 4
  br label %433

338:                                              ; preds = %327, %318
  %339 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %340 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %339, i32 0, i32 2
  %341 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @UNI_IE_PRESENT, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %358

347:                                              ; preds = %338
  %348 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %349 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %350 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %351 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %350, i32 0, i32 2
  %352 = bitcast %struct.TYPE_61__* %351 to %union.uni_ieall*
  %353 = load %struct.unicx*, %struct.unicx** %7, align 8
  %354 = call i64 @uni_encode_ie(i32 %348, %struct.uni_msg* %349, %union.uni_ieall* %352, %struct.unicx* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %358

356:                                              ; preds = %347
  %357 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  store i32 %357, i32* %4, align 4
  br label %433

358:                                              ; preds = %347, %338
  %359 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %360 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %359, i32 0, i32 1
  %361 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* @UNI_IE_PRESENT, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %358
  %368 = load i32, i32* @UNI_IE_REPORT, align 4
  %369 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %370 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %371 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %370, i32 0, i32 1
  %372 = bitcast %struct.TYPE_63__* %371 to %union.uni_ieall*
  %373 = load %struct.unicx*, %struct.unicx** %7, align 8
  %374 = call i64 @uni_encode_ie(i32 %368, %struct.uni_msg* %369, %union.uni_ieall* %372, %struct.unicx* %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %378

376:                                              ; preds = %367
  %377 = load i32, i32* @UNI_IE_REPORT, align 4
  store i32 %377, i32* %4, align 4
  br label %433

378:                                              ; preds = %367, %358
  %379 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %380 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %379, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @UNI_IE_PRESENT, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %378
  %388 = load i32, i32* @UNI_IE_UNREC, align 4
  %389 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %390 = load %struct.uni_connect*, %struct.uni_connect** %6, align 8
  %391 = getelementptr inbounds %struct.uni_connect, %struct.uni_connect* %390, i32 0, i32 0
  %392 = bitcast %struct.TYPE_65__* %391 to %union.uni_ieall*
  %393 = load %struct.unicx*, %struct.unicx** %7, align 8
  %394 = call i64 @uni_encode_ie(i32 %388, %struct.uni_msg* %389, %union.uni_ieall* %392, %struct.unicx* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %397, i32* %4, align 4
  br label %433

398:                                              ; preds = %387, %378
  %399 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %400 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %399, i32 0, i32 1
  %401 = load i64, i64* %400, align 8
  %402 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %403 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %402, i32 0, i32 2
  %404 = load i64, i64* %403, align 8
  %405 = sub i64 %401, %404
  %406 = load i64, i64* %8, align 8
  %407 = sub i64 %405, %406
  %408 = sub i64 %407, 2
  %409 = lshr i64 %408, 8
  %410 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %411 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %410, i32 0, i32 0
  %412 = load i64*, i64** %411, align 8
  %413 = load i64, i64* %8, align 8
  %414 = add i64 %413, 0
  %415 = getelementptr inbounds i64, i64* %412, i64 %414
  store i64 %409, i64* %415, align 8
  %416 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %417 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %420 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = sub i64 %418, %421
  %423 = load i64, i64* %8, align 8
  %424 = sub i64 %422, %423
  %425 = sub i64 %424, 2
  %426 = lshr i64 %425, 0
  %427 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %428 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %427, i32 0, i32 0
  %429 = load i64*, i64** %428, align 8
  %430 = load i64, i64* %8, align 8
  %431 = add i64 %430, 1
  %432 = getelementptr inbounds i64, i64* %429, i64 %431
  store i64 %426, i64* %432, align 8
  store i32 0, i32* %4, align 4
  br label %433

433:                                              ; preds = %398, %396, %376, %356, %336, %316, %296, %276, %256, %236, %207, %176, %156, %136, %116, %96, %76, %56, %36, %17
  %434 = load i32, i32* %4, align 4
  ret i32 %434
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
