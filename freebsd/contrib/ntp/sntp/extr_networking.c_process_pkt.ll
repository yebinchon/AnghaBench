; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_networking.c_process_pkt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_networking.c_process_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pkt = type { i64, i32, i32, i32, i32, i32 }
%struct.key = type { i32 }

@AUTHENTICATION = common dso_local global i32 0, align 4
@LEN_PKT_NOMAC = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: Incredible packet length: %d.  Discarding.\00", align 1
@PACKET_UNUSEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"%s: Missing extension field.  Discarding.\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Crypto NAK = 0x%08x from %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"%s: Key ID + 3DES MAC is unsupported.  Discarding.\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"unrecognized key ID = 0x%08x\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [56 x i8] c"sntp %s: packet from %s authenticated using key id %d.\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: Unexpected extension length: %d.  Discarding.\00", align 1
@SERVER_AUTH_FAIL = common dso_local global i32 0, align 4
@NTP_OLDVERSION = common dso_local global i32 0, align 4
@NTP_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: Packet shows wrong version (%d)\00", align 1
@SERVER_UNUSEABLE = common dso_local global i32 0, align 4
@MODE_PASSIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"%s: mode %d stratum %d\00", align 1
@STRATUM_PKT_UNSPEC = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [63 x i8] c"%s: Stratum unspecified, going to check for KOD (stratum: %d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"%s: Packet refid: %c%c%c%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"DENY\00", align 1
@KOD_DEMOBILIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [5 x i8] c"RSTR\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"RATE\00", align 1
@KOD_RATE = common dso_local global i32 0, align 4
@LEAP_NOTINSYNC = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [41 x i8] c"%s: %s not in sync, skipping this server\00", align 1
@MODE_BROADCAST = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"%s response org expected to match sent xmt\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"resp org: %s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"sent xmt: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_pkt(%struct.pkt* %0, i32* %1, i32 %2, i32 %3, %struct.pkt* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkt*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pkt*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.key*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  store %struct.pkt* %0, %struct.pkt** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.pkt* %4, %struct.pkt** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.key* null, %struct.key** %15, align 8
  %24 = load i32, i32* @AUTHENTICATION, align 4
  %25 = call i64 @HAVE_OPT(i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 0, i32 -1
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i64, i64* @LEN_PKT_NOMAC, align 8
  %31 = trunc i64 %30 to i32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, 3
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33, %6
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %39, i32 %40)
  %42 = load i32, i32* @PACKET_UNUSEABLE, align 4
  store i32 %42, i32* %7, align 4
  br label %285

43:                                               ; preds = %33
  %44 = load %struct.pkt*, %struct.pkt** %8, align 8
  %45 = bitcast %struct.pkt* %44 to i8*
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %20, align 8
  %50 = load %struct.pkt*, %struct.pkt** %8, align 8
  %51 = getelementptr inbounds %struct.pkt, %struct.pkt* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = load i32*, i32** %20, align 8
  %54 = call i32* @skip_efields(i32 %52, i32* %53)
  store i32* %54, i32** %19, align 8
  %55 = load i32*, i32** %19, align 8
  %56 = icmp eq i32* null, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %43
  %58 = load i32, i32* @LOG_ERR, align 4
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load i32, i32* @PACKET_UNUSEABLE, align 4
  store i32 %61, i32* %7, align 4
  br label %285

62:                                               ; preds = %43
  %63 = load i32*, i32** %20, align 8
  %64 = load i32*, i32** %19, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %18, align 4
  %70 = load i32, i32* %18, align 4
  switch i32 %70, label %119 [
    i32 0, label %71
    i32 1, label %72
    i32 3, label %80
    i32 5, label %85
    i32 6, label %85
  ]

71:                                               ; preds = %62
  br label %125

72:                                               ; preds = %62
  %73 = load i32*, i32** %19, align 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ntohl(i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = call i8* @stoa(i32* %77)
  %79 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %76, i8* %78)
  br label %125

80:                                               ; preds = %62
  %81 = load i32, i32* @LOG_ERR, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %81, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i8* %82)
  %84 = load i32, i32* @PACKET_UNUSEABLE, align 4
  store i32 %84, i32* %7, align 4
  br label %285

85:                                               ; preds = %62, %62
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ntohl(i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @get_key(i32 %89, %struct.key** %15)
  %91 = load %struct.key*, %struct.key** %15, align 8
  %92 = icmp ne %struct.key* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %85
  %94 = load i32, i32* %14, align 4
  %95 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %94)
  br label %125

96:                                               ; preds = %85
  %97 = load i32, i32* %18, align 4
  %98 = shl i32 %97, 2
  store i32 %98, i32* %17, align 4
  %99 = load %struct.pkt*, %struct.pkt** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, 4
  %105 = load %struct.key*, %struct.key** %15, align 8
  %106 = call i32 @auth_md5(%struct.pkt* %99, i32 %102, i32 %104, %struct.key* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %96
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %16, align 4
  br label %125

110:                                              ; preds = %96
  %111 = load i32, i32* @TRUE, align 4
  store i32 %111, i32* %16, align 4
  %112 = load i8*, i8** %13, align 8
  %113 = load i32*, i32** %9, align 8
  %114 = call i8* @stoa(i32* %113)
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to i8*
  %118 = call i32 @TRACE(i32 1, i8* %117)
  br label %125

119:                                              ; preds = %62
  %120 = load i32, i32* @LOG_ERR, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %120, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i8* %121, i32 %122)
  %124 = load i32, i32* @PACKET_UNUSEABLE, align 4
  store i32 %124, i32* %7, align 4
  br label %285

125:                                              ; preds = %110, %108, %93, %72, %71
  %126 = load i32, i32* %16, align 4
  switch i32 %126, label %131 [
    i32 -1, label %127
    i32 0, label %128
    i32 1, label %130
  ]

127:                                              ; preds = %125
  br label %132

128:                                              ; preds = %125
  %129 = load i32, i32* @SERVER_AUTH_FAIL, align 4
  store i32 %129, i32* %7, align 4
  br label %285

130:                                              ; preds = %125
  br label %132

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131, %130, %127
  %133 = load %struct.pkt*, %struct.pkt** %8, align 8
  %134 = getelementptr inbounds %struct.pkt, %struct.pkt* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @PKT_VERSION(i32 %135)
  %137 = load i32, i32* @NTP_OLDVERSION, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %146, label %139

139:                                              ; preds = %132
  %140 = load %struct.pkt*, %struct.pkt** %8, align 8
  %141 = getelementptr inbounds %struct.pkt, %struct.pkt* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @PKT_VERSION(i32 %142)
  %144 = load i32, i32* @NTP_VERSION, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %139, %132
  %147 = load i32, i32* @LOG_ERR, align 4
  %148 = load i8*, i8** %13, align 8
  %149 = load %struct.pkt*, %struct.pkt** %8, align 8
  %150 = getelementptr inbounds %struct.pkt, %struct.pkt* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @PKT_VERSION(i32 %151)
  %153 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %147, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %148, i32 %152)
  %154 = load i32, i32* @SERVER_UNUSEABLE, align 4
  store i32 %154, i32* %7, align 4
  br label %285

155:                                              ; preds = %139
  %156 = load %struct.pkt*, %struct.pkt** %8, align 8
  %157 = getelementptr inbounds %struct.pkt, %struct.pkt* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @PKT_MODE(i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %181

162:                                              ; preds = %155
  %163 = load %struct.pkt*, %struct.pkt** %8, align 8
  %164 = getelementptr inbounds %struct.pkt, %struct.pkt* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @PKT_MODE(i32 %165)
  %167 = load i32, i32* @MODE_PASSIVE, align 4
  %168 = icmp ne i32 %166, %167
  br i1 %168, label %169, label %181

169:                                              ; preds = %162
  %170 = load i32, i32* @LOG_ERR, align 4
  %171 = load i8*, i8** %13, align 8
  %172 = load %struct.pkt*, %struct.pkt** %8, align 8
  %173 = getelementptr inbounds %struct.pkt, %struct.pkt* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @PKT_MODE(i32 %174)
  %176 = load %struct.pkt*, %struct.pkt** %8, align 8
  %177 = getelementptr inbounds %struct.pkt, %struct.pkt* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %170, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %171, i32 %175, i64 %178)
  %180 = load i32, i32* @SERVER_UNUSEABLE, align 4
  store i32 %180, i32* %7, align 4
  br label %285

181:                                              ; preds = %162, %155
  %182 = load i64, i64* @STRATUM_PKT_UNSPEC, align 8
  %183 = load %struct.pkt*, %struct.pkt** %8, align 8
  %184 = getelementptr inbounds %struct.pkt, %struct.pkt* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %182, %185
  br i1 %186, label %187, label %238

187:                                              ; preds = %181
  %188 = load i8*, i8** %13, align 8
  %189 = load %struct.pkt*, %struct.pkt** %8, align 8
  %190 = getelementptr inbounds %struct.pkt, %struct.pkt* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @TRACE(i32 1, i8* %192)
  %194 = load %struct.pkt*, %struct.pkt** %8, align 8
  %195 = getelementptr inbounds %struct.pkt, %struct.pkt* %194, i32 0, i32 4
  %196 = bitcast i32* %195 to i8*
  store i8* %196, i8** %23, align 8
  %197 = load i8*, i8** %13, align 8
  %198 = load i8*, i8** %23, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 0
  %200 = load i8, i8* %199, align 1
  %201 = load i8*, i8** %23, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %23, align 8
  %205 = getelementptr inbounds i8, i8* %204, i64 2
  %206 = load i8, i8* %205, align 1
  %207 = load i8*, i8** %23, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 3
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i64
  %211 = inttoptr i64 %210 to i8*
  %212 = call i32 @TRACE(i32 1, i8* %211)
  %213 = load i8*, i8** %23, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 88
  br i1 %217, label %218, label %237

218:                                              ; preds = %187
  %219 = load i8*, i8** %23, align 8
  %220 = call i64 @strncmp(i8* %219, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 4)
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %218
  %223 = load i32, i32* @KOD_DEMOBILIZE, align 4
  store i32 %223, i32* %7, align 4
  br label %285

224:                                              ; preds = %218
  %225 = load i8*, i8** %23, align 8
  %226 = call i64 @strncmp(i8* %225, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32 4)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %224
  %229 = load i32, i32* @KOD_DEMOBILIZE, align 4
  store i32 %229, i32* %7, align 4
  br label %285

230:                                              ; preds = %224
  %231 = load i8*, i8** %23, align 8
  %232 = call i64 @strncmp(i8* %231, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 4)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %230
  %235 = load i32, i32* @KOD_RATE, align 4
  store i32 %235, i32* %7, align 4
  br label %285

236:                                              ; preds = %230
  br label %237

237:                                              ; preds = %236, %187
  br label %238

238:                                              ; preds = %237, %181
  %239 = load i64, i64* @LEAP_NOTINSYNC, align 8
  %240 = load %struct.pkt*, %struct.pkt** %8, align 8
  %241 = getelementptr inbounds %struct.pkt, %struct.pkt* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @PKT_LEAP(i32 %242)
  %244 = icmp eq i64 %239, %243
  br i1 %244, label %245, label %252

245:                                              ; preds = %238
  %246 = load i32, i32* @LOG_ERR, align 4
  %247 = load i8*, i8** %13, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = call i8* @stoa(i32* %248)
  %250 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %246, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i64 0, i64 0), i8* %247, i8* %249)
  %251 = load i32, i32* @SERVER_UNUSEABLE, align 4
  store i32 %251, i32* %7, align 4
  br label %285

252:                                              ; preds = %238
  %253 = load i32, i32* @MODE_BROADCAST, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* %10, align 4
  store i32 %257, i32* %7, align 4
  br label %285

258:                                              ; preds = %252
  %259 = load %struct.pkt*, %struct.pkt** %8, align 8
  %260 = getelementptr inbounds %struct.pkt, %struct.pkt* %259, i32 0, i32 2
  %261 = load %struct.pkt*, %struct.pkt** %12, align 8
  %262 = getelementptr inbounds %struct.pkt, %struct.pkt* %261, i32 0, i32 1
  %263 = call i32 @L_ISEQU(i32* %260, i32* %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %283, label %265

265:                                              ; preds = %258
  %266 = load %struct.pkt*, %struct.pkt** %8, align 8
  %267 = getelementptr inbounds %struct.pkt, %struct.pkt* %266, i32 0, i32 2
  %268 = call i32 @NTOHL_FP(i32* %267, i32* %22)
  %269 = load %struct.pkt*, %struct.pkt** %12, align 8
  %270 = getelementptr inbounds %struct.pkt, %struct.pkt* %269, i32 0, i32 1
  %271 = call i32 @NTOHL_FP(i32* %270, i32* %21)
  %272 = load i32, i32* @LOG_ERR, align 4
  %273 = load i32*, i32** %9, align 8
  %274 = call i8* @stoa(i32* %273)
  %275 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %272, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i8* %274)
  %276 = load i32, i32* @LOG_ERR, align 4
  %277 = call i8* @prettydate(i32* %22)
  %278 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %277)
  %279 = load i32, i32* @LOG_ERR, align 4
  %280 = call i8* @prettydate(i32* %21)
  %281 = call i32 (i32, i8*, i8*, ...) @msyslog(i32 %279, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0), i8* %280)
  %282 = load i32, i32* @PACKET_UNUSEABLE, align 4
  store i32 %282, i32* %7, align 4
  br label %285

283:                                              ; preds = %258
  %284 = load i32, i32* %10, align 4
  store i32 %284, i32* %7, align 4
  br label %285

285:                                              ; preds = %283, %265, %256, %245, %234, %228, %222, %169, %146, %128, %119, %80, %57, %37
  %286 = load i32, i32* %7, align 4
  ret i32 %286
}

declare dso_local i64 @HAVE_OPT(i32) #1

declare dso_local i32 @msyslog(i32, i8*, i8*, ...) #1

declare dso_local i32* @skip_efields(i32, i32*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i32 @get_key(i32, %struct.key**) #1

declare dso_local i32 @auth_md5(%struct.pkt*, i32, i32, %struct.key*) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @PKT_VERSION(i32) #1

declare dso_local i32 @PKT_MODE(i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @PKT_LEAP(i32) #1

declare dso_local i32 @L_ISEQU(i32*, i32*) #1

declare dso_local i32 @NTOHL_FP(i32*, i32*) #1

declare dso_local i8* @prettydate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
