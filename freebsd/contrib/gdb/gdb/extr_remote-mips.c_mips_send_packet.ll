; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_send_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DATA_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"MIPS protocol data packet too long: %s\00", align 1
@HDR_LENGTH = common dso_local global i32 0, align 4
@TRLR_LENGTH = common dso_local global i32 0, align 4
@mips_send_seq = common dso_local global i32 0, align 4
@HDR_INDX_SYN = common dso_local global i64 0, align 8
@HDR_INDX_TYPE_LEN = common dso_local global i64 0, align 8
@HDR_INDX_LEN1 = common dso_local global i64 0, align 8
@HDR_INDX_SEQ = common dso_local global i64 0, align 8
@TRLR_INDX_CSUM1 = common dso_local global i32 0, align 4
@TRLR_INDX_CSUM2 = common dso_local global i32 0, align 4
@TRLR_INDX_CSUM3 = common dso_local global i32 0, align 4
@SEQ_MODULOS = common dso_local global i32 0, align 4
@mips_send_retries = common dso_local global i32 0, align 4
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Writing \22%s\22\0A\00", align 1
@mips_desc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"write to target failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@mips_retransmit_wait = common dso_local global i32 0, align 4
@remote_timeout = common dso_local global i32 0, align 4
@SYN = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Got ack %d \22%s%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Remote did not acknowledge packet\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @mips_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mips_send_packet(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @strlen(i8* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DATA_MAXLEN, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = load i32, i32* @HDR_LENGTH, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @TRLR_LENGTH, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = call i64 @alloca(i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @mips_send_seq, align 4
  %38 = call zeroext i8 @HDR_SET_SYN(i32 1, i32 %36, i32 %37)
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* @HDR_INDX_SYN, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  store i8 %38, i8* %41, align 1
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @mips_send_seq, align 4
  %44 = call zeroext i8 @HDR_SET_TYPE_LEN(i32 1, i32 %42, i32 %43)
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* @HDR_INDX_TYPE_LEN, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8 %44, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @mips_send_seq, align 4
  %50 = call zeroext i8 @HDR_SET_LEN1(i32 1, i32 %48, i32 %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load i64, i64* @HDR_INDX_LEN1, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8 %50, i8* %53, align 1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @mips_send_seq, align 4
  %56 = call zeroext i8 @HDR_SET_SEQ(i32 1, i32 %54, i32 %55)
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* @HDR_INDX_SEQ, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 %56, i8* %59, align 1
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @HDR_LENGTH, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @memcpy(i8* %63, i8* %64, i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* @HDR_LENGTH, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @mips_cksum(i8* %67, i8* %71, i32 %72)
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call zeroext i8 @TRLR_SET_CSUM1(i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* @HDR_LENGTH, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = load i32, i32* @TRLR_INDX_CSUM1, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %77, i64 %83
  store i8 %76, i8* %84, align 1
  %85 = load i32, i32* %7, align 4
  %86 = call zeroext i8 @TRLR_SET_CSUM2(i32 %85)
  %87 = load i8*, i8** %6, align 8
  %88 = load i32, i32* @HDR_LENGTH, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* @TRLR_INDX_CSUM2, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %87, i64 %93
  store i8 %86, i8* %94, align 1
  %95 = load i32, i32* %7, align 4
  %96 = call zeroext i8 @TRLR_SET_CSUM3(i32 %95)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @HDR_LENGTH, align 4
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* @TRLR_INDX_CSUM3, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %97, i64 %103
  store i8 %96, i8* %104, align 1
  %105 = load i32, i32* @mips_send_seq, align 4
  %106 = add nsw i32 %105, 1
  %107 = load i32, i32* @SEQ_MODULOS, align 4
  %108 = srem i32 %106, %107
  store i32 %108, i32* @mips_send_seq, align 4
  store i32 0, i32* %8, align 4
  br label %109

109:                                              ; preds = %253, %27
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* @mips_send_retries, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %256

113:                                              ; preds = %109
  %114 = load i64, i64* @remote_debug, align 8
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* @HDR_LENGTH, align 4
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %118, %119
  %121 = load i32, i32* @TRLR_LENGTH, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %117, i64 %123
  store i8 0, i8* %124, align 1
  %125 = load i32, i32* @gdb_stdlog, align 4
  %126 = load i8*, i8** %6, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 1
  %128 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %127)
  br label %129

129:                                              ; preds = %116, %113
  %130 = load i32, i32* @mips_desc, align 4
  %131 = load i8*, i8** %6, align 8
  %132 = load i32, i32* @HDR_LENGTH, align 4
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* @TRLR_LENGTH, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i64 @serial_write(i32 %130, i8* %131, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  %140 = load i32, i32* @errno, align 4
  %141 = call i32 @safe_strerror(i32 %140)
  %142 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %139, %129
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %143
  br label %258

147:                                              ; preds = %143
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %148

148:                                              ; preds = %147, %248, %251
  %149 = load i32, i32* @HDR_LENGTH, align 4
  %150 = add nsw i32 %149, 1
  %151 = zext i32 %150 to i64
  %152 = call i8* @llvm.stacksave()
  store i8* %152, i8** %11, align 8
  %153 = alloca i8, i64 %151, align 16
  store i64 %151, i64* %12, align 8
  %154 = load i32, i32* @TRLR_LENGTH, align 4
  %155 = add nsw i32 %154, 1
  %156 = zext i32 %155 to i64
  %157 = alloca i8, i64 %156, align 16
  store i64 %156, i64* %13, align 8
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @mips_retransmit_wait, align 4
  %160 = call i32 @mips_receive_header(i8* %153, i32* %9, i32 %158, i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  store i32 6, i32* %16, align 4
  br label %248

164:                                              ; preds = %148
  store i32 0, i32* %10, align 4
  %165 = call i64 @HDR_IS_DATA(i8* %153)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %198

167:                                              ; preds = %164
  %168 = call i32 @HDR_GET_LEN(i8* %153)
  store i32 %168, i32* %5, align 4
  store i32 0, i32* %17, align 4
  br label %169

169:                                              ; preds = %187, %167
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %5, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %190

173:                                              ; preds = %169
  %174 = load i32, i32* @remote_timeout, align 4
  %175 = call i32 @mips_readchar(i32 %174)
  store i32 %175, i32* %18, align 4
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* @SYN, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %173
  %180 = load i32, i32* @SYN, align 4
  store i32 %180, i32* %10, align 4
  br label %190

181:                                              ; preds = %173
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %190

186:                                              ; preds = %181
  br label %187

187:                                              ; preds = %186
  %188 = load i32, i32* %17, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %17, align 4
  br label %169

190:                                              ; preds = %185, %179, %169
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %5, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32, i32* @remote_timeout, align 4
  %196 = call i32 @mips_receive_trailer(i8* %157, i32* %9, i32* %10, i32 %195)
  br label %197

197:                                              ; preds = %194, %190
  store i32 5, i32* %16, align 4
  br label %248

198:                                              ; preds = %164
  %199 = call i32 @HDR_GET_LEN(i8* %153)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 5, i32* %16, align 4
  br label %248

202:                                              ; preds = %198
  %203 = load i32, i32* @mips_retransmit_wait, align 4
  %204 = call i32 @mips_receive_trailer(i8* %157, i32* %9, i32* %10, i32 %203)
  store i32 %204, i32* %14, align 4
  %205 = load i32, i32* %14, align 4
  %206 = icmp eq i32 %205, -1
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  store i32 6, i32* %16, align 4
  br label %248

208:                                              ; preds = %202
  %209 = load i32, i32* %14, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 5, i32* %16, align 4
  br label %248

212:                                              ; preds = %208
  %213 = call i64 @mips_cksum(i8* %153, i8* null, i32 0)
  %214 = call i64 @TRLR_GET_CKSUM(i8* %157)
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 5, i32* %16, align 4
  br label %248

217:                                              ; preds = %212
  %218 = load i64, i64* @remote_debug, align 8
  %219 = icmp sgt i64 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %217
  %221 = load i32, i32* @HDR_LENGTH, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %153, i64 %222
  store i8 0, i8* %223, align 1
  %224 = load i32, i32* @TRLR_LENGTH, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %157, i64 %225
  store i8 0, i8* %226, align 1
  %227 = load i32, i32* @gdb_stdlog, align 4
  %228 = call i32 @HDR_GET_SEQ(i8* %153)
  %229 = getelementptr inbounds i8, i8* %153, i64 1
  %230 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %227, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %228, i8* %229, i8* %157)
  br label %231

231:                                              ; preds = %220, %217
  %232 = call i32 @HDR_GET_SEQ(i8* %153)
  store i32 %232, i32* %15, align 4
  %233 = load i32, i32* %15, align 4
  %234 = load i32, i32* @mips_send_seq, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  store i32 1, i32* %16, align 4
  br label %248

237:                                              ; preds = %231
  %238 = load i32, i32* %15, align 4
  %239 = add i32 %238, 1
  %240 = load i32, i32* @SEQ_MODULOS, align 4
  %241 = urem i32 %239, %240
  %242 = load i32, i32* @mips_send_seq, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %237
  store i32 6, i32* %16, align 4
  br label %248

245:                                              ; preds = %237
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %9, align 4
  store i32 0, i32* %16, align 4
  br label %248

248:                                              ; preds = %245, %244, %236, %216, %211, %207, %201, %197, %163
  %249 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %249)
  %250 = load i32, i32* %16, align 4
  switch i32 %250, label %259 [
    i32 0, label %251
    i32 6, label %252
    i32 5, label %148
    i32 1, label %258
  ]

251:                                              ; preds = %248
  br label %148

252:                                              ; preds = %248
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %109

256:                                              ; preds = %109
  %257 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %258

258:                                              ; preds = %256, %248, %146
  ret void

259:                                              ; preds = %248
  unreachable
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mips_error(i8*, ...) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local zeroext i8 @HDR_SET_SYN(i32, i32, i32) #1

declare dso_local zeroext i8 @HDR_SET_TYPE_LEN(i32, i32, i32) #1

declare dso_local zeroext i8 @HDR_SET_LEN1(i32, i32, i32) #1

declare dso_local zeroext i8 @HDR_SET_SEQ(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @mips_cksum(i8*, i8*, i32) #1

declare dso_local zeroext i8 @TRLR_SET_CSUM1(i32) #1

declare dso_local zeroext i8 @TRLR_SET_CSUM2(i32) #1

declare dso_local zeroext i8 @TRLR_SET_CSUM3(i32) #1

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #1

declare dso_local i64 @serial_write(i32, i8*, i32) #1

declare dso_local i32 @safe_strerror(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mips_receive_header(i8*, i32*, i32, i32) #1

declare dso_local i64 @HDR_IS_DATA(i8*) #1

declare dso_local i32 @HDR_GET_LEN(i8*) #1

declare dso_local i32 @mips_readchar(i32) #1

declare dso_local i32 @mips_receive_trailer(i8*, i32*, i32*, i32) #1

declare dso_local i64 @TRLR_GET_CKSUM(i8*) #1

declare dso_local i32 @HDR_GET_SEQ(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
