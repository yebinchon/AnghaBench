; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_print_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_print_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server = type { i64, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"server %s, stratum %d, offset %s, delay %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"server %s, port %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"stratum %d, precision %d, leap %c%c, trust %03o\0A\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"refid [%s], root delay %s, root dispersion %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"transmitted %d, in filter %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"reference time:      %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"originate timestamp: %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"transmit timestamp:  %s\0A\00", align 1
@sys_samples = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"filter delay: \00", align 1
@NTP_SHIFT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"\0A              \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c" %-10.10s\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"----\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"filter offset:\00", align 1
@PEER_SHIFT = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"delay %s, dispersion %s, \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"offset %s\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.server*, i32*)* @print_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_server(%struct.server* %0, i32* %1) #0 {
  %3 = alloca %struct.server*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i8*, align 8
  store %struct.server* %0, %struct.server** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.server*, %struct.server** %3, align 8
  %9 = getelementptr inbounds %struct.server, %struct.server* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %268

13:                                               ; preds = %2
  %14 = load i32, i32* @debug, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %4, align 8
  %18 = load %struct.server*, %struct.server** %3, align 8
  %19 = getelementptr inbounds %struct.server, %struct.server* %18, i32 0, i32 17
  %20 = call i8* @stoa(i32* %19)
  %21 = load %struct.server*, %struct.server** %3, align 8
  %22 = getelementptr inbounds %struct.server, %struct.server* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.server*, %struct.server** %3, align 8
  %25 = getelementptr inbounds %struct.server, %struct.server* %24, i32 0, i32 5
  %26 = call i8* @lfptoa(i32* %25, i32 6)
  %27 = load %struct.server*, %struct.server** %3, align 8
  %28 = getelementptr inbounds %struct.server, %struct.server* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i8* @fptoa(i32 %30, i32 5)
  %32 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %20, i64 %23, i8* %26, i8* %31)
  br label %268

33:                                               ; preds = %13
  %34 = load i32*, i32** %4, align 8
  %35 = load %struct.server*, %struct.server** %3, align 8
  %36 = getelementptr inbounds %struct.server, %struct.server* %35, i32 0, i32 17
  %37 = call i8* @stoa(i32* %36)
  %38 = load %struct.server*, %struct.server** %3, align 8
  %39 = getelementptr inbounds %struct.server, %struct.server* %38, i32 0, i32 17
  %40 = bitcast i32* %39 to %struct.sockaddr_in*
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ntohs(i32 %42)
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %43)
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.server*, %struct.server** %3, align 8
  %47 = getelementptr inbounds %struct.server, %struct.server* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.server*, %struct.server** %3, align 8
  %50 = getelementptr inbounds %struct.server, %struct.server* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.server*, %struct.server** %3, align 8
  %53 = getelementptr inbounds %struct.server, %struct.server* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 2
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 49, i32 48
  %59 = load %struct.server*, %struct.server** %3, align 8
  %60 = getelementptr inbounds %struct.server, %struct.server* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 49, i32 48
  %66 = load %struct.server*, %struct.server** %3, align 8
  %67 = getelementptr inbounds %struct.server, %struct.server* %66, i32 0, i32 16
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %48, i32 %51, i32 %58, i32 %65, i32 %68)
  %70 = load %struct.server*, %struct.server** %3, align 8
  %71 = getelementptr inbounds %struct.server, %struct.server* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i64 @REFID_ISTEXT(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %123

76:                                               ; preds = %33
  %77 = load %struct.server*, %struct.server** %3, align 8
  %78 = getelementptr inbounds %struct.server, %struct.server* %77, i32 0, i32 15
  %79 = bitcast i32* %78 to i8*
  store i8* %79, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %115, %76
  %81 = load i32, i32* %5, align 4
  %82 = icmp slt i32 %81, 4
  br i1 %82, label %83, label %91

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 0
  br label %91

91:                                               ; preds = %83, %80
  %92 = phi i1 [ false, %80 ], [ %90, %83 ]
  br i1 %92, label %93, label %118

93:                                               ; preds = %91
  %94 = load i8*, i8** %7, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call i64 @isprint(i8 signext %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %93
  %102 = load i8*, i8** %7, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  br label %109

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %101
  %110 = phi i32 [ %107, %101 ], [ 46, %108 ]
  %111 = trunc i32 %110 to i8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %113
  store i8 %111, i8* %114, align 1
  br label %115

115:                                              ; preds = %109
  %116 = load i32, i32* %5, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %5, align 4
  br label %80

118:                                              ; preds = %91
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 %120
  store i8 0, i8* %121, align 1
  %122 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8* %122, i8** %7, align 8
  br label %128

123:                                              ; preds = %33
  %124 = load %struct.server*, %struct.server** %3, align 8
  %125 = getelementptr inbounds %struct.server, %struct.server* %124, i32 0, i32 15
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @numtoa(i32 %126)
  store i8* %127, i8** %7, align 8
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32*, i32** %4, align 8
  %130 = load i8*, i8** %7, align 8
  %131 = load %struct.server*, %struct.server** %3, align 8
  %132 = getelementptr inbounds %struct.server, %struct.server* %131, i32 0, i32 14
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = call i8* @fptoa(i32 %134, i32 6)
  %136 = load %struct.server*, %struct.server** %3, align 8
  %137 = getelementptr inbounds %struct.server, %struct.server* %136, i32 0, i32 13
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @ufptoa(i32 %138, i32 6)
  %140 = call i32 (i32*, i8*, ...) @fprintf(i32* %129, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %130, i8* %135, i8* %139)
  %141 = load %struct.server*, %struct.server** %3, align 8
  %142 = getelementptr inbounds %struct.server, %struct.server* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.server*, %struct.server** %3, align 8
  %145 = getelementptr inbounds %struct.server, %struct.server* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %143, %146
  br i1 %147, label %148, label %157

148:                                              ; preds = %128
  %149 = load i32*, i32** %4, align 8
  %150 = load %struct.server*, %struct.server** %3, align 8
  %151 = getelementptr inbounds %struct.server, %struct.server* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.server*, %struct.server** %3, align 8
  %154 = getelementptr inbounds %struct.server, %struct.server* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32*, i8*, ...) @fprintf(i32* %149, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155)
  br label %157

157:                                              ; preds = %148, %128
  %158 = load i32*, i32** %4, align 8
  %159 = load %struct.server*, %struct.server** %3, align 8
  %160 = getelementptr inbounds %struct.server, %struct.server* %159, i32 0, i32 12
  %161 = call i8* @prettydate(i32* %160)
  %162 = call i32 (i32*, i8*, ...) @fprintf(i32* %158, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i8* %161)
  %163 = load i32*, i32** %4, align 8
  %164 = load %struct.server*, %struct.server** %3, align 8
  %165 = getelementptr inbounds %struct.server, %struct.server* %164, i32 0, i32 11
  %166 = call i8* @prettydate(i32* %165)
  %167 = call i32 (i32*, i8*, ...) @fprintf(i32* %163, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %166)
  %168 = load i32*, i32** %4, align 8
  %169 = load %struct.server*, %struct.server** %3, align 8
  %170 = getelementptr inbounds %struct.server, %struct.server* %169, i32 0, i32 10
  %171 = call i8* @prettydate(i32* %170)
  %172 = call i32 (i32*, i8*, ...) @fprintf(i32* %168, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8* %171)
  %173 = load i32, i32* @sys_samples, align 4
  %174 = icmp sgt i32 %173, 1
  br i1 %174, label %175, label %251

175:                                              ; preds = %157
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 (i32*, i8*, ...) @fprintf(i32* %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %208, %175
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @NTP_SHIFT, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %211

182:                                              ; preds = %178
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @NTP_SHIFT, align 4
  %185 = ashr i32 %184, 1
  %186 = icmp eq i32 %183, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32*, i32** %4, align 8
  %189 = call i32 (i32*, i8*, ...) @fprintf(i32* %188, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %190

190:                                              ; preds = %187, %182
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* %5, align 4
  %193 = load i32, i32* @sys_samples, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.server*, %struct.server** %3, align 8
  %197 = getelementptr inbounds %struct.server, %struct.server* %196, i32 0, i32 9
  %198 = load i32*, i32** %197, align 8
  %199 = load i32, i32* %5, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @fptoa(i32 %202, i32 5)
  br label %205

204:                                              ; preds = %190
  br label %205

205:                                              ; preds = %204, %195
  %206 = phi i8* [ %203, %195 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %204 ]
  %207 = call i32 (i32*, i8*, ...) @fprintf(i32* %191, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %206)
  br label %208

208:                                              ; preds = %205
  %209 = load i32, i32* %5, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %5, align 4
  br label %178

211:                                              ; preds = %178
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 (i32*, i8*, ...) @fprintf(i32* %212, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  %214 = load i32*, i32** %4, align 8
  %215 = call i32 (i32*, i8*, ...) @fprintf(i32* %214, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.13, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %245, %211
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* @PEER_SHIFT, align 4
  %219 = icmp slt i32 %217, %218
  br i1 %219, label %220, label %248

220:                                              ; preds = %216
  %221 = load i32, i32* %5, align 4
  %222 = load i32, i32* @PEER_SHIFT, align 4
  %223 = ashr i32 %222, 1
  %224 = icmp eq i32 %221, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %220
  %226 = load i32*, i32** %4, align 8
  %227 = call i32 (i32*, i8*, ...) @fprintf(i32* %226, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %228

228:                                              ; preds = %225, %220
  %229 = load i32*, i32** %4, align 8
  %230 = load i32, i32* %5, align 4
  %231 = load i32, i32* @sys_samples, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %241

233:                                              ; preds = %228
  %234 = load %struct.server*, %struct.server** %3, align 8
  %235 = getelementptr inbounds %struct.server, %struct.server* %234, i32 0, i32 8
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %5, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  %240 = call i8* @lfptoa(i32* %239, i32 6)
  br label %242

241:                                              ; preds = %228
  br label %242

242:                                              ; preds = %241, %233
  %243 = phi i8* [ %240, %233 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), %241 ]
  %244 = call i32 (i32*, i8*, ...) @fprintf(i32* %229, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %242
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %5, align 4
  br label %216

248:                                              ; preds = %216
  %249 = load i32*, i32** %4, align 8
  %250 = call i32 (i32*, i8*, ...) @fprintf(i32* %249, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0))
  br label %251

251:                                              ; preds = %248, %157
  %252 = load i32*, i32** %4, align 8
  %253 = load %struct.server*, %struct.server** %3, align 8
  %254 = getelementptr inbounds %struct.server, %struct.server* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = trunc i64 %255 to i32
  %257 = call i8* @fptoa(i32 %256, i32 5)
  %258 = load %struct.server*, %struct.server** %3, align 8
  %259 = getelementptr inbounds %struct.server, %struct.server* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 4
  %261 = call i8* @ufptoa(i32 %260, i32 5)
  %262 = call i32 (i32*, i8*, ...) @fprintf(i32* %252, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i8* %257, i8* %261)
  %263 = load i32*, i32** %4, align 8
  %264 = load %struct.server*, %struct.server** %3, align 8
  %265 = getelementptr inbounds %struct.server, %struct.server* %264, i32 0, i32 5
  %266 = call i8* @lfptoa(i32* %265, i32 6)
  %267 = call i32 (i32*, i8*, ...) @fprintf(i32* %263, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8* %266)
  br label %268

268:                                              ; preds = %251, %16, %12
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i8* @stoa(i32*) #1

declare dso_local i8* @lfptoa(i32*, i32) #1

declare dso_local i8* @fptoa(i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @REFID_ISTEXT(i32) #1

declare dso_local i64 @isprint(i8 signext) #1

declare dso_local i8* @numtoa(i32) #1

declare dso_local i8* @ufptoa(i32, i32) #1

declare dso_local i8* @prettydate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
