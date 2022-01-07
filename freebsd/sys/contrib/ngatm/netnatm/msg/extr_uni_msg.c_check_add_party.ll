; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_add_party.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_add_party = type { i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

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
@UNI_IE_REPEAT = common dso_local global i32 0, align 4
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8
@UNI_IE_DTL = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_add_party*, %struct.unicx*)* @check_add_party to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_add_party(%struct.uni_add_party* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_add_party*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_add_party* %0, %struct.uni_add_party** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_AAL, align 4
  %8 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %9 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %8, i32 0, i32 19
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_BHLI, align 4
  %16 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %17 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %16, i32 0, i32 18
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_BLLI, align 4
  %24 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %25 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %24, i32 0, i32 17
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @UNI_IE_CALLED, align 4
  %32 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %33 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %32, i32 0, i32 16
  %34 = bitcast i32* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_check_ie(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %39

39:                                               ; preds = %55, %2
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %45 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %46 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %45, i32 0, i32 15
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = bitcast i32* %49 to %union.uni_ieall*
  %51 = load %struct.unicx*, %struct.unicx** %4, align 8
  %52 = call i32 @uni_check_ie(i32 %44, %union.uni_ieall* %50, %struct.unicx* %51)
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %6, align 8
  br label %39

58:                                               ; preds = %39
  %59 = load i32, i32* @UNI_IE_CALLING, align 4
  %60 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %61 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %60, i32 0, i32 14
  %62 = bitcast i32* %61 to %union.uni_ieall*
  %63 = load %struct.unicx*, %struct.unicx** %4, align 8
  %64 = call i32 @uni_check_ie(i32 %59, %union.uni_ieall* %62, %struct.unicx* %63)
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %67

67:                                               ; preds = %83, %58
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %73 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %74 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %73, i32 0, i32 13
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = bitcast i32* %77 to %union.uni_ieall*
  %79 = load %struct.unicx*, %struct.unicx** %4, align 8
  %80 = call i32 @uni_check_ie(i32 %72, %union.uni_ieall* %78, %struct.unicx* %79)
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %71
  %84 = load i64, i64* %6, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %6, align 8
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.unicx*, %struct.unicx** %4, align 8
  %88 = getelementptr inbounds %struct.unicx, %struct.unicx* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %93 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %92, i32 0, i32 12
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @IE_ISPRESENT(i32 %94)
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %107

98:                                               ; preds = %86
  %99 = load i32, i32* @UNI_IE_SCOMPL, align 4
  %100 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %101 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %100, i32 0, i32 12
  %102 = bitcast i32* %101 to %union.uni_ieall*
  %103 = load %struct.unicx*, %struct.unicx** %4, align 8
  %104 = call i32 @uni_check_ie(i32 %99, %union.uni_ieall* %102, %struct.unicx* %103)
  %105 = load i32, i32* %5, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %5, align 4
  br label %107

107:                                              ; preds = %98, %91
  store i64 0, i64* %6, align 8
  br label %108

108:                                              ; preds = %124, %107
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %111 = icmp ult i64 %109, %110
  br i1 %111, label %112, label %127

112:                                              ; preds = %108
  %113 = load i32, i32* @UNI_IE_TNS, align 4
  %114 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %115 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %114, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %6, align 8
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  %119 = bitcast i32* %118 to %union.uni_ieall*
  %120 = load %struct.unicx*, %struct.unicx** %4, align 8
  %121 = call i32 @uni_check_ie(i32 %113, %union.uni_ieall* %119, %struct.unicx* %120)
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %112
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %6, align 8
  br label %108

127:                                              ; preds = %108
  %128 = load i32, i32* @UNI_IE_EPREF, align 4
  %129 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %130 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %129, i32 0, i32 10
  %131 = bitcast i32* %130 to %union.uni_ieall*
  %132 = load %struct.unicx*, %struct.unicx** %4, align 8
  %133 = call i32 @uni_check_ie(i32 %128, %union.uni_ieall* %131, %struct.unicx* %132)
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %137 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %138 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %137, i32 0, i32 9
  %139 = bitcast i32* %138 to %union.uni_ieall*
  %140 = load %struct.unicx*, %struct.unicx** %4, align 8
  %141 = call i32 @uni_check_ie(i32 %136, %union.uni_ieall* %139, %struct.unicx* %140)
  %142 = load i32, i32* %5, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %5, align 4
  %144 = load i32, i32* @UNI_IE_EETD, align 4
  %145 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %146 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %145, i32 0, i32 8
  %147 = bitcast i32* %146 to %union.uni_ieall*
  %148 = load %struct.unicx*, %struct.unicx** %4, align 8
  %149 = call i32 @uni_check_ie(i32 %144, %union.uni_ieall* %147, %struct.unicx* %148)
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.unicx*, %struct.unicx** %4, align 8
  %153 = getelementptr inbounds %struct.unicx, %struct.unicx* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %163

156:                                              ; preds = %127
  %157 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %158 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %157, i32 0, i32 7
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @IE_ISPRESENT(i32 %159)
  %161 = load i32, i32* %5, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %5, align 4
  br label %172

163:                                              ; preds = %127
  %164 = load i32, i32* @UNI_IE_UU, align 4
  %165 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %166 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %165, i32 0, i32 7
  %167 = bitcast i32* %166 to %union.uni_ieall*
  %168 = load %struct.unicx*, %struct.unicx** %4, align 8
  %169 = call i32 @uni_check_ie(i32 %164, %union.uni_ieall* %167, %struct.unicx* %168)
  %170 = load i32, i32* %5, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %163, %156
  store i64 0, i64* %6, align 8
  br label %173

173:                                              ; preds = %189, %172
  %174 = load i64, i64* %6, align 8
  %175 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load i32, i32* @UNI_IE_GIT, align 4
  %179 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %180 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %179, i32 0, i32 6
  %181 = load i32*, i32** %180, align 8
  %182 = load i64, i64* %6, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = bitcast i32* %183 to %union.uni_ieall*
  %185 = load %struct.unicx*, %struct.unicx** %4, align 8
  %186 = call i32 @uni_check_ie(i32 %178, %union.uni_ieall* %184, %struct.unicx* %185)
  %187 = load i32, i32* %5, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %5, align 4
  br label %189

189:                                              ; preds = %177
  %190 = load i64, i64* %6, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %6, align 8
  br label %173

192:                                              ; preds = %173
  %193 = load %struct.unicx*, %struct.unicx** %4, align 8
  %194 = getelementptr inbounds %struct.unicx, %struct.unicx* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %192
  %198 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %199 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @IE_ISPRESENT(i32 %200)
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %213

204:                                              ; preds = %192
  %205 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %206 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %207 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %206, i32 0, i32 5
  %208 = bitcast i32* %207 to %union.uni_ieall*
  %209 = load %struct.unicx*, %struct.unicx** %4, align 8
  %210 = call i32 @uni_check_ie(i32 %205, %union.uni_ieall* %208, %struct.unicx* %209)
  %211 = load i32, i32* %5, align 4
  %212 = or i32 %211, %210
  store i32 %212, i32* %5, align 4
  br label %213

213:                                              ; preds = %204, %197
  %214 = load %struct.unicx*, %struct.unicx** %4, align 8
  %215 = getelementptr inbounds %struct.unicx, %struct.unicx* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %220 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @IE_ISPRESENT(i32 %221)
  %223 = load i32, i32* %5, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %5, align 4
  br label %234

225:                                              ; preds = %213
  %226 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  %227 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %228 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %227, i32 0, i32 4
  %229 = bitcast i32* %228 to %union.uni_ieall*
  %230 = load %struct.unicx*, %struct.unicx** %4, align 8
  %231 = call i32 @uni_check_ie(i32 %226, %union.uni_ieall* %229, %struct.unicx* %230)
  %232 = load i32, i32* %5, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %225, %218
  %235 = load %struct.unicx*, %struct.unicx** %4, align 8
  %236 = getelementptr inbounds %struct.unicx, %struct.unicx* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %234
  %240 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %241 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @IE_ISPRESENT(i32 %242)
  %244 = load i32, i32* %5, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %5, align 4
  br label %255

246:                                              ; preds = %234
  %247 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %248 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %249 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %248, i32 0, i32 3
  %250 = bitcast i32* %249 to %union.uni_ieall*
  %251 = load %struct.unicx*, %struct.unicx** %4, align 8
  %252 = call i32 @uni_check_ie(i32 %247, %union.uni_ieall* %250, %struct.unicx* %251)
  %253 = load i32, i32* %5, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %246, %239
  %256 = load %struct.unicx*, %struct.unicx** %4, align 8
  %257 = getelementptr inbounds %struct.unicx, %struct.unicx* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %267, label %260

260:                                              ; preds = %255
  %261 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %262 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @IE_ISPRESENT(i32 %263)
  %265 = load i32, i32* %5, align 4
  %266 = or i32 %265, %264
  store i32 %266, i32* %5, align 4
  br label %276

267:                                              ; preds = %255
  %268 = load i32, i32* @UNI_IE_REPEAT, align 4
  %269 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %270 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %269, i32 0, i32 2
  %271 = bitcast i32* %270 to %union.uni_ieall*
  %272 = load %struct.unicx*, %struct.unicx** %4, align 8
  %273 = call i32 @uni_check_ie(i32 %268, %union.uni_ieall* %271, %struct.unicx* %272)
  %274 = load i32, i32* %5, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %267, %260
  store i64 0, i64* %6, align 8
  br label %277

277:                                              ; preds = %309, %276
  %278 = load i64, i64* %6, align 8
  %279 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %280 = icmp ult i64 %278, %279
  br i1 %280, label %281, label %312

281:                                              ; preds = %277
  %282 = load %struct.unicx*, %struct.unicx** %4, align 8
  %283 = getelementptr inbounds %struct.unicx, %struct.unicx* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %296, label %286

286:                                              ; preds = %281
  %287 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %288 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i64, i64* %6, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @IE_ISPRESENT(i32 %292)
  %294 = load i32, i32* %5, align 4
  %295 = or i32 %294, %293
  store i32 %295, i32* %5, align 4
  br label %308

296:                                              ; preds = %281
  %297 = load i32, i32* @UNI_IE_DTL, align 4
  %298 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %299 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = load i64, i64* %6, align 8
  %302 = getelementptr inbounds i32, i32* %300, i64 %301
  %303 = bitcast i32* %302 to %union.uni_ieall*
  %304 = load %struct.unicx*, %struct.unicx** %4, align 8
  %305 = call i32 @uni_check_ie(i32 %297, %union.uni_ieall* %303, %struct.unicx* %304)
  %306 = load i32, i32* %5, align 4
  %307 = or i32 %306, %305
  store i32 %307, i32* %5, align 4
  br label %308

308:                                              ; preds = %296, %286
  br label %309

309:                                              ; preds = %308
  %310 = load i64, i64* %6, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %6, align 8
  br label %277

312:                                              ; preds = %277
  %313 = load i32, i32* @UNI_IE_UNREC, align 4
  %314 = load %struct.uni_add_party*, %struct.uni_add_party** %3, align 8
  %315 = getelementptr inbounds %struct.uni_add_party, %struct.uni_add_party* %314, i32 0, i32 0
  %316 = bitcast i32* %315 to %union.uni_ieall*
  %317 = load %struct.unicx*, %struct.unicx** %4, align 8
  %318 = call i32 @uni_check_ie(i32 %313, %union.uni_ieall* %316, %struct.unicx* %317)
  %319 = load i32, i32* %5, align 4
  %320 = or i32 %319, %318
  store i32 %320, i32* %5, align 4
  %321 = load i32, i32* %5, align 4
  ret i32 %321
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
