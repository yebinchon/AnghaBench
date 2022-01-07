; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_set_newkeys.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_packet.c_ssh_set_newkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssh = type { %struct.TYPE_3__*, %struct.session_state* }
%struct.TYPE_3__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.sshcomp, %struct.sshmac, %struct.sshenc }
%struct.sshcomp = type { i64, i32 }
%struct.sshmac = type { i32 }
%struct.sshenc = type { i32, i32, i32, i32, i32, i32 }
%struct.session_state = type { i32, i32, i32, i32, i64, %struct.TYPE_4__**, %struct.packet_state, %struct.packet_state, %struct.sshcipher_ctx*, %struct.sshcipher_ctx* }
%struct.packet_state = type { i64, i64, i64 }
%struct.sshcipher_ctx = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"set_newkeys: mode %d\00", align 1
@MODE_OUT = common dso_local global i32 0, align 4
@CIPHER_ENCRYPT = common dso_local global i32 0, align 4
@CIPHER_DECRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"set_newkeys: rekeying, input %llu bytes %llu blocks, output %llu bytes %llu blocks\00", align 1
@SSH_ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"cipher_init_context: %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Warning: %s\00", align 1
@COMP_ZLIB = common dso_local global i64 0, align 8
@COMP_DELAYED = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"rekey after %llu blocks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssh_set_newkeys(%struct.ssh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ssh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.session_state*, align 8
  %7 = alloca %struct.sshenc*, align 8
  %8 = alloca %struct.sshmac*, align 8
  %9 = alloca %struct.sshcomp*, align 8
  %10 = alloca %struct.sshcipher_ctx**, align 8
  %11 = alloca %struct.packet_state*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ssh* %0, %struct.ssh** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ssh*, %struct.ssh** %4, align 8
  %17 = getelementptr inbounds %struct.ssh, %struct.ssh* %16, i32 0, i32 1
  %18 = load %struct.session_state*, %struct.session_state** %17, align 8
  store %struct.session_state* %18, %struct.session_state** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @debug2(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @MODE_OUT, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.session_state*, %struct.session_state** %6, align 8
  %26 = getelementptr inbounds %struct.session_state, %struct.session_state* %25, i32 0, i32 9
  store %struct.sshcipher_ctx** %26, %struct.sshcipher_ctx*** %10, align 8
  %27 = load i32, i32* @CIPHER_ENCRYPT, align 4
  store i32 %27, i32* %15, align 4
  %28 = load %struct.session_state*, %struct.session_state** %6, align 8
  %29 = getelementptr inbounds %struct.session_state, %struct.session_state* %28, i32 0, i32 6
  store %struct.packet_state* %29, %struct.packet_state** %11, align 8
  %30 = load %struct.session_state*, %struct.session_state** %6, align 8
  %31 = getelementptr inbounds %struct.session_state, %struct.session_state* %30, i32 0, i32 0
  store i32* %31, i32** %12, align 8
  br label %40

32:                                               ; preds = %2
  %33 = load %struct.session_state*, %struct.session_state** %6, align 8
  %34 = getelementptr inbounds %struct.session_state, %struct.session_state* %33, i32 0, i32 8
  store %struct.sshcipher_ctx** %34, %struct.sshcipher_ctx*** %10, align 8
  %35 = load i32, i32* @CIPHER_DECRYPT, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.session_state*, %struct.session_state** %6, align 8
  %37 = getelementptr inbounds %struct.session_state, %struct.session_state* %36, i32 0, i32 7
  store %struct.packet_state* %37, %struct.packet_state** %11, align 8
  %38 = load %struct.session_state*, %struct.session_state** %6, align 8
  %39 = getelementptr inbounds %struct.session_state, %struct.session_state* %38, i32 0, i32 1
  store i32* %39, i32** %12, align 8
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.session_state*, %struct.session_state** %6, align 8
  %42 = getelementptr inbounds %struct.session_state, %struct.session_state* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %85

49:                                               ; preds = %40
  %50 = load %struct.session_state*, %struct.session_state** %6, align 8
  %51 = getelementptr inbounds %struct.session_state, %struct.session_state* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.session_state*, %struct.session_state** %6, align 8
  %55 = getelementptr inbounds %struct.session_state, %struct.session_state* %54, i32 0, i32 7
  %56 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.session_state*, %struct.session_state** %6, align 8
  %59 = getelementptr inbounds %struct.session_state, %struct.session_state* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.session_state*, %struct.session_state** %6, align 8
  %63 = getelementptr inbounds %struct.session_state, %struct.session_state* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i64 %53, i64 %57, i64 %61, i64 %65)
  %67 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %10, align 8
  %68 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %67, align 8
  %69 = call i32 @cipher_free(%struct.sshcipher_ctx* %68)
  %70 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %10, align 8
  store %struct.sshcipher_ctx* null, %struct.sshcipher_ctx** %70, align 8
  %71 = load %struct.session_state*, %struct.session_state** %6, align 8
  %72 = getelementptr inbounds %struct.session_state, %struct.session_state* %71, i32 0, i32 5
  %73 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %73, i64 %75
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @kex_free_newkeys(%struct.TYPE_4__* %77)
  %79 = load %struct.session_state*, %struct.session_state** %6, align 8
  %80 = getelementptr inbounds %struct.session_state, %struct.session_state* %79, i32 0, i32 5
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %83
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %84, align 8
  br label %85

85:                                               ; preds = %49, %40
  %86 = load %struct.packet_state*, %struct.packet_state** %11, align 8
  %87 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.packet_state*, %struct.packet_state** %11, align 8
  %89 = getelementptr inbounds %struct.packet_state, %struct.packet_state* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.ssh*, %struct.ssh** %4, align 8
  %91 = getelementptr inbounds %struct.ssh, %struct.ssh* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %94, i64 %96
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load %struct.session_state*, %struct.session_state** %6, align 8
  %100 = getelementptr inbounds %struct.session_state, %struct.session_state* %99, i32 0, i32 5
  %101 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %101, i64 %103
  store %struct.TYPE_4__* %98, %struct.TYPE_4__** %104, align 8
  %105 = icmp eq %struct.TYPE_4__* %98, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %85
  %107 = load i32, i32* @SSH_ERR_INTERNAL_ERROR, align 4
  store i32 %107, i32* %3, align 4
  br label %285

108:                                              ; preds = %85
  %109 = load %struct.ssh*, %struct.ssh** %4, align 8
  %110 = getelementptr inbounds %struct.ssh, %struct.ssh* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %113, i64 %115
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %116, align 8
  %117 = load %struct.session_state*, %struct.session_state** %6, align 8
  %118 = getelementptr inbounds %struct.session_state, %struct.session_state* %117, i32 0, i32 5
  %119 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %119, i64 %121
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 2
  store %struct.sshenc* %124, %struct.sshenc** %7, align 8
  %125 = load %struct.session_state*, %struct.session_state** %6, align 8
  %126 = getelementptr inbounds %struct.session_state, %struct.session_state* %125, i32 0, i32 5
  %127 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %127, i64 %129
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  store %struct.sshmac* %132, %struct.sshmac** %8, align 8
  %133 = load %struct.session_state*, %struct.session_state** %6, align 8
  %134 = getelementptr inbounds %struct.session_state, %struct.session_state* %133, i32 0, i32 5
  %135 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %135, i64 %137
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  store %struct.sshcomp* %140, %struct.sshcomp** %9, align 8
  %141 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %142 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @cipher_authlen(i32 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %108
  %147 = load %struct.sshmac*, %struct.sshmac** %8, align 8
  %148 = call i32 @mac_init(%struct.sshmac* %147)
  store i32 %148, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %146
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %3, align 4
  br label %285

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152, %108
  %154 = load %struct.sshmac*, %struct.sshmac** %8, align 8
  %155 = getelementptr inbounds %struct.sshmac, %struct.sshmac* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  %156 = load i32, i32* %5, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %157)
  %159 = call i32 @DBG(i32 %158)
  %160 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %10, align 8
  %161 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %162 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %165 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %168 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %171 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %174 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = call i32 @cipher_init(%struct.sshcipher_ctx** %160, i32 %163, i32 %166, i32 %169, i32 %172, i32 %175, i32 %176)
  store i32 %177, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %153
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %3, align 4
  br label %285

181:                                              ; preds = %153
  %182 = load %struct.session_state*, %struct.session_state** %6, align 8
  %183 = getelementptr inbounds %struct.session_state, %struct.session_state* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %196, label %186

186:                                              ; preds = %181
  %187 = load %struct.sshcipher_ctx**, %struct.sshcipher_ctx*** %10, align 8
  %188 = load %struct.sshcipher_ctx*, %struct.sshcipher_ctx** %187, align 8
  %189 = call i8* @cipher_warning_message(%struct.sshcipher_ctx* %188)
  store i8* %189, i8** %13, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 @error(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %192)
  %194 = load %struct.session_state*, %struct.session_state** %6, align 8
  %195 = getelementptr inbounds %struct.session_state, %struct.session_state* %194, i32 0, i32 2
  store i32 1, i32* %195, align 8
  br label %196

196:                                              ; preds = %191, %186, %181
  %197 = load %struct.sshcomp*, %struct.sshcomp** %9, align 8
  %198 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @COMP_ZLIB, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %213, label %202

202:                                              ; preds = %196
  %203 = load %struct.sshcomp*, %struct.sshcomp** %9, align 8
  %204 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @COMP_DELAYED, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %245

208:                                              ; preds = %202
  %209 = load %struct.session_state*, %struct.session_state** %6, align 8
  %210 = getelementptr inbounds %struct.session_state, %struct.session_state* %209, i32 0, i32 4
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %208, %196
  %214 = load %struct.sshcomp*, %struct.sshcomp** %9, align 8
  %215 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %245

218:                                              ; preds = %213
  %219 = load %struct.ssh*, %struct.ssh** %4, align 8
  %220 = call i32 @ssh_packet_init_compression(%struct.ssh* %219)
  store i32 %220, i32* %14, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* %14, align 4
  store i32 %223, i32* %3, align 4
  br label %285

224:                                              ; preds = %218
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @MODE_OUT, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %224
  %229 = load %struct.ssh*, %struct.ssh** %4, align 8
  %230 = call i32 @start_compression_out(%struct.ssh* %229, i32 6)
  store i32 %230, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %14, align 4
  store i32 %233, i32* %3, align 4
  br label %285

234:                                              ; preds = %228
  br label %242

235:                                              ; preds = %224
  %236 = load %struct.ssh*, %struct.ssh** %4, align 8
  %237 = call i32 @start_compression_in(%struct.ssh* %236)
  store i32 %237, i32* %14, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* %14, align 4
  store i32 %240, i32* %3, align 4
  br label %285

241:                                              ; preds = %235
  br label %242

242:                                              ; preds = %241, %234
  %243 = load %struct.sshcomp*, %struct.sshcomp** %9, align 8
  %244 = getelementptr inbounds %struct.sshcomp, %struct.sshcomp* %243, i32 0, i32 1
  store i32 1, i32* %244, align 8
  br label %245

245:                                              ; preds = %242, %213, %208, %202
  %246 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %247 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp sge i32 %248, 16
  br i1 %249, label %250, label %257

250:                                              ; preds = %245
  %251 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %252 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = mul nsw i32 %253, 2
  %255 = shl i32 1, %254
  %256 = load i32*, i32** %12, align 8
  store i32 %255, i32* %256, align 4
  br label %263

257:                                              ; preds = %245
  %258 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %259 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = sdiv i32 1073741824, %260
  %262 = load i32*, i32** %12, align 8
  store i32 %261, i32* %262, align 4
  br label %263

263:                                              ; preds = %257, %250
  %264 = load %struct.session_state*, %struct.session_state** %6, align 8
  %265 = getelementptr inbounds %struct.session_state, %struct.session_state* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %280

268:                                              ; preds = %263
  %269 = load i32*, i32** %12, align 8
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.session_state*, %struct.session_state** %6, align 8
  %272 = getelementptr inbounds %struct.session_state, %struct.session_state* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.sshenc*, %struct.sshenc** %7, align 8
  %275 = getelementptr inbounds %struct.sshenc, %struct.sshenc* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = sdiv i32 %273, %276
  %278 = call i32 @MINIMUM(i32 %270, i32 %277)
  %279 = load i32*, i32** %12, align 8
  store i32 %278, i32* %279, align 4
  br label %280

280:                                              ; preds = %268, %263
  %281 = load i32*, i32** %12, align 8
  %282 = load i32, i32* %281, align 4
  %283 = sext i32 %282 to i64
  %284 = call i32 (i8*, i64, ...) @debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %283)
  store i32 0, i32* %3, align 4
  br label %285

285:                                              ; preds = %280, %239, %232, %222, %179, %150, %106
  %286 = load i32, i32* %3, align 4
  ret i32 %286
}

declare dso_local i32 @debug2(i8*, i32) #1

declare dso_local i32 @debug(i8*, i64, ...) #1

declare dso_local i32 @cipher_free(%struct.sshcipher_ctx*) #1

declare dso_local i32 @kex_free_newkeys(%struct.TYPE_4__*) #1

declare dso_local i64 @cipher_authlen(i32) #1

declare dso_local i32 @mac_init(%struct.sshmac*) #1

declare dso_local i32 @DBG(i32) #1

declare dso_local i32 @cipher_init(%struct.sshcipher_ctx**, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @cipher_warning_message(%struct.sshcipher_ctx*) #1

declare dso_local i32 @error(i8*, i8*) #1

declare dso_local i32 @ssh_packet_init_compression(%struct.ssh*) #1

declare dso_local i32 @start_compression_out(%struct.ssh*, i32) #1

declare dso_local i32 @start_compression_in(%struct.ssh*) #1

declare dso_local i32 @MINIMUM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
