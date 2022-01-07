; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_msg.c_check_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_setup = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.unicx = type { i32 }
%union.uni_ieall = type { i32 }

@UNI_IE_AAL = common dso_local global i32 0, align 4
@UNI_IE_TRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_BEARER = common dso_local global i32 0, align 4
@UNI_IE_BHLI = common dso_local global i32 0, align 4
@UNI_IE_REPEAT = common dso_local global i32 0, align 4
@UNI_NUM_IE_BLLI = common dso_local global i64 0, align 8
@UNI_IE_BLLI = common dso_local global i32 0, align 4
@UNI_IE_CALLED = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLEDSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLEDSUB = common dso_local global i32 0, align 4
@UNI_IE_CALLING = common dso_local global i32 0, align 4
@UNI_NUM_IE_CALLINGSUB = common dso_local global i64 0, align 8
@UNI_IE_CALLINGSUB = common dso_local global i32 0, align 4
@UNI_IE_CONNID = common dso_local global i32 0, align 4
@UNI_IE_QOS = common dso_local global i32 0, align 4
@UNI_IE_EETD = common dso_local global i32 0, align 4
@UNI_IE_NOTIFY = common dso_local global i32 0, align 4
@UNI_IE_SCOMPL = common dso_local global i32 0, align 4
@UNI_NUM_IE_TNS = common dso_local global i64 0, align 8
@UNI_IE_TNS = common dso_local global i32 0, align 4
@UNI_IE_EPREF = common dso_local global i32 0, align 4
@UNI_IE_ATRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_MINTRAFFIC = common dso_local global i32 0, align 4
@UNI_IE_UU = common dso_local global i32 0, align 4
@UNI_NUM_IE_GIT = common dso_local global i64 0, align 8
@UNI_IE_GIT = common dso_local global i32 0, align 4
@UNI_IE_LIJ_CALLID = common dso_local global i32 0, align 4
@UNI_IE_LIJ_PARAM = common dso_local global i32 0, align 4
@UNI_IE_LIJ_SEQNO = common dso_local global i32 0, align 4
@UNI_IE_EXQOS = common dso_local global i32 0, align 4
@UNI_IE_ABRSETUP = common dso_local global i32 0, align 4
@UNI_IE_ABRADD = common dso_local global i32 0, align 4
@UNI_IE_CSCOPE = common dso_local global i32 0, align 4
@UNI_IE_CALLING_SOFT = common dso_local global i32 0, align 4
@UNI_IE_CALLED_SOFT = common dso_local global i32 0, align 4
@UNI_NUM_IE_DTL = common dso_local global i64 0, align 8
@UNI_IE_DTL = common dso_local global i32 0, align 4
@UNI_IE_REPORT = common dso_local global i32 0, align 4
@UNI_IE_MDCR = common dso_local global i32 0, align 4
@UNI_IE_UNREC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_setup*, %struct.unicx*)* @check_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_setup(%struct.uni_setup* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_setup*, align 8
  %4 = alloca %struct.unicx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.uni_setup* %0, %struct.uni_setup** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @UNI_IE_AAL, align 4
  %8 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %9 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %8, i32 0, i32 34
  %10 = bitcast i32* %9 to %union.uni_ieall*
  %11 = load %struct.unicx*, %struct.unicx** %4, align 8
  %12 = call i32 @uni_check_ie(i32 %7, %union.uni_ieall* %10, %struct.unicx* %11)
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @UNI_IE_TRAFFIC, align 4
  %16 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %17 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %16, i32 0, i32 33
  %18 = bitcast i32* %17 to %union.uni_ieall*
  %19 = load %struct.unicx*, %struct.unicx** %4, align 8
  %20 = call i32 @uni_check_ie(i32 %15, %union.uni_ieall* %18, %struct.unicx* %19)
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @UNI_IE_BEARER, align 4
  %24 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %25 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %24, i32 0, i32 32
  %26 = bitcast i32* %25 to %union.uni_ieall*
  %27 = load %struct.unicx*, %struct.unicx** %4, align 8
  %28 = call i32 @uni_check_ie(i32 %23, %union.uni_ieall* %26, %struct.unicx* %27)
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* @UNI_IE_BHLI, align 4
  %32 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %33 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %32, i32 0, i32 31
  %34 = bitcast i32* %33 to %union.uni_ieall*
  %35 = load %struct.unicx*, %struct.unicx** %4, align 8
  %36 = call i32 @uni_check_ie(i32 %31, %union.uni_ieall* %34, %struct.unicx* %35)
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @UNI_IE_REPEAT, align 4
  %40 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %41 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %40, i32 0, i32 30
  %42 = bitcast i32* %41 to %union.uni_ieall*
  %43 = load %struct.unicx*, %struct.unicx** %4, align 8
  %44 = call i32 @uni_check_ie(i32 %39, %union.uni_ieall* %42, %struct.unicx* %43)
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %63, %2
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @UNI_NUM_IE_BLLI, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %66

51:                                               ; preds = %47
  %52 = load i32, i32* @UNI_IE_BLLI, align 4
  %53 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %54 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %53, i32 0, i32 29
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = bitcast i32* %57 to %union.uni_ieall*
  %59 = load %struct.unicx*, %struct.unicx** %4, align 8
  %60 = call i32 @uni_check_ie(i32 %52, %union.uni_ieall* %58, %struct.unicx* %59)
  %61 = load i32, i32* %5, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %51
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %6, align 8
  br label %47

66:                                               ; preds = %47
  %67 = load i32, i32* @UNI_IE_CALLED, align 4
  %68 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %69 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %68, i32 0, i32 28
  %70 = bitcast i32* %69 to %union.uni_ieall*
  %71 = load %struct.unicx*, %struct.unicx** %4, align 8
  %72 = call i32 @uni_check_ie(i32 %67, %union.uni_ieall* %70, %struct.unicx* %71)
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %75

75:                                               ; preds = %91, %66
  %76 = load i64, i64* %6, align 8
  %77 = load i64, i64* @UNI_NUM_IE_CALLEDSUB, align 8
  %78 = icmp ult i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %75
  %80 = load i32, i32* @UNI_IE_CALLEDSUB, align 4
  %81 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %82 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %81, i32 0, i32 27
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = bitcast i32* %85 to %union.uni_ieall*
  %87 = load %struct.unicx*, %struct.unicx** %4, align 8
  %88 = call i32 @uni_check_ie(i32 %80, %union.uni_ieall* %86, %struct.unicx* %87)
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %79
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %75

94:                                               ; preds = %75
  %95 = load i32, i32* @UNI_IE_CALLING, align 4
  %96 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %97 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %96, i32 0, i32 26
  %98 = bitcast i32* %97 to %union.uni_ieall*
  %99 = load %struct.unicx*, %struct.unicx** %4, align 8
  %100 = call i32 @uni_check_ie(i32 %95, %union.uni_ieall* %98, %struct.unicx* %99)
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %103

103:                                              ; preds = %119, %94
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* @UNI_NUM_IE_CALLINGSUB, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %103
  %108 = load i32, i32* @UNI_IE_CALLINGSUB, align 4
  %109 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %110 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %109, i32 0, i32 25
  %111 = load i32*, i32** %110, align 8
  %112 = load i64, i64* %6, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = bitcast i32* %113 to %union.uni_ieall*
  %115 = load %struct.unicx*, %struct.unicx** %4, align 8
  %116 = call i32 @uni_check_ie(i32 %108, %union.uni_ieall* %114, %struct.unicx* %115)
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %107
  %120 = load i64, i64* %6, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %6, align 8
  br label %103

122:                                              ; preds = %103
  %123 = load i32, i32* @UNI_IE_CONNID, align 4
  %124 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %125 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %124, i32 0, i32 24
  %126 = bitcast i32* %125 to %union.uni_ieall*
  %127 = load %struct.unicx*, %struct.unicx** %4, align 8
  %128 = call i32 @uni_check_ie(i32 %123, %union.uni_ieall* %126, %struct.unicx* %127)
  %129 = load i32, i32* %5, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @UNI_IE_QOS, align 4
  %132 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %133 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %132, i32 0, i32 23
  %134 = bitcast i32* %133 to %union.uni_ieall*
  %135 = load %struct.unicx*, %struct.unicx** %4, align 8
  %136 = call i32 @uni_check_ie(i32 %131, %union.uni_ieall* %134, %struct.unicx* %135)
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load i32, i32* @UNI_IE_EETD, align 4
  %140 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %141 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %140, i32 0, i32 22
  %142 = bitcast i32* %141 to %union.uni_ieall*
  %143 = load %struct.unicx*, %struct.unicx** %4, align 8
  %144 = call i32 @uni_check_ie(i32 %139, %union.uni_ieall* %142, %struct.unicx* %143)
  %145 = load i32, i32* %5, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %5, align 4
  %147 = load i32, i32* @UNI_IE_NOTIFY, align 4
  %148 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %149 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %148, i32 0, i32 21
  %150 = bitcast i32* %149 to %union.uni_ieall*
  %151 = load %struct.unicx*, %struct.unicx** %4, align 8
  %152 = call i32 @uni_check_ie(i32 %147, %union.uni_ieall* %150, %struct.unicx* %151)
  %153 = load i32, i32* %5, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %5, align 4
  %155 = load %struct.unicx*, %struct.unicx** %4, align 8
  %156 = getelementptr inbounds %struct.unicx, %struct.unicx* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %166

159:                                              ; preds = %122
  %160 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %161 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %160, i32 0, i32 20
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @IE_ISPRESENT(i32 %162)
  %164 = load i32, i32* %5, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %5, align 4
  br label %175

166:                                              ; preds = %122
  %167 = load i32, i32* @UNI_IE_SCOMPL, align 4
  %168 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %169 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %168, i32 0, i32 20
  %170 = bitcast i32* %169 to %union.uni_ieall*
  %171 = load %struct.unicx*, %struct.unicx** %4, align 8
  %172 = call i32 @uni_check_ie(i32 %167, %union.uni_ieall* %170, %struct.unicx* %171)
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %166, %159
  store i64 0, i64* %6, align 8
  br label %176

176:                                              ; preds = %192, %175
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* @UNI_NUM_IE_TNS, align 8
  %179 = icmp ult i64 %177, %178
  br i1 %179, label %180, label %195

180:                                              ; preds = %176
  %181 = load i32, i32* @UNI_IE_TNS, align 4
  %182 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %183 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %182, i32 0, i32 19
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %6, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = bitcast i32* %186 to %union.uni_ieall*
  %188 = load %struct.unicx*, %struct.unicx** %4, align 8
  %189 = call i32 @uni_check_ie(i32 %181, %union.uni_ieall* %187, %struct.unicx* %188)
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %180
  %193 = load i64, i64* %6, align 8
  %194 = add i64 %193, 1
  store i64 %194, i64* %6, align 8
  br label %176

195:                                              ; preds = %176
  %196 = load i32, i32* @UNI_IE_EPREF, align 4
  %197 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %198 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %197, i32 0, i32 18
  %199 = bitcast i32* %198 to %union.uni_ieall*
  %200 = load %struct.unicx*, %struct.unicx** %4, align 8
  %201 = call i32 @uni_check_ie(i32 %196, %union.uni_ieall* %199, %struct.unicx* %200)
  %202 = load i32, i32* %5, align 4
  %203 = or i32 %202, %201
  store i32 %203, i32* %5, align 4
  %204 = load i32, i32* @UNI_IE_ATRAFFIC, align 4
  %205 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %206 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %205, i32 0, i32 17
  %207 = bitcast i32* %206 to %union.uni_ieall*
  %208 = load %struct.unicx*, %struct.unicx** %4, align 8
  %209 = call i32 @uni_check_ie(i32 %204, %union.uni_ieall* %207, %struct.unicx* %208)
  %210 = load i32, i32* %5, align 4
  %211 = or i32 %210, %209
  store i32 %211, i32* %5, align 4
  %212 = load i32, i32* @UNI_IE_MINTRAFFIC, align 4
  %213 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %214 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %213, i32 0, i32 16
  %215 = bitcast i32* %214 to %union.uni_ieall*
  %216 = load %struct.unicx*, %struct.unicx** %4, align 8
  %217 = call i32 @uni_check_ie(i32 %212, %union.uni_ieall* %215, %struct.unicx* %216)
  %218 = load i32, i32* %5, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* %5, align 4
  %220 = load %struct.unicx*, %struct.unicx** %4, align 8
  %221 = getelementptr inbounds %struct.unicx, %struct.unicx* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %231

224:                                              ; preds = %195
  %225 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %226 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %225, i32 0, i32 15
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @IE_ISPRESENT(i32 %227)
  %229 = load i32, i32* %5, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %5, align 4
  br label %240

231:                                              ; preds = %195
  %232 = load i32, i32* @UNI_IE_UU, align 4
  %233 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %234 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %233, i32 0, i32 15
  %235 = bitcast i32* %234 to %union.uni_ieall*
  %236 = load %struct.unicx*, %struct.unicx** %4, align 8
  %237 = call i32 @uni_check_ie(i32 %232, %union.uni_ieall* %235, %struct.unicx* %236)
  %238 = load i32, i32* %5, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %231, %224
  store i64 0, i64* %6, align 8
  br label %241

241:                                              ; preds = %257, %240
  %242 = load i64, i64* %6, align 8
  %243 = load i64, i64* @UNI_NUM_IE_GIT, align 8
  %244 = icmp ult i64 %242, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %241
  %246 = load i32, i32* @UNI_IE_GIT, align 4
  %247 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %248 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %247, i32 0, i32 14
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* %6, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = bitcast i32* %251 to %union.uni_ieall*
  %253 = load %struct.unicx*, %struct.unicx** %4, align 8
  %254 = call i32 @uni_check_ie(i32 %246, %union.uni_ieall* %252, %struct.unicx* %253)
  %255 = load i32, i32* %5, align 4
  %256 = or i32 %255, %254
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %245
  %258 = load i64, i64* %6, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %6, align 8
  br label %241

260:                                              ; preds = %241
  %261 = load %struct.unicx*, %struct.unicx** %4, align 8
  %262 = getelementptr inbounds %struct.unicx, %struct.unicx* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %260
  %266 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %267 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %266, i32 0, i32 13
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @IE_ISPRESENT(i32 %268)
  %270 = load i32, i32* %5, align 4
  %271 = or i32 %270, %269
  store i32 %271, i32* %5, align 4
  br label %281

272:                                              ; preds = %260
  %273 = load i32, i32* @UNI_IE_LIJ_CALLID, align 4
  %274 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %275 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %274, i32 0, i32 13
  %276 = bitcast i32* %275 to %union.uni_ieall*
  %277 = load %struct.unicx*, %struct.unicx** %4, align 8
  %278 = call i32 @uni_check_ie(i32 %273, %union.uni_ieall* %276, %struct.unicx* %277)
  %279 = load i32, i32* %5, align 4
  %280 = or i32 %279, %278
  store i32 %280, i32* %5, align 4
  br label %281

281:                                              ; preds = %272, %265
  %282 = load %struct.unicx*, %struct.unicx** %4, align 8
  %283 = getelementptr inbounds %struct.unicx, %struct.unicx* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %293

286:                                              ; preds = %281
  %287 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %288 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %287, i32 0, i32 12
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @IE_ISPRESENT(i32 %289)
  %291 = load i32, i32* %5, align 4
  %292 = or i32 %291, %290
  store i32 %292, i32* %5, align 4
  br label %302

293:                                              ; preds = %281
  %294 = load i32, i32* @UNI_IE_LIJ_PARAM, align 4
  %295 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %296 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %295, i32 0, i32 12
  %297 = bitcast i32* %296 to %union.uni_ieall*
  %298 = load %struct.unicx*, %struct.unicx** %4, align 8
  %299 = call i32 @uni_check_ie(i32 %294, %union.uni_ieall* %297, %struct.unicx* %298)
  %300 = load i32, i32* %5, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %5, align 4
  br label %302

302:                                              ; preds = %293, %286
  %303 = load %struct.unicx*, %struct.unicx** %4, align 8
  %304 = getelementptr inbounds %struct.unicx, %struct.unicx* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %314

307:                                              ; preds = %302
  %308 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %309 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %308, i32 0, i32 11
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @IE_ISPRESENT(i32 %310)
  %312 = load i32, i32* %5, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %5, align 4
  br label %323

314:                                              ; preds = %302
  %315 = load i32, i32* @UNI_IE_LIJ_SEQNO, align 4
  %316 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %317 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %316, i32 0, i32 11
  %318 = bitcast i32* %317 to %union.uni_ieall*
  %319 = load %struct.unicx*, %struct.unicx** %4, align 8
  %320 = call i32 @uni_check_ie(i32 %315, %union.uni_ieall* %318, %struct.unicx* %319)
  %321 = load i32, i32* %5, align 4
  %322 = or i32 %321, %320
  store i32 %322, i32* %5, align 4
  br label %323

323:                                              ; preds = %314, %307
  %324 = load i32, i32* @UNI_IE_EXQOS, align 4
  %325 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %326 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %325, i32 0, i32 10
  %327 = bitcast i32* %326 to %union.uni_ieall*
  %328 = load %struct.unicx*, %struct.unicx** %4, align 8
  %329 = call i32 @uni_check_ie(i32 %324, %union.uni_ieall* %327, %struct.unicx* %328)
  %330 = load i32, i32* %5, align 4
  %331 = or i32 %330, %329
  store i32 %331, i32* %5, align 4
  %332 = load i32, i32* @UNI_IE_ABRSETUP, align 4
  %333 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %334 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %333, i32 0, i32 9
  %335 = bitcast i32* %334 to %union.uni_ieall*
  %336 = load %struct.unicx*, %struct.unicx** %4, align 8
  %337 = call i32 @uni_check_ie(i32 %332, %union.uni_ieall* %335, %struct.unicx* %336)
  %338 = load i32, i32* %5, align 4
  %339 = or i32 %338, %337
  store i32 %339, i32* %5, align 4
  %340 = load i32, i32* @UNI_IE_ABRADD, align 4
  %341 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %342 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %341, i32 0, i32 8
  %343 = bitcast i32* %342 to %union.uni_ieall*
  %344 = load %struct.unicx*, %struct.unicx** %4, align 8
  %345 = call i32 @uni_check_ie(i32 %340, %union.uni_ieall* %343, %struct.unicx* %344)
  %346 = load i32, i32* %5, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %5, align 4
  %348 = load i32, i32* @UNI_IE_CSCOPE, align 4
  %349 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %350 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %349, i32 0, i32 7
  %351 = bitcast i32* %350 to %union.uni_ieall*
  %352 = load %struct.unicx*, %struct.unicx** %4, align 8
  %353 = call i32 @uni_check_ie(i32 %348, %union.uni_ieall* %351, %struct.unicx* %352)
  %354 = load i32, i32* %5, align 4
  %355 = or i32 %354, %353
  store i32 %355, i32* %5, align 4
  %356 = load %struct.unicx*, %struct.unicx** %4, align 8
  %357 = getelementptr inbounds %struct.unicx, %struct.unicx* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %367, label %360

360:                                              ; preds = %323
  %361 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %362 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = call i32 @IE_ISPRESENT(i32 %363)
  %365 = load i32, i32* %5, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %5, align 4
  br label %376

367:                                              ; preds = %323
  %368 = load i32, i32* @UNI_IE_CALLING_SOFT, align 4
  %369 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %370 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %369, i32 0, i32 6
  %371 = bitcast i32* %370 to %union.uni_ieall*
  %372 = load %struct.unicx*, %struct.unicx** %4, align 8
  %373 = call i32 @uni_check_ie(i32 %368, %union.uni_ieall* %371, %struct.unicx* %372)
  %374 = load i32, i32* %5, align 4
  %375 = or i32 %374, %373
  store i32 %375, i32* %5, align 4
  br label %376

376:                                              ; preds = %367, %360
  %377 = load %struct.unicx*, %struct.unicx** %4, align 8
  %378 = getelementptr inbounds %struct.unicx, %struct.unicx* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %376
  %382 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %383 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %382, i32 0, i32 5
  %384 = load i32, i32* %383, align 4
  %385 = call i32 @IE_ISPRESENT(i32 %384)
  %386 = load i32, i32* %5, align 4
  %387 = or i32 %386, %385
  store i32 %387, i32* %5, align 4
  br label %397

388:                                              ; preds = %376
  %389 = load i32, i32* @UNI_IE_CALLED_SOFT, align 4
  %390 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %391 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %390, i32 0, i32 5
  %392 = bitcast i32* %391 to %union.uni_ieall*
  %393 = load %struct.unicx*, %struct.unicx** %4, align 8
  %394 = call i32 @uni_check_ie(i32 %389, %union.uni_ieall* %392, %struct.unicx* %393)
  %395 = load i32, i32* %5, align 4
  %396 = or i32 %395, %394
  store i32 %396, i32* %5, align 4
  br label %397

397:                                              ; preds = %388, %381
  %398 = load %struct.unicx*, %struct.unicx** %4, align 8
  %399 = getelementptr inbounds %struct.unicx, %struct.unicx* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %409, label %402

402:                                              ; preds = %397
  %403 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %404 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %403, i32 0, i32 4
  %405 = load i32, i32* %404, align 8
  %406 = call i32 @IE_ISPRESENT(i32 %405)
  %407 = load i32, i32* %5, align 4
  %408 = or i32 %407, %406
  store i32 %408, i32* %5, align 4
  br label %418

409:                                              ; preds = %397
  %410 = load i32, i32* @UNI_IE_REPEAT, align 4
  %411 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %412 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %411, i32 0, i32 4
  %413 = bitcast i32* %412 to %union.uni_ieall*
  %414 = load %struct.unicx*, %struct.unicx** %4, align 8
  %415 = call i32 @uni_check_ie(i32 %410, %union.uni_ieall* %413, %struct.unicx* %414)
  %416 = load i32, i32* %5, align 4
  %417 = or i32 %416, %415
  store i32 %417, i32* %5, align 4
  br label %418

418:                                              ; preds = %409, %402
  store i64 0, i64* %6, align 8
  br label %419

419:                                              ; preds = %451, %418
  %420 = load i64, i64* %6, align 8
  %421 = load i64, i64* @UNI_NUM_IE_DTL, align 8
  %422 = icmp ult i64 %420, %421
  br i1 %422, label %423, label %454

423:                                              ; preds = %419
  %424 = load %struct.unicx*, %struct.unicx** %4, align 8
  %425 = getelementptr inbounds %struct.unicx, %struct.unicx* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %438, label %428

428:                                              ; preds = %423
  %429 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %430 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %429, i32 0, i32 3
  %431 = load i32*, i32** %430, align 8
  %432 = load i64, i64* %6, align 8
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = call i32 @IE_ISPRESENT(i32 %434)
  %436 = load i32, i32* %5, align 4
  %437 = or i32 %436, %435
  store i32 %437, i32* %5, align 4
  br label %450

438:                                              ; preds = %423
  %439 = load i32, i32* @UNI_IE_DTL, align 4
  %440 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %441 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %440, i32 0, i32 3
  %442 = load i32*, i32** %441, align 8
  %443 = load i64, i64* %6, align 8
  %444 = getelementptr inbounds i32, i32* %442, i64 %443
  %445 = bitcast i32* %444 to %union.uni_ieall*
  %446 = load %struct.unicx*, %struct.unicx** %4, align 8
  %447 = call i32 @uni_check_ie(i32 %439, %union.uni_ieall* %445, %struct.unicx* %446)
  %448 = load i32, i32* %5, align 4
  %449 = or i32 %448, %447
  store i32 %449, i32* %5, align 4
  br label %450

450:                                              ; preds = %438, %428
  br label %451

451:                                              ; preds = %450
  %452 = load i64, i64* %6, align 8
  %453 = add i64 %452, 1
  store i64 %453, i64* %6, align 8
  br label %419

454:                                              ; preds = %419
  %455 = load %struct.unicx*, %struct.unicx** %4, align 8
  %456 = getelementptr inbounds %struct.unicx, %struct.unicx* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 4
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %454
  %460 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %461 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %460, i32 0, i32 2
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @IE_ISPRESENT(i32 %462)
  %464 = load i32, i32* %5, align 4
  %465 = or i32 %464, %463
  store i32 %465, i32* %5, align 4
  br label %475

466:                                              ; preds = %454
  %467 = load i32, i32* @UNI_IE_REPORT, align 4
  %468 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %469 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %468, i32 0, i32 2
  %470 = bitcast i32* %469 to %union.uni_ieall*
  %471 = load %struct.unicx*, %struct.unicx** %4, align 8
  %472 = call i32 @uni_check_ie(i32 %467, %union.uni_ieall* %470, %struct.unicx* %471)
  %473 = load i32, i32* %5, align 4
  %474 = or i32 %473, %472
  store i32 %474, i32* %5, align 4
  br label %475

475:                                              ; preds = %466, %459
  %476 = load i32, i32* @UNI_IE_MDCR, align 4
  %477 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %478 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %477, i32 0, i32 1
  %479 = bitcast i32* %478 to %union.uni_ieall*
  %480 = load %struct.unicx*, %struct.unicx** %4, align 8
  %481 = call i32 @uni_check_ie(i32 %476, %union.uni_ieall* %479, %struct.unicx* %480)
  %482 = load i32, i32* %5, align 4
  %483 = or i32 %482, %481
  store i32 %483, i32* %5, align 4
  %484 = load i32, i32* @UNI_IE_UNREC, align 4
  %485 = load %struct.uni_setup*, %struct.uni_setup** %3, align 8
  %486 = getelementptr inbounds %struct.uni_setup, %struct.uni_setup* %485, i32 0, i32 0
  %487 = bitcast i32* %486 to %union.uni_ieall*
  %488 = load %struct.unicx*, %struct.unicx** %4, align 8
  %489 = call i32 @uni_check_ie(i32 %484, %union.uni_ieall* %487, %struct.unicx* %488)
  %490 = load i32, i32* %5, align 4
  %491 = or i32 %490, %489
  store i32 %491, i32* %5, align 4
  %492 = load i32, i32* %5, align 4
  ret i32 %492
}

declare dso_local i32 @uni_check_ie(i32, %union.uni_ieall*, %struct.unicx*) #1

declare dso_local i32 @IE_ISPRESENT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
