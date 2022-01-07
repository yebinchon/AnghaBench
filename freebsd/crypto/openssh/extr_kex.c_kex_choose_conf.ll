; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_choose_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_choose_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { i32, %struct.kex* }
%struct.kex = type { i8*, i64, i64, %struct.newkeys**, i64, i32, i32, i32 }
%struct.newkeys = type { %struct.TYPE_4__, %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"local %s KEXINIT proposal\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"peer %s KEXINIT proposal\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ext-info-c\00", align 1
@PROPOSAL_KEX_ALGS = common dso_local global i64 0, align 8
@PROPOSAL_SERVER_HOST_KEY_ALGS = common dso_local global i64 0, align 8
@MODE_MAX = common dso_local global i64 0, align 8
@SSH_ERR_ALLOC_FAIL = common dso_local global i32 0, align 4
@MODE_OUT = common dso_local global i64 0, align 8
@MODE_IN = common dso_local global i64 0, align 8
@PROPOSAL_ENC_ALGS_CTOS = common dso_local global i32 0, align 4
@PROPOSAL_ENC_ALGS_STOC = common dso_local global i32 0, align 4
@PROPOSAL_MAC_ALGS_CTOS = common dso_local global i32 0, align 4
@PROPOSAL_MAC_ALGS_STOC = common dso_local global i32 0, align 4
@PROPOSAL_COMP_ALGS_CTOS = common dso_local global i32 0, align 4
@PROPOSAL_COMP_ALGS_STOC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [43 x i8] c"kex: %s cipher: %s MAC: %s compression: %s\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"client->server\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"server->client\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"<implicit>\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssh*)* @kex_choose_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kex_choose_conf(%struct.ssh* %0) #0 {
  %2 = alloca %struct.ssh*, align 8
  %3 = alloca %struct.kex*, align 8
  %4 = alloca %struct.newkeys*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  store %struct.ssh* %0, %struct.ssh** %2, align 8
  %20 = load %struct.ssh*, %struct.ssh** %2, align 8
  %21 = getelementptr inbounds %struct.ssh, %struct.ssh* %20, i32 0, i32 1
  %22 = load %struct.kex*, %struct.kex** %21, align 8
  store %struct.kex* %22, %struct.kex** %3, align 8
  store i8** null, i8*** %5, align 8
  store i8** null, i8*** %6, align 8
  %23 = load %struct.kex*, %struct.kex** %3, align 8
  %24 = getelementptr inbounds %struct.kex, %struct.kex* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %29 = call i32 @debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load %struct.kex*, %struct.kex** %3, align 8
  %31 = getelementptr inbounds %struct.kex, %struct.kex* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @kex_buf2prop(i32 %32, i32* null, i8*** %5)
  store i32 %33, i32* %17, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  br label %385

36:                                               ; preds = %1
  %37 = load %struct.kex*, %struct.kex** %3, align 8
  %38 = getelementptr inbounds %struct.kex, %struct.kex* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)
  %43 = call i32 @debug2(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %42)
  %44 = load %struct.kex*, %struct.kex** %3, align 8
  %45 = getelementptr inbounds %struct.kex, %struct.kex* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kex_buf2prop(i32 %46, i32* %18, i8*** %6)
  store i32 %47, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %385

50:                                               ; preds = %36
  %51 = load %struct.kex*, %struct.kex** %3, align 8
  %52 = getelementptr inbounds %struct.kex, %struct.kex* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i8**, i8*** %6, align 8
  store i8** %56, i8*** %7, align 8
  %57 = load i8**, i8*** %5, align 8
  store i8** %57, i8*** %8, align 8
  br label %61

58:                                               ; preds = %50
  %59 = load i8**, i8*** %5, align 8
  store i8** %59, i8*** %7, align 8
  %60 = load i8**, i8*** %6, align 8
  store i8** %60, i8*** %8, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.kex*, %struct.kex** %3, align 8
  %63 = getelementptr inbounds %struct.kex, %struct.kex* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i8**, i8*** %6, align 8
  %68 = load i64, i64* @PROPOSAL_KEX_ALGS, align 8
  %69 = getelementptr inbounds i8*, i8** %67, i64 %68
  %70 = load i8*, i8** %69, align 8
  %71 = call i8* @match_list(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %70, i32* null)
  store i8* %71, i8** %19, align 8
  %72 = load i8*, i8** %19, align 8
  %73 = icmp ne i8* %72, null
  %74 = zext i1 %73 to i32
  %75 = load %struct.kex*, %struct.kex** %3, align 8
  %76 = getelementptr inbounds %struct.kex, %struct.kex* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %19, align 8
  %78 = call i32 @free(i8* %77)
  br label %79

79:                                               ; preds = %66, %61
  %80 = load %struct.kex*, %struct.kex** %3, align 8
  %81 = load i8**, i8*** %7, align 8
  %82 = load i64, i64* @PROPOSAL_KEX_ALGS, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  %84 = load i8*, i8** %83, align 8
  %85 = load i8**, i8*** %8, align 8
  %86 = load i64, i64* @PROPOSAL_KEX_ALGS, align 8
  %87 = getelementptr inbounds i8*, i8** %85, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @choose_kex(%struct.kex* %80, i8* %84, i8* %88)
  store i32 %89, i32* %17, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %79
  %92 = load i8**, i8*** %6, align 8
  %93 = load i64, i64* @PROPOSAL_KEX_ALGS, align 8
  %94 = getelementptr inbounds i8*, i8** %92, i64 %93
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.kex*, %struct.kex** %3, align 8
  %97 = getelementptr inbounds %struct.kex, %struct.kex* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load i8**, i8*** %6, align 8
  %99 = load i64, i64* @PROPOSAL_KEX_ALGS, align 8
  %100 = getelementptr inbounds i8*, i8** %98, i64 %99
  store i8* null, i8** %100, align 8
  br label %385

101:                                              ; preds = %79
  %102 = load %struct.kex*, %struct.kex** %3, align 8
  %103 = load i8**, i8*** %7, align 8
  %104 = load i64, i64* @PROPOSAL_SERVER_HOST_KEY_ALGS, align 8
  %105 = getelementptr inbounds i8*, i8** %103, i64 %104
  %106 = load i8*, i8** %105, align 8
  %107 = load i8**, i8*** %8, align 8
  %108 = load i64, i64* @PROPOSAL_SERVER_HOST_KEY_ALGS, align 8
  %109 = getelementptr inbounds i8*, i8** %107, i64 %108
  %110 = load i8*, i8** %109, align 8
  %111 = call i32 @choose_hostkeyalg(%struct.kex* %102, i8* %106, i8* %110)
  store i32 %111, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %101
  %114 = load i8**, i8*** %6, align 8
  %115 = load i64, i64* @PROPOSAL_SERVER_HOST_KEY_ALGS, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.kex*, %struct.kex** %3, align 8
  %119 = getelementptr inbounds %struct.kex, %struct.kex* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load i8**, i8*** %6, align 8
  %121 = load i64, i64* @PROPOSAL_SERVER_HOST_KEY_ALGS, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  store i8* null, i8** %122, align 8
  br label %385

123:                                              ; preds = %101
  store i64 0, i64* %12, align 8
  br label %124

124:                                              ; preds = %300, %123
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* @MODE_MAX, align 8
  %127 = icmp ult i64 %125, %126
  br i1 %127, label %128, label %303

128:                                              ; preds = %124
  %129 = call %struct.newkeys* @calloc(i32 1, i32 40)
  store %struct.newkeys* %129, %struct.newkeys** %4, align 8
  %130 = icmp eq %struct.newkeys* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = load i32, i32* @SSH_ERR_ALLOC_FAIL, align 4
  store i32 %132, i32* %17, align 4
  br label %385

133:                                              ; preds = %128
  %134 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %135 = load %struct.kex*, %struct.kex** %3, align 8
  %136 = getelementptr inbounds %struct.kex, %struct.kex* %135, i32 0, i32 3
  %137 = load %struct.newkeys**, %struct.newkeys*** %136, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.newkeys*, %struct.newkeys** %137, i64 %138
  store %struct.newkeys* %134, %struct.newkeys** %139, align 8
  %140 = load %struct.kex*, %struct.kex** %3, align 8
  %141 = getelementptr inbounds %struct.kex, %struct.kex* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %148, label %144

144:                                              ; preds = %133
  %145 = load i64, i64* %12, align 8
  %146 = load i64, i64* @MODE_OUT, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %159, label %148

148:                                              ; preds = %144, %133
  %149 = load %struct.kex*, %struct.kex** %3, align 8
  %150 = getelementptr inbounds %struct.kex, %struct.kex* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %148
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @MODE_IN, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %153, %148
  %158 = phi i1 [ false, %148 ], [ %156, %153 ]
  br label %159

159:                                              ; preds = %157, %144
  %160 = phi i1 [ true, %144 ], [ %158, %157 ]
  %161 = zext i1 %160 to i32
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %13, align 8
  %163 = load i64, i64* %13, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = load i32, i32* @PROPOSAL_ENC_ALGS_CTOS, align 4
  br label %169

167:                                              ; preds = %159
  %168 = load i32, i32* @PROPOSAL_ENC_ALGS_STOC, align 4
  br label %169

169:                                              ; preds = %167, %165
  %170 = phi i32 [ %166, %165 ], [ %168, %167 ]
  store i32 %170, i32* %9, align 4
  %171 = load i64, i64* %13, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* @PROPOSAL_MAC_ALGS_CTOS, align 4
  br label %177

175:                                              ; preds = %169
  %176 = load i32, i32* @PROPOSAL_MAC_ALGS_STOC, align 4
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i32 [ %174, %173 ], [ %176, %175 ]
  store i32 %178, i32* %10, align 4
  %179 = load i64, i64* %13, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @PROPOSAL_COMP_ALGS_CTOS, align 4
  br label %185

183:                                              ; preds = %177
  %184 = load i32, i32* @PROPOSAL_COMP_ALGS_STOC, align 4
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i32 [ %182, %181 ], [ %184, %183 ]
  store i32 %186, i32* %11, align 4
  %187 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %188 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %187, i32 0, i32 1
  %189 = load i8**, i8*** %7, align 8
  %190 = load i32, i32* %9, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = load i8**, i8*** %8, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  %198 = load i8*, i8** %197, align 8
  %199 = call i32 @choose_enc(%struct.TYPE_5__* %188, i8* %193, i8* %198)
  store i32 %199, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %185
  %202 = load i8**, i8*** %6, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8*, i8** %202, i64 %204
  %206 = load i8*, i8** %205, align 8
  %207 = load %struct.kex*, %struct.kex** %3, align 8
  %208 = getelementptr inbounds %struct.kex, %struct.kex* %207, i32 0, i32 0
  store i8* %206, i8** %208, align 8
  %209 = load i8**, i8*** %6, align 8
  %210 = load i32, i32* %9, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  store i8* null, i8** %212, align 8
  br label %385

213:                                              ; preds = %185
  %214 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %215 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @cipher_authlen(i32 %217)
  store i64 %218, i64* %16, align 8
  %219 = load i64, i64* %16, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %249

221:                                              ; preds = %213
  %222 = load %struct.ssh*, %struct.ssh** %2, align 8
  %223 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %224 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %223, i32 0, i32 0
  %225 = load i8**, i8*** %7, align 8
  %226 = load i32, i32* %10, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i8*, i8** %225, i64 %227
  %229 = load i8*, i8** %228, align 8
  %230 = load i8**, i8*** %8, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8*, i8** %230, i64 %232
  %234 = load i8*, i8** %233, align 8
  %235 = call i32 @choose_mac(%struct.ssh* %222, %struct.TYPE_4__* %224, i8* %229, i8* %234)
  store i32 %235, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %221
  %238 = load i8**, i8*** %6, align 8
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  %242 = load i8*, i8** %241, align 8
  %243 = load %struct.kex*, %struct.kex** %3, align 8
  %244 = getelementptr inbounds %struct.kex, %struct.kex* %243, i32 0, i32 0
  store i8* %242, i8** %244, align 8
  %245 = load i8**, i8*** %6, align 8
  %246 = load i32, i32* %10, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  store i8* null, i8** %248, align 8
  br label %385

249:                                              ; preds = %221, %213
  %250 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %251 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %250, i32 0, i32 2
  %252 = load i8**, i8*** %7, align 8
  %253 = load i32, i32* %11, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load i8**, i8*** %8, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8*, i8** %257, i64 %259
  %261 = load i8*, i8** %260, align 8
  %262 = call i32 @choose_comp(%struct.TYPE_6__* %251, i8* %256, i8* %261)
  store i32 %262, i32* %17, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %276

264:                                              ; preds = %249
  %265 = load i8**, i8*** %6, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %265, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.kex*, %struct.kex** %3, align 8
  %271 = getelementptr inbounds %struct.kex, %struct.kex* %270, i32 0, i32 0
  store i8* %269, i8** %271, align 8
  %272 = load i8**, i8*** %6, align 8
  %273 = load i32, i32* %11, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8*, i8** %272, i64 %274
  store i8* null, i8** %275, align 8
  br label %385

276:                                              ; preds = %249
  %277 = load i64, i64* %13, align 8
  %278 = icmp ne i64 %277, 0
  %279 = zext i1 %278 to i64
  %280 = select i1 %278, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)
  %281 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %282 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load i64, i64* %16, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %276
  %288 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %289 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  br label %293

292:                                              ; preds = %276
  br label %293

293:                                              ; preds = %292, %287
  %294 = phi i8* [ %291, %287 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), %292 ]
  %295 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %296 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i8* %280, i32 %284, i8* %294, i32 %298)
  br label %300

300:                                              ; preds = %293
  %301 = load i64, i64* %12, align 8
  %302 = add i64 %301, 1
  store i64 %302, i64* %12, align 8
  br label %124

303:                                              ; preds = %124
  store i64 0, i64* %15, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %304

304:                                              ; preds = %364, %303
  %305 = load i64, i64* %12, align 8
  %306 = load i64, i64* @MODE_MAX, align 8
  %307 = icmp ult i64 %305, %306
  br i1 %307, label %308, label %367

308:                                              ; preds = %304
  %309 = load %struct.kex*, %struct.kex** %3, align 8
  %310 = getelementptr inbounds %struct.kex, %struct.kex* %309, i32 0, i32 3
  %311 = load %struct.newkeys**, %struct.newkeys*** %310, align 8
  %312 = load i64, i64* %12, align 8
  %313 = getelementptr inbounds %struct.newkeys*, %struct.newkeys** %311, i64 %312
  %314 = load %struct.newkeys*, %struct.newkeys** %313, align 8
  store %struct.newkeys* %314, %struct.newkeys** %4, align 8
  %315 = load i64, i64* %14, align 8
  %316 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %317 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 3
  %319 = load i32, i32* %318, align 4
  %320 = call i64 @MAXIMUM(i64 %315, i32 %319)
  store i64 %320, i64* %14, align 8
  %321 = load i64, i64* %14, align 8
  %322 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %323 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %322, i32 0, i32 1
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = call i64 @MAXIMUM(i64 %321, i32 %325)
  store i64 %326, i64* %14, align 8
  %327 = load i64, i64* %14, align 8
  %328 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %329 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i64 @MAXIMUM(i64 %327, i32 %331)
  store i64 %332, i64* %14, align 8
  %333 = load i64, i64* %14, align 8
  %334 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %335 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 1
  %337 = load i32, i32* %336, align 8
  %338 = call i64 @MAXIMUM(i64 %333, i32 %337)
  store i64 %338, i64* %14, align 8
  %339 = load i64, i64* %15, align 8
  %340 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %341 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 2
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @cipher_seclen(i32 %343)
  %345 = call i64 @MAXIMUM(i64 %339, i32 %344)
  store i64 %345, i64* %15, align 8
  %346 = load i64, i64* %15, align 8
  %347 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %348 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i64 @MAXIMUM(i64 %346, i32 %350)
  store i64 %351, i64* %15, align 8
  %352 = load i64, i64* %15, align 8
  %353 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %354 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @MAXIMUM(i64 %352, i32 %356)
  store i64 %357, i64* %15, align 8
  %358 = load i64, i64* %15, align 8
  %359 = load %struct.newkeys*, %struct.newkeys** %4, align 8
  %360 = getelementptr inbounds %struct.newkeys, %struct.newkeys* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = call i64 @MAXIMUM(i64 %358, i32 %362)
  store i64 %363, i64* %15, align 8
  br label %364

364:                                              ; preds = %308
  %365 = load i64, i64* %12, align 8
  %366 = add i64 %365, 1
  store i64 %366, i64* %12, align 8
  br label %304

367:                                              ; preds = %304
  %368 = load i64, i64* %14, align 8
  %369 = load %struct.kex*, %struct.kex** %3, align 8
  %370 = getelementptr inbounds %struct.kex, %struct.kex* %369, i32 0, i32 1
  store i64 %368, i64* %370, align 8
  %371 = load i64, i64* %15, align 8
  %372 = load %struct.kex*, %struct.kex** %3, align 8
  %373 = getelementptr inbounds %struct.kex, %struct.kex* %372, i32 0, i32 2
  store i64 %371, i64* %373, align 8
  %374 = load i32, i32* %18, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %384

376:                                              ; preds = %367
  %377 = load i8**, i8*** %5, align 8
  %378 = load i8**, i8*** %6, align 8
  %379 = call i32 @proposals_match(i8** %377, i8** %378)
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %384, label %381

381:                                              ; preds = %376
  %382 = load %struct.ssh*, %struct.ssh** %2, align 8
  %383 = getelementptr inbounds %struct.ssh, %struct.ssh* %382, i32 0, i32 0
  store i32 1, i32* %383, align 8
  br label %384

384:                                              ; preds = %381, %376, %367
  store i32 0, i32* %17, align 4
  br label %385

385:                                              ; preds = %384, %264, %237, %201, %131, %113, %91, %49, %35
  %386 = load i8**, i8*** %5, align 8
  %387 = call i32 @kex_prop_free(i8** %386)
  %388 = load i8**, i8*** %6, align 8
  %389 = call i32 @kex_prop_free(i8** %388)
  %390 = load i32, i32* %17, align 4
  ret i32 %390
}

declare dso_local i32 @debug2(i8*, i8*) #1

declare dso_local i32 @kex_buf2prop(i32, i32*, i8***) #1

declare dso_local i8* @match_list(i8*, i8*, i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @choose_kex(%struct.kex*, i8*, i8*) #1

declare dso_local i32 @choose_hostkeyalg(%struct.kex*, i8*, i8*) #1

declare dso_local %struct.newkeys* @calloc(i32, i32) #1

declare dso_local i32 @choose_enc(%struct.TYPE_5__*, i8*, i8*) #1

declare dso_local i64 @cipher_authlen(i32) #1

declare dso_local i32 @choose_mac(%struct.ssh*, %struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @choose_comp(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @debug(i8*, i8*, i32, i8*, i32) #1

declare dso_local i64 @MAXIMUM(i64, i32) #1

declare dso_local i32 @cipher_seclen(i32) #1

declare dso_local i32 @proposals_match(i8**, i8**) #1

declare dso_local i32 @kex_prop_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
