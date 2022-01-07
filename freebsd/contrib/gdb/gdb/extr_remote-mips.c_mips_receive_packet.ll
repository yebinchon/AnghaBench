; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_receive_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-mips.c_mips_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HDR_LENGTH = common dso_local global i32 0, align 4
@TRLR_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Timed out waiting for remote packet\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdlog = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Ignoring unexpected ACK\0A\00", align 1
@SYN = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Got new SYN after %d chars (wanted %d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Timed out waiting for packet\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Got SYN when wanted trailer\0A\00", align 1
@mips_receive_seq = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Ignoring sequence number %d (want %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"Bad checksum; data %d, trailer %d\0A\00", align 1
@HDR_INDX_SYN = common dso_local global i64 0, align 8
@HDR_INDX_TYPE_LEN = common dso_local global i64 0, align 8
@HDR_INDX_LEN1 = common dso_local global i64 0, align 8
@HDR_INDX_SEQ = common dso_local global i64 0, align 8
@TRLR_INDX_CSUM1 = common dso_local global i32 0, align 4
@TRLR_INDX_CSUM2 = common dso_local global i32 0, align 4
@TRLR_INDX_CSUM3 = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [21 x i8] c"Writing ack %d \22%s\22\0A\00", align 1
@mips_desc = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"write to target failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [17 x i8] c"Got packet \22%s\22\0A\00", align 1
@SEQ_MODULOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @mips_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mips_receive_packet(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %21 = load i32, i32* @HDR_LENGTH, align 4
  %22 = load i32, i32* @TRLR_LENGTH, align 4
  %23 = add nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %11, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %12, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %236, %233, %3
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* @HDR_LENGTH, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %14, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %15, align 8
  %34 = load i32, i32* @TRLR_LENGTH, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %16, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @mips_receive_header(i8* %33, i32* %9, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %47

46:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47, %29
  store i32 0, i32* %8, align 4
  %49 = call i32 @HDR_IS_DATA(i8* %33)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %65, label %51

51:                                               ; preds = %48
  %52 = call i32 @HDR_GET_LEN(i8* %33)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @mips_receive_trailer(i8* %36, i32* %9, i32* %8, i32 %56)
  br label %58

58:                                               ; preds = %55, %51
  %59 = load i64, i64* @remote_debug, align 8
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @gdb_stdlog, align 4
  %63 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %62, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  store i32 2, i32* %19, align 4
  br label %233

65:                                               ; preds = %48
  %66 = call i32 @HDR_GET_LEN(i8* %33)
  store i32 %66, i32* %10, align 4
  store i32 0, i32* %17, align 4
  br label %67

67:                                               ; preds = %97, %65
  %68 = load i32, i32* %17, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %100

71:                                               ; preds = %67
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @mips_readchar(i32 %72)
  store i32 %73, i32* %20, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* @SYN, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71
  %78 = load i32, i32* @SYN, align 4
  store i32 %78, i32* %8, align 4
  br label %100

79:                                               ; preds = %71
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

88:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89, %79
  %91 = load i32, i32* %20, align 4
  %92 = trunc i32 %91 to i8
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %17, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  store i8 %92, i8* %96, align 1
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %17, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %67

100:                                              ; preds = %77, %67
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load i64, i64* @remote_debug, align 8
  %106 = icmp sgt i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i32, i32* @gdb_stdlog, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %108, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  store i32 2, i32* %19, align 4
  br label %233

113:                                              ; preds = %100
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @mips_receive_trailer(i8* %36, i32* %9, i32* %8, i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %18, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %125

118:                                              ; preds = %113
  %119 = load i32, i32* %6, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %124

123:                                              ; preds = %118
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %124, %113
  %126 = load i32, i32* %18, align 4
  %127 = icmp eq i32 %126, -2
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i64, i64* @remote_debug, align 8
  %130 = icmp sgt i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i32, i32* @gdb_stdlog, align 4
  %133 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %128
  store i32 2, i32* %19, align 4
  br label %233

135:                                              ; preds = %125
  %136 = call i32 @HDR_GET_SEQ(i8* %33)
  %137 = load i32, i32* @mips_receive_seq, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %135
  %140 = load i64, i64* @remote_debug, align 8
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load i32, i32* @gdb_stdlog, align 4
  %144 = call i32 @HDR_GET_SEQ(i8* %33)
  %145 = load i32, i32* @mips_receive_seq, align 4
  %146 = call i32 (i32, i8*, ...) @fprintf_unfiltered(i32 %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %144, i32 %145)
  br label %147

147:                                              ; preds = %142, %139
  store i32 2, i32* %19, align 4
  br label %233

148:                                              ; preds = %135
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %10, align 4
  %151 = call i32 (i8*, ...) @mips_cksum(i8* %33, i8* %149, i32 %150)
  %152 = sext i32 %151 to i64
  %153 = inttoptr i64 %152 to i8*
  %154 = call i8* @TRLR_GET_CKSUM(i8* %36)
  %155 = icmp eq i8* %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %148
  store i32 3, i32* %19, align 4
  br label %233

157:                                              ; preds = %148
  %158 = load i64, i64* @remote_debug, align 8
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i8*, i8** %5, align 8
  %162 = load i32, i32* %10, align 4
  %163 = call i32 (i8*, ...) @mips_cksum(i8* %33, i8* %161, i32 %162)
  %164 = call i8* @TRLR_GET_CKSUM(i8* %36)
  %165 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %163, i8* %164)
  br label %166

166:                                              ; preds = %160, %157
  %167 = load i32, i32* @mips_receive_seq, align 4
  %168 = call zeroext i8 @HDR_SET_SYN(i32 0, i32 0, i32 %167)
  %169 = load i64, i64* @HDR_INDX_SYN, align 8
  %170 = getelementptr inbounds i8, i8* %27, i64 %169
  store i8 %168, i8* %170, align 1
  %171 = load i32, i32* @mips_receive_seq, align 4
  %172 = call zeroext i8 @HDR_SET_TYPE_LEN(i32 0, i32 0, i32 %171)
  %173 = load i64, i64* @HDR_INDX_TYPE_LEN, align 8
  %174 = getelementptr inbounds i8, i8* %27, i64 %173
  store i8 %172, i8* %174, align 1
  %175 = load i32, i32* @mips_receive_seq, align 4
  %176 = call zeroext i8 @HDR_SET_LEN1(i32 0, i32 0, i32 %175)
  %177 = load i64, i64* @HDR_INDX_LEN1, align 8
  %178 = getelementptr inbounds i8, i8* %27, i64 %177
  store i8 %176, i8* %178, align 1
  %179 = load i32, i32* @mips_receive_seq, align 4
  %180 = call zeroext i8 @HDR_SET_SEQ(i32 0, i32 0, i32 %179)
  %181 = load i64, i64* @HDR_INDX_SEQ, align 8
  %182 = getelementptr inbounds i8, i8* %27, i64 %181
  store i8 %180, i8* %182, align 1
  %183 = call i32 (i8*, ...) @mips_cksum(i8* %27, i8* null, i32 0)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = call zeroext i8 @TRLR_SET_CSUM1(i32 %184)
  %186 = load i32, i32* @HDR_LENGTH, align 4
  %187 = load i32, i32* @TRLR_INDX_CSUM1, align 4
  %188 = add nsw i32 %186, %187
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8, i8* %27, i64 %189
  store i8 %185, i8* %190, align 1
  %191 = load i32, i32* %13, align 4
  %192 = call zeroext i8 @TRLR_SET_CSUM2(i32 %191)
  %193 = load i32, i32* @HDR_LENGTH, align 4
  %194 = load i32, i32* @TRLR_INDX_CSUM2, align 4
  %195 = add nsw i32 %193, %194
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %27, i64 %196
  store i8 %192, i8* %197, align 1
  %198 = load i32, i32* %13, align 4
  %199 = call zeroext i8 @TRLR_SET_CSUM3(i32 %198)
  %200 = load i32, i32* @HDR_LENGTH, align 4
  %201 = load i32, i32* @TRLR_INDX_CSUM3, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i8, i8* %27, i64 %203
  store i8 %199, i8* %204, align 1
  %205 = load i64, i64* @remote_debug, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %166
  %208 = load i32, i32* @HDR_LENGTH, align 4
  %209 = load i32, i32* @TRLR_LENGTH, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %27, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load i32, i32* @mips_receive_seq, align 4
  %214 = getelementptr inbounds i8, i8* %27, i64 1
  %215 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %213, i8* %214)
  br label %216

216:                                              ; preds = %207, %166
  %217 = load i32, i32* @mips_desc, align 4
  %218 = load i32, i32* @HDR_LENGTH, align 4
  %219 = load i32, i32* @TRLR_LENGTH, align 4
  %220 = add nsw i32 %218, %219
  %221 = call i64 @serial_write(i32 %217, i8* %27, i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %232

223:                                              ; preds = %216
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %223
  %227 = load i32, i32* @errno, align 4
  %228 = call i32 @safe_strerror(i32 %227)
  %229 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %228)
  br label %231

230:                                              ; preds = %223
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %233

231:                                              ; preds = %226
  br label %232

232:                                              ; preds = %231, %216
  store i32 0, i32* %19, align 4
  br label %233

233:                                              ; preds = %232, %230, %156, %147, %134, %123, %112, %88, %64, %46
  %234 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %19, align 4
  switch i32 %235, label %319 [
    i32 0, label %236
    i32 2, label %28
    i32 3, label %237
  ]

236:                                              ; preds = %233
  br label %28

237:                                              ; preds = %233
  %238 = load i64, i64* @remote_debug, align 8
  %239 = icmp sgt i64 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %237
  %241 = load i8*, i8** %5, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %241, i64 %243
  store i8 0, i8* %244, align 1
  %245 = load i8*, i8** %5, align 8
  %246 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %240, %237
  %248 = load i32, i32* @mips_receive_seq, align 4
  %249 = add nsw i32 %248, 1
  %250 = load i32, i32* @SEQ_MODULOS, align 4
  %251 = srem i32 %249, %250
  store i32 %251, i32* @mips_receive_seq, align 4
  %252 = load i32, i32* @mips_receive_seq, align 4
  %253 = call zeroext i8 @HDR_SET_SYN(i32 0, i32 0, i32 %252)
  %254 = load i64, i64* @HDR_INDX_SYN, align 8
  %255 = getelementptr inbounds i8, i8* %27, i64 %254
  store i8 %253, i8* %255, align 1
  %256 = load i32, i32* @mips_receive_seq, align 4
  %257 = call zeroext i8 @HDR_SET_TYPE_LEN(i32 0, i32 0, i32 %256)
  %258 = load i64, i64* @HDR_INDX_TYPE_LEN, align 8
  %259 = getelementptr inbounds i8, i8* %27, i64 %258
  store i8 %257, i8* %259, align 1
  %260 = load i32, i32* @mips_receive_seq, align 4
  %261 = call zeroext i8 @HDR_SET_LEN1(i32 0, i32 0, i32 %260)
  %262 = load i64, i64* @HDR_INDX_LEN1, align 8
  %263 = getelementptr inbounds i8, i8* %27, i64 %262
  store i8 %261, i8* %263, align 1
  %264 = load i32, i32* @mips_receive_seq, align 4
  %265 = call zeroext i8 @HDR_SET_SEQ(i32 0, i32 0, i32 %264)
  %266 = load i64, i64* @HDR_INDX_SEQ, align 8
  %267 = getelementptr inbounds i8, i8* %27, i64 %266
  store i8 %265, i8* %267, align 1
  %268 = call i32 (i8*, ...) @mips_cksum(i8* %27, i8* null, i32 0)
  store i32 %268, i32* %13, align 4
  %269 = load i32, i32* %13, align 4
  %270 = call zeroext i8 @TRLR_SET_CSUM1(i32 %269)
  %271 = load i32, i32* @HDR_LENGTH, align 4
  %272 = load i32, i32* @TRLR_INDX_CSUM1, align 4
  %273 = add nsw i32 %271, %272
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %27, i64 %274
  store i8 %270, i8* %275, align 1
  %276 = load i32, i32* %13, align 4
  %277 = call zeroext i8 @TRLR_SET_CSUM2(i32 %276)
  %278 = load i32, i32* @HDR_LENGTH, align 4
  %279 = load i32, i32* @TRLR_INDX_CSUM2, align 4
  %280 = add nsw i32 %278, %279
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %27, i64 %281
  store i8 %277, i8* %282, align 1
  %283 = load i32, i32* %13, align 4
  %284 = call zeroext i8 @TRLR_SET_CSUM3(i32 %283)
  %285 = load i32, i32* @HDR_LENGTH, align 4
  %286 = load i32, i32* @TRLR_INDX_CSUM3, align 4
  %287 = add nsw i32 %285, %286
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8, i8* %27, i64 %288
  store i8 %284, i8* %289, align 1
  %290 = load i64, i64* @remote_debug, align 8
  %291 = icmp sgt i64 %290, 0
  br i1 %291, label %292, label %301

292:                                              ; preds = %247
  %293 = load i32, i32* @HDR_LENGTH, align 4
  %294 = load i32, i32* @TRLR_LENGTH, align 4
  %295 = add nsw i32 %293, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %27, i64 %296
  store i8 0, i8* %297, align 1
  %298 = load i32, i32* @mips_receive_seq, align 4
  %299 = getelementptr inbounds i8, i8* %27, i64 1
  %300 = call i32 (i8*, ...) @printf_unfiltered(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %298, i8* %299)
  br label %301

301:                                              ; preds = %292, %247
  %302 = load i32, i32* @mips_desc, align 4
  %303 = load i32, i32* @HDR_LENGTH, align 4
  %304 = load i32, i32* @TRLR_LENGTH, align 4
  %305 = add nsw i32 %303, %304
  %306 = call i64 @serial_write(i32 %302, i8* %27, i32 %305)
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %317

308:                                              ; preds = %301
  %309 = load i32, i32* %6, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32, i32* @errno, align 4
  %313 = call i32 @safe_strerror(i32 %312)
  %314 = call i32 (i8*, ...) @mips_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i32 %313)
  br label %316

315:                                              ; preds = %308
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %319

316:                                              ; preds = %311
  br label %317

317:                                              ; preds = %316, %301
  %318 = load i32, i32* %10, align 4
  store i32 %318, i32* %4, align 4
  store i32 1, i32* %19, align 4
  br label %319

319:                                              ; preds = %317, %315, %233
  %320 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %320)
  %321 = load i32, i32* %4, align 4
  ret i32 %321
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mips_receive_header(i8*, i32*, i32, i32) #2

declare dso_local i32 @mips_error(i8*, ...) #2

declare dso_local i32 @HDR_IS_DATA(i8*) #2

declare dso_local i32 @HDR_GET_LEN(i8*) #2

declare dso_local i32 @mips_receive_trailer(i8*, i32*, i32*, i32) #2

declare dso_local i32 @fprintf_unfiltered(i32, i8*, ...) #2

declare dso_local i32 @mips_readchar(i32) #2

declare dso_local i32 @HDR_GET_SEQ(i8*) #2

declare dso_local i32 @mips_cksum(i8*, ...) #2

declare dso_local i8* @TRLR_GET_CKSUM(i8*) #2

declare dso_local i32 @printf_unfiltered(i8*, ...) #2

declare dso_local zeroext i8 @HDR_SET_SYN(i32, i32, i32) #2

declare dso_local zeroext i8 @HDR_SET_TYPE_LEN(i32, i32, i32) #2

declare dso_local zeroext i8 @HDR_SET_LEN1(i32, i32, i32) #2

declare dso_local zeroext i8 @HDR_SET_SEQ(i32, i32, i32) #2

declare dso_local zeroext i8 @TRLR_SET_CSUM1(i32) #2

declare dso_local zeroext i8 @TRLR_SET_CSUM2(i32) #2

declare dso_local zeroext i8 @TRLR_SET_CSUM3(i32) #2

declare dso_local i64 @serial_write(i32, i8*, i32) #2

declare dso_local i32 @safe_strerror(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
