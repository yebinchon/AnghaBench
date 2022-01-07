; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_add_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_encode_add_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i64*, i64, i64 }
%struct.uni_add_party = type { %struct.TYPE_43__, %struct.TYPE_41__*, %struct.TYPE_79__, %struct.TYPE_77__, %struct.TYPE_75__, %struct.TYPE_62__, %struct.TYPE_74__*, %struct.TYPE_71__, %struct.TYPE_69__, %struct.TYPE_67__, %struct.TYPE_65__, %struct.TYPE_63__*, %struct.TYPE_60__, %struct.TYPE_58__*, %struct.TYPE_56__, %struct.TYPE_54__*, %struct.TYPE_52__, %struct.TYPE_49__, %struct.TYPE_47__, %struct.TYPE_45__, i32 }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_41__ = type { %struct.TYPE_80__ }
%struct.TYPE_80__ = type { i32 }
%struct.TYPE_79__ = type { %struct.TYPE_78__ }
%struct.TYPE_78__ = type { i32 }
%struct.TYPE_77__ = type { %struct.TYPE_76__ }
%struct.TYPE_76__ = type { i32 }
%struct.TYPE_75__ = type { %struct.TYPE_73__ }
%struct.TYPE_73__ = type { i32 }
%struct.TYPE_62__ = type { %struct.TYPE_51__ }
%struct.TYPE_51__ = type { i32 }
%struct.TYPE_74__ = type { %struct.TYPE_72__ }
%struct.TYPE_72__ = type { i32 }
%struct.TYPE_71__ = type { %struct.TYPE_70__ }
%struct.TYPE_70__ = type { i32 }
%struct.TYPE_69__ = type { %struct.TYPE_68__ }
%struct.TYPE_68__ = type { i32 }
%struct.TYPE_67__ = type { %struct.TYPE_66__ }
%struct.TYPE_66__ = type { i32 }
%struct.TYPE_65__ = type { %struct.TYPE_64__ }
%struct.TYPE_64__ = type { i32 }
%struct.TYPE_63__ = type { %struct.TYPE_61__ }
%struct.TYPE_61__ = type { i32 }
%struct.TYPE_60__ = type { %struct.TYPE_59__ }
%struct.TYPE_59__ = type { i32 }
%struct.TYPE_58__ = type { %struct.TYPE_57__ }
%struct.TYPE_57__ = type { i32 }
%struct.TYPE_56__ = type { %struct.TYPE_55__ }
%struct.TYPE_55__ = type { i32 }
%struct.TYPE_54__ = type { %struct.TYPE_53__ }
%struct.TYPE_53__ = type { i32 }
%struct.TYPE_52__ = type { %struct.TYPE_50__ }
%struct.TYPE_50__ = type { i32 }
%struct.TYPE_49__ = type { %struct.TYPE_48__ }
%struct.TYPE_48__ = type { i32 }
%struct.TYPE_47__ = type { %struct.TYPE_46__ }
%struct.TYPE_46__ = type { i32 }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_ADD_PARTY = common dso_local global i32 0, align 4
@UNI_IE_PRESENT = common dso_local global i32 0, align 4
@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_BHLI = common dso_local global i32 0, align 4
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_SCOMPL = common dso_local global i32 0, align 4
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_CALLING_SOFT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_IE_DTL = common dso_local global i32 0, align 4
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_msg*, %struct.uni_add_party*, %struct.unicx*)* @encode_add_party to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_add_party(%struct.uni_msg* %0, %struct.uni_add_party* %1, %struct.unicx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uni_msg*, align 8
  %6 = alloca %struct.uni_add_party*, align 8
  %7 = alloca %struct.unicx*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.uni_msg* %0, %struct.uni_msg** %5, align 8
  store %struct.uni_add_party* %1, %struct.uni_add_party** %6, align 8
  store %struct.unicx* %2, %struct.unicx** %7, align 8
  %10 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %11 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %12 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %11, i32 0, i32 20
  %13 = load i32, i32* @UNI_ADD_PARTY, align 4
  %14 = load %struct.unicx*, %struct.unicx** %7, align 8
  %15 = call i64 @uni_encode_msg_hdr(%struct.uni_msg* %10, i32* %12, i32 %13, %struct.unicx* %14, i64* %8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %554

18:                                               ; preds = %3
  %19 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %20 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %19, i32 0, i32 19
  %21 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @UNI_IE_PRESENT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %18
  %28 = load i32, i32* @UNI_IE_AAL, align 4
  %29 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %30 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %31 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %30, i32 0, i32 19
  %32 = bitcast %struct.TYPE_45__* %31 to %union.uni_ieall*
  %33 = load %struct.unicx*, %struct.unicx** %7, align 8
  %34 = call i64 @uni_encode_ie(i32 %28, %struct.uni_msg* %29, %union.uni_ieall* %32, %struct.unicx* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @UNI_IE_AAL, align 4
  store i32 %37, i32* %4, align 4
  br label %554

38:                                               ; preds = %27, %18
  %39 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %40 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %39, i32 0, i32 18
  %41 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNI_IE_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %38
  %48 = load i32, i32* @UNI_IE_BHLI, align 4
  %49 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %50 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %51 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %50, i32 0, i32 18
  %52 = bitcast %struct.TYPE_47__* %51 to %union.uni_ieall*
  %53 = load %struct.unicx*, %struct.unicx** %7, align 8
  %54 = call i64 @uni_encode_ie(i32 %48, %struct.uni_msg* %49, %union.uni_ieall* %52, %struct.unicx* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load i32, i32* @UNI_IE_BHLI, align 4
  store i32 %57, i32* %4, align 4
  br label %554

58:                                               ; preds = %47, %38
  %59 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %60 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %59, i32 0, i32 17
  %61 = getelementptr inbounds %struct.TYPE_49__, %struct.TYPE_49__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @UNI_IE_PRESENT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* @UNI_IE_BLLI, align 4
  %69 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %70 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %71 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %70, i32 0, i32 17
  %72 = bitcast %struct.TYPE_49__* %71 to %union.uni_ieall*
  %73 = load %struct.unicx*, %struct.unicx** %7, align 8
  %74 = call i64 @uni_encode_ie(i32 %68, %struct.uni_msg* %69, %union.uni_ieall* %72, %struct.unicx* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %67
  %77 = load i32, i32* @UNI_IE_BLLI, align 4
  store i32 %77, i32* %4, align 4
  br label %554

78:                                               ; preds = %67, %58
  %79 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %80 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %79, i32 0, i32 16
  %81 = getelementptr inbounds %struct.TYPE_52__, %struct.TYPE_52__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_50__, %struct.TYPE_50__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @UNI_IE_PRESENT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = load i32, i32* @UNI_IE_CALLED, align 4
  %89 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %90 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %91 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %90, i32 0, i32 16
  %92 = bitcast %struct.TYPE_52__* %91 to %union.uni_ieall*
  %93 = load %struct.unicx*, %struct.unicx** %7, align 8
  %94 = call i64 @uni_encode_ie(i32 %88, %struct.uni_msg* %89, %union.uni_ieall* %92, %struct.unicx* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @UNI_IE_CALLED, align 4
  store i32 %97, i32* %4, align 4
  br label %554

98:                                               ; preds = %87, %78
  store i64 0, i64* %9, align 8
  br label %99

99:                                               ; preds = %135, %98
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %138

103:                                              ; preds = %99
  %104 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %105 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %104, i32 0, i32 15
  %106 = load %struct.TYPE_54__*, %struct.TYPE_54__** %105, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_53__, %struct.TYPE_53__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UNI_IE_PRESENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %134

115:                                              ; preds = %103
  %116 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %117 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %118 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %119 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %118, i32 0, i32 15
  %120 = load %struct.TYPE_54__*, %struct.TYPE_54__** %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_54__, %struct.TYPE_54__* %120, i64 %121
  %123 = bitcast %struct.TYPE_54__* %122 to %union.uni_ieall*
  %124 = load %struct.unicx*, %struct.unicx** %7, align 8
  %125 = call i64 @uni_encode_ie(i32 %116, %struct.uni_msg* %117, %union.uni_ieall* %123, %struct.unicx* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %115
  %128 = load i64, i64* %9, align 8
  %129 = shl i64 %128, 16
  %130 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %131 = sext i32 %130 to i64
  %132 = add i64 %129, %131
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %4, align 4
  br label %554

134:                                              ; preds = %115, %103
  br label %135

135:                                              ; preds = %134
  %136 = load i64, i64* %9, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %9, align 8
  br label %99

138:                                              ; preds = %99
  %139 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %140 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %139, i32 0, i32 14
  %141 = getelementptr inbounds %struct.TYPE_56__, %struct.TYPE_56__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_55__, %struct.TYPE_55__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @UNI_IE_PRESENT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %158

147:                                              ; preds = %138
  %148 = load i32, i32* @UNI_IE_CALLING, align 4
  %149 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %150 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %151 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %150, i32 0, i32 14
  %152 = bitcast %struct.TYPE_56__* %151 to %union.uni_ieall*
  %153 = load %struct.unicx*, %struct.unicx** %7, align 8
  %154 = call i64 @uni_encode_ie(i32 %148, %struct.uni_msg* %149, %union.uni_ieall* %152, %struct.unicx* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %147
  %157 = load i32, i32* @UNI_IE_CALLING, align 4
  store i32 %157, i32* %4, align 4
  br label %554

158:                                              ; preds = %147, %138
  store i64 0, i64* %9, align 8
  br label %159

159:                                              ; preds = %195, %158
  %160 = load i64, i64* %9, align 8
  %161 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %162 = icmp ult i64 %160, %161
  br i1 %162, label %163, label %198

163:                                              ; preds = %159
  %164 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %165 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %164, i32 0, i32 13
  %166 = load %struct.TYPE_58__*, %struct.TYPE_58__** %165, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_57__, %struct.TYPE_57__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @UNI_IE_PRESENT, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %163
  %176 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %177 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %178 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %179 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %178, i32 0, i32 13
  %180 = load %struct.TYPE_58__*, %struct.TYPE_58__** %179, align 8
  %181 = load i64, i64* %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_58__, %struct.TYPE_58__* %180, i64 %181
  %183 = bitcast %struct.TYPE_58__* %182 to %union.uni_ieall*
  %184 = load %struct.unicx*, %struct.unicx** %7, align 8
  %185 = call i64 @uni_encode_ie(i32 %176, %struct.uni_msg* %177, %union.uni_ieall* %183, %struct.unicx* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %194

187:                                              ; preds = %175
  %188 = load i64, i64* %9, align 8
  %189 = shl i64 %188, 16
  %190 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %191 = sext i32 %190 to i64
  %192 = add i64 %189, %191
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %4, align 4
  br label %554

194:                                              ; preds = %175, %163
  br label %195

195:                                              ; preds = %194
  %196 = load i64, i64* %9, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %9, align 8
  br label %159

198:                                              ; preds = %159
  %199 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %200 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %199, i32 0, i32 12
  %201 = getelementptr inbounds %struct.TYPE_60__, %struct.TYPE_60__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_59__, %struct.TYPE_59__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @UNI_IE_PRESENT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %218

207:                                              ; preds = %198
  %208 = load i32, i32* @UNI_IE_SCOMPL, align 4
  %209 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %210 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %211 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %210, i32 0, i32 12
  %212 = bitcast %struct.TYPE_60__* %211 to %union.uni_ieall*
  %213 = load %struct.unicx*, %struct.unicx** %7, align 8
  %214 = call i64 @uni_encode_ie(i32 %208, %struct.uni_msg* %209, %union.uni_ieall* %212, %struct.unicx* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %207
  %217 = load i32, i32* @UNI_IE_SCOMPL, align 4
  store i32 %217, i32* %4, align 4
  br label %554

218:                                              ; preds = %207, %198
  store i64 0, i64* %9, align 8
  br label %219

219:                                              ; preds = %255, %218
  %220 = load i64, i64* %9, align 8
  %221 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %222 = icmp ult i64 %220, %221
  br i1 %222, label %223, label %258

223:                                              ; preds = %219
  %224 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %225 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %224, i32 0, i32 11
  %226 = load %struct.TYPE_63__*, %struct.TYPE_63__** %225, align 8
  %227 = load i64, i64* %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %226, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_61__, %struct.TYPE_61__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @UNI_IE_PRESENT, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %254

235:                                              ; preds = %223
  %236 = load i32, i32* @UNI_IE_TNS, align 4
  %237 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %238 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %239 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %238, i32 0, i32 11
  %240 = load %struct.TYPE_63__*, %struct.TYPE_63__** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_63__, %struct.TYPE_63__* %240, i64 %241
  %243 = bitcast %struct.TYPE_63__* %242 to %union.uni_ieall*
  %244 = load %struct.unicx*, %struct.unicx** %7, align 8
  %245 = call i64 @uni_encode_ie(i32 %236, %struct.uni_msg* %237, %union.uni_ieall* %243, %struct.unicx* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %254

247:                                              ; preds = %235
  %248 = load i64, i64* %9, align 8
  %249 = shl i64 %248, 16
  %250 = load i32, i32* @UNI_IE_TNS, align 4
  %251 = sext i32 %250 to i64
  %252 = add i64 %249, %251
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %4, align 4
  br label %554

254:                                              ; preds = %235, %223
  br label %255

255:                                              ; preds = %254
  %256 = load i64, i64* %9, align 8
  %257 = add i64 %256, 1
  store i64 %257, i64* %9, align 8
  br label %219

258:                                              ; preds = %219
  %259 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %260 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %259, i32 0, i32 10
  %261 = getelementptr inbounds %struct.TYPE_65__, %struct.TYPE_65__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_64__, %struct.TYPE_64__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @UNI_IE_PRESENT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %278

267:                                              ; preds = %258
  %268 = load i32, i32* @UNI_IE_EPREF, align 4
  %269 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %270 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %271 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %270, i32 0, i32 10
  %272 = bitcast %struct.TYPE_65__* %271 to %union.uni_ieall*
  %273 = load %struct.unicx*, %struct.unicx** %7, align 8
  %274 = call i64 @uni_encode_ie(i32 %268, %struct.uni_msg* %269, %union.uni_ieall* %272, %struct.unicx* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %278

276:                                              ; preds = %267
  %277 = load i32, i32* @UNI_IE_EPREF, align 4
  store i32 %277, i32* %4, align 4
  br label %554

278:                                              ; preds = %267, %258
  %279 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %280 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %279, i32 0, i32 9
  %281 = getelementptr inbounds %struct.TYPE_67__, %struct.TYPE_67__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_66__, %struct.TYPE_66__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @UNI_IE_PRESENT, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %298

287:                                              ; preds = %278
  %288 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %289 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %290 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %291 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %290, i32 0, i32 9
  %292 = bitcast %struct.TYPE_67__* %291 to %union.uni_ieall*
  %293 = load %struct.unicx*, %struct.unicx** %7, align 8
  %294 = call i64 @uni_encode_ie(i32 %288, %struct.uni_msg* %289, %union.uni_ieall* %292, %struct.unicx* %293)
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %298

296:                                              ; preds = %287
  %297 = load i32, i32* @UNI_IE_NOTIFY, align 4
  store i32 %297, i32* %4, align 4
  br label %554

298:                                              ; preds = %287, %278
  %299 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %300 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_69__, %struct.TYPE_69__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_68__, %struct.TYPE_68__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @UNI_IE_PRESENT, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %298
  %308 = load i32, i32* @UNI_IE_EETD, align 4
  %309 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %310 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %311 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %310, i32 0, i32 8
  %312 = bitcast %struct.TYPE_69__* %311 to %union.uni_ieall*
  %313 = load %struct.unicx*, %struct.unicx** %7, align 8
  %314 = call i64 @uni_encode_ie(i32 %308, %struct.uni_msg* %309, %union.uni_ieall* %312, %struct.unicx* %313)
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %307
  %317 = load i32, i32* @UNI_IE_EETD, align 4
  store i32 %317, i32* %4, align 4
  br label %554

318:                                              ; preds = %307, %298
  %319 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %320 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %319, i32 0, i32 7
  %321 = getelementptr inbounds %struct.TYPE_71__, %struct.TYPE_71__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_70__, %struct.TYPE_70__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* @UNI_IE_PRESENT, align 4
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %338

327:                                              ; preds = %318
  %328 = load i32, i32* @UNI_IE_UU, align 4
  %329 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %330 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %331 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %330, i32 0, i32 7
  %332 = bitcast %struct.TYPE_71__* %331 to %union.uni_ieall*
  %333 = load %struct.unicx*, %struct.unicx** %7, align 8
  %334 = call i64 @uni_encode_ie(i32 %328, %struct.uni_msg* %329, %union.uni_ieall* %332, %struct.unicx* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %338

336:                                              ; preds = %327
  %337 = load i32, i32* @UNI_IE_UU, align 4
  store i32 %337, i32* %4, align 4
  br label %554

338:                                              ; preds = %327, %318
  store i64 0, i64* %9, align 8
  br label %339

339:                                              ; preds = %375, %338
  %340 = load i64, i64* %9, align 8
  %341 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %342 = icmp ult i64 %340, %341
  br i1 %342, label %343, label %378

343:                                              ; preds = %339
  %344 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %345 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %344, i32 0, i32 6
  %346 = load %struct.TYPE_74__*, %struct.TYPE_74__** %345, align 8
  %347 = load i64, i64* %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %346, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_72__, %struct.TYPE_72__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @UNI_IE_PRESENT, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %374

355:                                              ; preds = %343
  %356 = load i32, i32* @UNI_IE_GIT, align 4
  %357 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %358 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %359 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %358, i32 0, i32 6
  %360 = load %struct.TYPE_74__*, %struct.TYPE_74__** %359, align 8
  %361 = load i64, i64* %9, align 8
  %362 = getelementptr inbounds %struct.TYPE_74__, %struct.TYPE_74__* %360, i64 %361
  %363 = bitcast %struct.TYPE_74__* %362 to %union.uni_ieall*
  %364 = load %struct.unicx*, %struct.unicx** %7, align 8
  %365 = call i64 @uni_encode_ie(i32 %356, %struct.uni_msg* %357, %union.uni_ieall* %363, %struct.unicx* %364)
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %374

367:                                              ; preds = %355
  %368 = load i64, i64* %9, align 8
  %369 = shl i64 %368, 16
  %370 = load i32, i32* @UNI_IE_GIT, align 4
  %371 = sext i32 %370 to i64
  %372 = add i64 %369, %371
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %4, align 4
  br label %554

374:                                              ; preds = %355, %343
  br label %375

375:                                              ; preds = %374
  %376 = load i64, i64* %9, align 8
  %377 = add i64 %376, 1
  store i64 %377, i64* %9, align 8
  br label %339

378:                                              ; preds = %339
  %379 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %380 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %379, i32 0, i32 5
  %381 = getelementptr inbounds %struct.TYPE_62__, %struct.TYPE_62__* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_51__, %struct.TYPE_51__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = load i32, i32* @UNI_IE_PRESENT, align 4
  %385 = and i32 %383, %384
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %378
  %388 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %389 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %390 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %391 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %390, i32 0, i32 5
  %392 = bitcast %struct.TYPE_62__* %391 to %union.uni_ieall*
  %393 = load %struct.unicx*, %struct.unicx** %7, align 8
  %394 = call i64 @uni_encode_ie(i32 %388, %struct.uni_msg* %389, %union.uni_ieall* %392, %struct.unicx* %393)
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %387
  %397 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  store i32 %397, i32* %4, align 4
  br label %554

398:                                              ; preds = %387, %378
  %399 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %400 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %399, i32 0, i32 4
  %401 = getelementptr inbounds %struct.TYPE_75__, %struct.TYPE_75__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_73__, %struct.TYPE_73__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = load i32, i32* @UNI_IE_PRESENT, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %418

407:                                              ; preds = %398
  %408 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  %409 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %410 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %411 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %410, i32 0, i32 4
  %412 = bitcast %struct.TYPE_75__* %411 to %union.uni_ieall*
  %413 = load %struct.unicx*, %struct.unicx** %7, align 8
  %414 = call i64 @uni_encode_ie(i32 %408, %struct.uni_msg* %409, %union.uni_ieall* %412, %struct.unicx* %413)
  %415 = icmp ne i64 %414, 0
  br i1 %415, label %416, label %418

416:                                              ; preds = %407
  %417 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  store i32 %417, i32* %4, align 4
  br label %554

418:                                              ; preds = %407, %398
  %419 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %420 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %419, i32 0, i32 3
  %421 = getelementptr inbounds %struct.TYPE_77__, %struct.TYPE_77__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_76__, %struct.TYPE_76__* %421, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @UNI_IE_PRESENT, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %438

427:                                              ; preds = %418
  %428 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %429 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %430 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %431 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %430, i32 0, i32 3
  %432 = bitcast %struct.TYPE_77__* %431 to %union.uni_ieall*
  %433 = load %struct.unicx*, %struct.unicx** %7, align 8
  %434 = call i64 @uni_encode_ie(i32 %428, %struct.uni_msg* %429, %union.uni_ieall* %432, %struct.unicx* %433)
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %427
  %437 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  store i32 %437, i32* %4, align 4
  br label %554

438:                                              ; preds = %427, %418
  %439 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %440 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %439, i32 0, i32 2
  %441 = getelementptr inbounds %struct.TYPE_79__, %struct.TYPE_79__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_78__, %struct.TYPE_78__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load i32, i32* @UNI_IE_PRESENT, align 4
  %445 = and i32 %443, %444
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %459

447:                                              ; preds = %438
  %448 = load i32, i32* @UNI_IE_DTL, align 4
  %449 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %450 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %451 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %450, i32 0, i32 2
  %452 = bitcast %struct.TYPE_79__* %451 to %union.uni_ieall*
  %453 = load %struct.unicx*, %struct.unicx** %7, align 8
  %454 = call i64 @uni_encode_ie(i32 %448, %struct.uni_msg* %449, %union.uni_ieall* %452, %struct.unicx* %453)
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %459

456:                                              ; preds = %447
  %457 = load i32, i32* @UNI_IE_DTL, align 4
  %458 = add nsw i32 268435456, %457
  store i32 %458, i32* %4, align 4
  br label %554

459:                                              ; preds = %447, %438
  store i64 0, i64* %9, align 8
  br label %460

460:                                              ; preds = %496, %459
  %461 = load i64, i64* %9, align 8
  %462 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %463 = icmp ult i64 %461, %462
  br i1 %463, label %464, label %499

464:                                              ; preds = %460
  %465 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %466 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %465, i32 0, i32 1
  %467 = load %struct.TYPE_41__*, %struct.TYPE_41__** %466, align 8
  %468 = load i64, i64* %9, align 8
  %469 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %467, i64 %468
  %470 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_80__, %struct.TYPE_80__* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 4
  %473 = load i32, i32* @UNI_IE_PRESENT, align 4
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %495

476:                                              ; preds = %464
  %477 = load i32, i32* @UNI_IE_DTL, align 4
  %478 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %479 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %480 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %479, i32 0, i32 1
  %481 = load %struct.TYPE_41__*, %struct.TYPE_41__** %480, align 8
  %482 = load i64, i64* %9, align 8
  %483 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %481, i64 %482
  %484 = bitcast %struct.TYPE_41__* %483 to %union.uni_ieall*
  %485 = load %struct.unicx*, %struct.unicx** %7, align 8
  %486 = call i64 @uni_encode_ie(i32 %477, %struct.uni_msg* %478, %union.uni_ieall* %484, %struct.unicx* %485)
  %487 = icmp ne i64 %486, 0
  br i1 %487, label %488, label %495

488:                                              ; preds = %476
  %489 = load i64, i64* %9, align 8
  %490 = shl i64 %489, 16
  %491 = load i32, i32* @UNI_IE_DTL, align 4
  %492 = sext i32 %491 to i64
  %493 = add i64 %490, %492
  %494 = trunc i64 %493 to i32
  store i32 %494, i32* %4, align 4
  br label %554

495:                                              ; preds = %476, %464
  br label %496

496:                                              ; preds = %495
  %497 = load i64, i64* %9, align 8
  %498 = add i64 %497, 1
  store i64 %498, i64* %9, align 8
  br label %460

499:                                              ; preds = %460
  %500 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %501 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %500, i32 0, i32 0
  %502 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %502, i32 0, i32 0
  %504 = load i32, i32* %503, align 8
  %505 = load i32, i32* @UNI_IE_PRESENT, align 4
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %519

508:                                              ; preds = %499
  %509 = load i32, i32* @UNI_IE_UNREC, align 4
  %510 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %511 = load %struct.uni_add_party*, %struct.uni_add_party** %6, align 8
  %512 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %511, i32 0, i32 0
  %513 = bitcast %struct.TYPE_43__* %512 to %union.uni_ieall*
  %514 = load %struct.unicx*, %struct.unicx** %7, align 8
  %515 = call i64 @uni_encode_ie(i32 %509, %struct.uni_msg* %510, %union.uni_ieall* %513, %struct.unicx* %514)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %519

517:                                              ; preds = %508
  %518 = load i32, i32* @UNI_IE_UNREC, align 4
  store i32 %518, i32* %4, align 4
  br label %554

519:                                              ; preds = %508, %499
  %520 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %521 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %524 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %523, i32 0, i32 2
  %525 = load i64, i64* %524, align 8
  %526 = sub i64 %522, %525
  %527 = load i64, i64* %8, align 8
  %528 = sub i64 %526, %527
  %529 = sub i64 %528, 2
  %530 = lshr i64 %529, 8
  %531 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %532 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %531, i32 0, i32 0
  %533 = load i64*, i64** %532, align 8
  %534 = load i64, i64* %8, align 8
  %535 = add i64 %534, 0
  %536 = getelementptr inbounds i64, i64* %533, i64 %535
  store i64 %530, i64* %536, align 8
  %537 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %538 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %537, i32 0, i32 1
  %539 = load i64, i64* %538, align 8
  %540 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %541 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %540, i32 0, i32 2
  %542 = load i64, i64* %541, align 8
  %543 = sub i64 %539, %542
  %544 = load i64, i64* %8, align 8
  %545 = sub i64 %543, %544
  %546 = sub i64 %545, 2
  %547 = lshr i64 %546, 0
  %548 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %549 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %548, i32 0, i32 0
  %550 = load i64*, i64** %549, align 8
  %551 = load i64, i64* %8, align 8
  %552 = add i64 %551, 1
  %553 = getelementptr inbounds i64, i64* %550, i64 %552
  store i64 %547, i64* %553, align 8
  store i32 0, i32* %4, align 4
  br label %554

554:                                              ; preds = %519, %517, %488, %456, %436, %416, %396, %367, %336, %316, %296, %276, %247, %216, %187, %156, %127, %96, %76, %56, %36, %17
  %555 = load i32, i32* %4, align 4
  ret i32 %555
}

declare dso_local i64 @uni_encode_msg_hdr(%struct.uni_msg*, i32*, i32, %struct.unicx*, i64*) #1

declare dso_local i64 @uni_encode_ie(i32, %struct.uni_msg*, %union.uni_ieall*, %struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
