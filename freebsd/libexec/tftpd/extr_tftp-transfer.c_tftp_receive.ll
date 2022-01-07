; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-transfer.c_tftp_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-transfer.c_tftp_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.tftp_stats = type { i32, i64, i32, i32, i32 }
%struct.tftphdr = type { i64, i64, i32 }

@MAXPKTSIZE = common dso_local global i32 0, align 4
@maxtimeouts = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot send ACK packet #%d, giving up\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot send ACK packet #%d, trying again\00", align 1
@segsize = common dso_local global i64 0, align 8
@options = common dso_local global %struct.TYPE_2__* null, align 8
@OPT_ROLLOVER = common dso_local global i64 0, align 8
@debug = common dso_local global i32 0, align 4
@DEBUG_SIMPLE = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Receiving DATA block %d\00", align 1
@timeoutpacket = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Timeout #%d on DATA block %d, giving up\00", align 1
@RP_TIMEOUT = common dso_local global i32 0, align 4
@LOG_WARNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Timeout #%d on DATA block %d\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Aborting: %s\00", align 1
@DATA = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [37 x i8] c"Expected DATA block %d, got block %d\00", align 1
@LOG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"Trying to sync\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"Expected DATA block, got %s block\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"write_file returned %d\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOSPACE = common dso_local global i64 0, align 8
@acting_as_client = common dso_local global i64 0, align 8
@pktsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tftp_receive(i32 %0, i64* %1, %struct.tftp_stats* %2, %struct.tftphdr* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tftp_stats*, align 8
  %9 = alloca %struct.tftphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tftphdr*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store %struct.tftp_stats* %2, %struct.tftp_stats** %8, align 8
  store %struct.tftphdr* %3, %struct.tftphdr** %9, align 8
  store i64 %4, i64* %10, align 8
  %21 = load i32, i32* @MAXPKTSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %18, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %19, align 8
  %25 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %26 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %28 = icmp ne %struct.tftphdr* %27, null
  br i1 %28, label %29, label %76

29:                                               ; preds = %5
  %30 = load %struct.tftphdr*, %struct.tftphdr** %9, align 8
  %31 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 @write_file(i32 %32, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = sext i32 %36 to i64
  %38 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %39 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, %37
  store i64 %41, i64* %39, align 8
  store i32 0, i32* %16, align 4
  br label %42

42:                                               ; preds = %64, %29
  %43 = load i32, i32* %6, align 4
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @send_ack(i32 %43, i64 %45)
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %42
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @maxtimeouts, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @LOG_ERR, align 4
  %55 = load i64*, i64** %7, align 8
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32, i8*, ...) @tftp_log(i32 %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %56)
  store i32 1, i32* %20, align 4
  br label %337

58:                                               ; preds = %49
  %59 = load i32, i32* @LOG_ERR, align 4
  %60 = load i64*, i64** %7, align 8
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (i32, i8*, ...) @tftp_log(i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %61)
  br label %64

63:                                               ; preds = %42
  br label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  br label %42

67:                                               ; preds = %63
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* @segsize, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %73 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %72, i32 0, i32 0
  %74 = call i32 @gettimeofday(i32* %73, i32* null)
  store i32 1, i32* %20, align 4
  br label %337

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %5
  %77 = bitcast i8* %24 to %struct.tftphdr*
  store %struct.tftphdr* %77, %struct.tftphdr** %11, align 8
  br label %78

78:                                               ; preds = %290, %76
  %79 = load i64*, i64** %7, align 8
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %12, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load i64*, i64** %7, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %84, %86
  br i1 %87, label %88, label %110

88:                                               ; preds = %78
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %90 = load i64, i64* @OPT_ROLLOVER, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i64*, i64** %7, align 8
  store i64 0, i64* %96, align 8
  br label %105

97:                                               ; preds = %88
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @options, align 8
  %99 = load i64, i64* @OPT_ROLLOVER, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @atoi(i32* %102)
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  br label %105

105:                                              ; preds = %97, %95
  %106 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %107 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %105, %78
  store i32 0, i32* %17, align 4
  br label %111

111:                                              ; preds = %215, %110
  %112 = load i32, i32* @debug, align 4
  %113 = load i32, i32* @DEBUG_SIMPLE, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i32, i32* @LOG_DEBUG, align 4
  %118 = load i64*, i64** %7, align 8
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i32, i8*, ...) @tftp_log(i32 %117, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %119)
  br label %121

121:                                              ; preds = %116, %111
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* @MAXPKTSIZE, align 4
  %124 = load i32, i32* @timeoutpacket, align 4
  %125 = call i32 @receive_packet(i32 %122, i8* %24, i32 %123, i32* null, i32 %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %162

128:                                              ; preds = %121
  %129 = load i32, i32* %17, align 4
  %130 = load i32, i32* @maxtimeouts, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %128
  %133 = load i32, i32* @LOG_ERR, align 4
  %134 = load i32, i32* %17, align 4
  %135 = load i64*, i64** %7, align 8
  %136 = load i64, i64* %135, align 8
  %137 = call i32 (i32, i8*, ...) @tftp_log(i32 %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %134, i64 %136)
  store i32 1, i32* %20, align 4
  br label %337

138:                                              ; preds = %128
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @RP_TIMEOUT, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* @LOG_WARNING, align 4
  %144 = load i32, i32* %17, align 4
  %145 = load i64*, i64** %7, align 8
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i32, i8*, ...) @tftp_log(i32 %143, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %144, i64 %146)
  %148 = load i32, i32* %6, align 4
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @send_ack(i32 %148, i64 %149)
  br label %215

151:                                              ; preds = %138
  %152 = load i32, i32* @debug, align 4
  %153 = load i32, i32* @DEBUG_SIMPLE, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32, i32* @LOG_DEBUG, align 4
  %158 = load i32, i32* %13, align 4
  %159 = call i64 @rp_strerror(i32 %158)
  %160 = call i32 (i32, i8*, ...) @tftp_log(i32 %157, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %156, %151
  br label %336

162:                                              ; preds = %121
  %163 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %164 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @DATA, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %207

168:                                              ; preds = %162
  %169 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %170 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 4
  %173 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %174 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64*, i64** %7, align 8
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %175, %177
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %218

180:                                              ; preds = %168
  %181 = load i32, i32* @LOG_WARNING, align 4
  %182 = load i64*, i64** %7, align 8
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %185 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i32, i8*, ...) @tftp_log(i32 %181, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i64 %183, i64 %186)
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @synchnet(i32 %188)
  %190 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %191 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %7, align 8
  %194 = load i64, i64* %193, align 8
  %195 = sub nsw i64 %194, 1
  %196 = icmp eq i64 %192, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %180
  %198 = load i32, i32* @LOG_INFO, align 4
  %199 = call i32 (i32, i8*, ...) @tftp_log(i32 %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %200 = load i64, i64* %12, align 8
  %201 = load i64*, i64** %7, align 8
  store i64 %200, i64* %201, align 8
  %202 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %203 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  br label %260

206:                                              ; preds = %180
  br label %214

207:                                              ; preds = %162
  %208 = load i32, i32* @LOG_WARNING, align 4
  %209 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %210 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @packettype(i64 %211)
  %213 = call i32 (i32, i8*, ...) @tftp_log(i32 %208, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %212)
  br label %214

214:                                              ; preds = %207, %206
  br label %215

215:                                              ; preds = %214, %142
  %216 = load i32, i32* %17, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %17, align 4
  br label %111

218:                                              ; preds = %179
  %219 = load i32, i32* %13, align 4
  %220 = icmp sgt i32 %219, 0
  br i1 %220, label %221, label %259

221:                                              ; preds = %218
  %222 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %223 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @write_file(i32 %224, i32 %225)
  store i32 %226, i32* %15, align 4
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %230 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = add nsw i64 %231, %228
  store i64 %232, i64* %230, align 8
  %233 = load i32, i32* %15, align 4
  %234 = icmp sle i32 %233, 0
  br i1 %234, label %235, label %251

235:                                              ; preds = %221
  %236 = load i32, i32* @LOG_ERR, align 4
  %237 = load i32, i32* %15, align 4
  %238 = call i32 (i32, i8*, ...) @tftp_log(i32 %236, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* %15, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %246

241:                                              ; preds = %235
  %242 = load i32, i32* %6, align 4
  %243 = load i64, i64* @errno, align 8
  %244 = add nsw i64 %243, 100
  %245 = call i32 @send_error(i32 %242, i64 %244)
  br label %250

246:                                              ; preds = %235
  %247 = load i32, i32* %6, align 4
  %248 = load i64, i64* @ENOSPACE, align 8
  %249 = call i32 @send_error(i32 %247, i64 %248)
  br label %250

250:                                              ; preds = %246, %241
  br label %336

251:                                              ; preds = %221
  %252 = load i32, i32* %13, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* @segsize, align 8
  %255 = icmp ne i64 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %251
  %257 = call i32 (...) @write_close()
  br label %258

258:                                              ; preds = %256, %251
  br label %259

259:                                              ; preds = %258, %218
  br label %260

260:                                              ; preds = %259, %197
  store i32 0, i32* %16, align 4
  br label %261

261:                                              ; preds = %283, %260
  %262 = load i32, i32* %6, align 4
  %263 = load i64*, i64** %7, align 8
  %264 = load i64, i64* %263, align 8
  %265 = call i32 @send_ack(i32 %262, i64 %264)
  store i32 %265, i32* %14, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp sgt i32 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %261
  %269 = load i32, i32* %16, align 4
  %270 = load i32, i32* @maxtimeouts, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %268
  %273 = load i32, i32* @LOG_ERR, align 4
  %274 = load i64*, i64** %7, align 8
  %275 = load i64, i64* %274, align 8
  %276 = call i32 (i32, i8*, ...) @tftp_log(i32 %273, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %275)
  store i32 1, i32* %20, align 4
  br label %337

277:                                              ; preds = %268
  %278 = load i32, i32* @LOG_ERR, align 4
  %279 = load i64*, i64** %7, align 8
  %280 = load i64, i64* %279, align 8
  %281 = call i32 (i32, i8*, ...) @tftp_log(i32 %278, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %280)
  br label %283

282:                                              ; preds = %261
  br label %286

283:                                              ; preds = %277
  %284 = load i32, i32* %16, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %16, align 4
  br label %261

286:                                              ; preds = %282
  %287 = load %struct.tftp_stats*, %struct.tftp_stats** %8, align 8
  %288 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %287, i32 0, i32 0
  %289 = call i32 @gettimeofday(i32* %288, i32* null)
  br label %290

290:                                              ; preds = %286
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* @segsize, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %78, label %295

295:                                              ; preds = %290
  %296 = load i64, i64* @acting_as_client, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %299

298:                                              ; preds = %295
  store i32 1, i32* %20, align 4
  br label %337

299:                                              ; preds = %295
  store i32 0, i32* %16, align 4
  br label %300

300:                                              ; preds = %332, %299
  %301 = load i32, i32* %6, align 4
  %302 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %303 = bitcast %struct.tftphdr* %302 to i8*
  %304 = load i32, i32* @pktsize, align 4
  %305 = load i32, i32* @timeoutpacket, align 4
  %306 = call i32 @receive_packet(i32 %301, i8* %303, i32 %304, i32* null, i32 %305)
  store i32 %306, i32* %13, align 4
  %307 = load i32, i32* %13, align 4
  %308 = icmp sle i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %300
  br label %335

310:                                              ; preds = %300
  %311 = load i32, i32* %13, align 4
  %312 = icmp sgt i32 %311, 0
  br i1 %312, label %313, label %331

313:                                              ; preds = %310
  %314 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %315 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @DATA, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %331

319:                                              ; preds = %313
  %320 = load i64*, i64** %7, align 8
  %321 = load i64, i64* %320, align 8
  %322 = load %struct.tftphdr*, %struct.tftphdr** %11, align 8
  %323 = getelementptr inbounds %struct.tftphdr, %struct.tftphdr* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %321, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %319
  %327 = load i32, i32* %6, align 4
  %328 = load i64*, i64** %7, align 8
  %329 = load i64, i64* %328, align 8
  %330 = call i32 @send_ack(i32 %327, i64 %329)
  br label %331

331:                                              ; preds = %326, %319, %313, %310
  br label %332

332:                                              ; preds = %331
  %333 = load i32, i32* %16, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %16, align 4
  br label %300

335:                                              ; preds = %309
  br label %336

336:                                              ; preds = %335, %250, %161
  store i32 1, i32* %20, align 4
  br label %337

337:                                              ; preds = %336, %298, %272, %132, %71, %53
  %338 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %338)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_file(i32, i32) #2

declare dso_local i32 @send_ack(i32, i64) #2

declare dso_local i32 @tftp_log(i32, i8*, ...) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #2

declare dso_local i64 @atoi(i32*) #2

declare dso_local i32 @receive_packet(i32, i8*, i32, i32*, i32) #2

declare dso_local i64 @rp_strerror(i32) #2

declare dso_local i32 @synchnet(i32) #2

declare dso_local i64 @packettype(i64) #2

declare dso_local i32 @send_error(i32, i64) #2

declare dso_local i32 @write_close(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
