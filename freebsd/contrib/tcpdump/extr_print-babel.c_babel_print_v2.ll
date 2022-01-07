; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_babel_print_v2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-babel.c_babel_print_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c" (%u)\00", align 1
@MESSAGE_PAD1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A\09Pad 1\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" pad1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c" padN\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"\0A\09Pad %d\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c" ack-req\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\0A\09Acknowledgment Request \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"%04x %s\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c" ack\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"\0A\09Acknowledgment \00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" hello\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\0A\09Hello \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"seqno %u interval %s\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c" ihu\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"\0A\09IHU \00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [25 x i8] c"%s txcost %u interval %s\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c" router-id\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"\0A\09Router Id\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" nh\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"\0A\09Next Hop\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" update\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"/truncated\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"/prefix\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"/id\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"/unknown\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"\0A\09Update\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"%s%s%s %s metric %u seqno %u interval %s\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c" request\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"\0A\09Request \00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"for %s\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c" mh-request\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"\0A\09MH-Request \00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"(%u hops) for %s seqno %u id %s\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c" tspc\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"\0A\09TS/PC \00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"timestamp %u packetcounter %u\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c" hmac\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"\0A\09HMAC \00", align 1
@.str.44 = private unnamed_addr constant [21 x i8] c"key-id %u digest-%u \00", align 1
@.str.45 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c" ss-update\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"\0A\09SS-Update\00", align 1
@.str.48 = private unnamed_addr constant [9 x i8] c" %s from\00", align 1
@.str.49 = private unnamed_addr constant [35 x i8] c" %s metric %u seqno %u interval %s\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c" ss-request\00", align 1
@.str.51 = private unnamed_addr constant [14 x i8] c"\0A\09SS-Request \00", align 1
@.str.52 = private unnamed_addr constant [8 x i8] c"for any\00", align 1
@.str.53 = private unnamed_addr constant [10 x i8] c"for (%s, \00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.55 = private unnamed_addr constant [15 x i8] c" ss-mh-request\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"\0A\09SS-MH-Request \00", align 1
@.str.57 = private unnamed_addr constant [20 x i8] c"(%u hops) for (%s, \00", align 1
@.str.58 = private unnamed_addr constant [19 x i8] c"%s) seqno %u id %s\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c" unknown\00", align 1
@.str.60 = private unnamed_addr constant [26 x i8] c"\0A\09Unknown message type %d\00", align 1
@istr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32)* @babel_print_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @babel_print_v2(%struct.TYPE_7__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca [16 x i32], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i16, align 2
  %21 = alloca [16 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca [16 x i32], align 16
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca [16 x i32], align 16
  %31 = alloca i32, align 4
  %32 = alloca [16 x i32], align 16
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca [16 x i32], align 16
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca [16 x i32], align 16
  %40 = alloca [16 x i32], align 16
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca [16 x i32], align 16
  %56 = alloca [16 x i32], align 16
  %57 = alloca i32, align 4
  %58 = alloca i32, align 4
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca [16 x i32], align 16
  %64 = alloca [16 x i32], align 16
  %65 = alloca i32, align 4
  %66 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %67 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %67, i8 0, i64 64, i1 false)
  %68 = bitcast i8* %67 to [16 x i32]*
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %68, i32 0, i32 10
  store i32 255, i32* %69, align 8
  %70 = getelementptr inbounds [16 x i32], [16 x i32]* %68, i32 0, i32 11
  store i32 255, i32* %70, align 4
  %71 = bitcast [16 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %71, i8 0, i64 64, i1 false)
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ND_TCHECK2(i32 %73, i32 4)
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 4
  br i1 %76, label %77, label %78

77:                                               ; preds = %3
  br label %1103

78:                                               ; preds = %3
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = call i8* @EXTRACT_16BITS(i32* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = inttoptr i64 %85 to %struct.TYPE_7__*
  %87 = call i32 @ND_PRINT(%struct.TYPE_7__* %86)
  store i32 0, i32* %7, align 4
  br label %88

88:                                               ; preds = %1091, %106, %78
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %1096

92:                                               ; preds = %88
  %93 = load i32*, i32** %5, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 4
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %11, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @ND_TCHECK2(i32 %99, i32 1)
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* @MESSAGE_PAD1, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %92
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %114 = bitcast i8* %113 to %struct.TYPE_7__*
  %115 = call i32 @ND_PRINT(%struct.TYPE_7__* %114)
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %88

118:                                              ; preds = %92
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ND_TCHECK2(i32 %120, i32 2)
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @ICHECK(i32 %122, i32 2)
  %124 = load i32*, i32** %11, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %13, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 2, %129
  %131 = call i32 @ND_TCHECK2(i32 %128, i32 %130)
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %13, align 4
  %134 = add nsw i32 2, %133
  %135 = call i32 @ICHECK(i32 %132, i32 %134)
  %136 = load i32, i32* %12, align 4
  switch i32 %136, label %1076 [
    i32 134, label %137
    i32 141, label %153
    i32 142, label %185
    i32 140, label %210
    i32 138, label %256
    i32 131, label %327
    i32 135, label %350
    i32 129, label %386
    i32 133, label %556
    i32 137, label %613
    i32 130, label %674
    i32 139, label %699
    i32 128, label %744
    i32 132, label %880
    i32 136, label %976
  ]

137:                                              ; preds = %118
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %145, label %142

142:                                              ; preds = %137
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %144 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([6 x i8]* @.str.3 to %struct.TYPE_7__*))
  br label %152

145:                                              ; preds = %137
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 2
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to %struct.TYPE_7__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_7__* %150)
  br label %152

152:                                              ; preds = %145, %142
  br label %1091

153:                                              ; preds = %118
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %160 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.5 to %struct.TYPE_7__*))
  br label %184

161:                                              ; preds = %153
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %163 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([26 x i8]* @.str.6 to %struct.TYPE_7__*))
  %164 = load i32, i32* %13, align 4
  %165 = icmp slt i32 %164, 6
  br i1 %165, label %166, label %167

166:                                              ; preds = %161
  br label %1103

167:                                              ; preds = %161
  %168 = load i32*, i32** %11, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  %170 = call i8* @EXTRACT_16BITS(i32* %169)
  %171 = ptrtoint i8* %170 to i32
  store i32 %171, i32* %14, align 4
  %172 = load i32*, i32** %11, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 6
  %174 = call i8* @EXTRACT_16BITS(i32* %173)
  %175 = ptrtoint i8* %174 to i32
  store i32 %175, i32* %15, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = load i32, i32* %14, align 4
  %178 = load i32, i32* %15, align 4
  %179 = trunc i32 %178 to i16
  %180 = call i32 @format_interval(i16 zeroext %179)
  %181 = sext i32 %180 to i64
  %182 = inttoptr i64 %181 to %struct.TYPE_7__*
  %183 = call i32 @ND_PRINT(%struct.TYPE_7__* %182)
  br label %184

184:                                              ; preds = %167, %158
  br label %1091

185:                                              ; preds = %118
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %193, label %190

190:                                              ; preds = %185
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %192 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([5 x i8]* @.str.8 to %struct.TYPE_7__*))
  br label %209

193:                                              ; preds = %185
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %195 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([18 x i8]* @.str.9 to %struct.TYPE_7__*))
  %196 = load i32, i32* %13, align 4
  %197 = icmp slt i32 %196, 2
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %1103

199:                                              ; preds = %193
  %200 = load i32*, i32** %11, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 2
  %202 = call i8* @EXTRACT_16BITS(i32* %201)
  %203 = ptrtoint i8* %202 to i32
  store i32 %203, i32* %16, align 4
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to %struct.TYPE_7__*
  %208 = call i32 @ND_PRINT(%struct.TYPE_7__* %207)
  br label %209

209:                                              ; preds = %199, %190
  br label %1091

210:                                              ; preds = %118
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %218, label %215

215:                                              ; preds = %210
  %216 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %217 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.11 to %struct.TYPE_7__*))
  br label %255

218:                                              ; preds = %210
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %220 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.12 to %struct.TYPE_7__*))
  %221 = load i32, i32* %13, align 4
  %222 = icmp slt i32 %221, 6
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %1103

224:                                              ; preds = %218
  %225 = load i32*, i32** %11, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 4
  %227 = call i8* @EXTRACT_16BITS(i32* %226)
  %228 = ptrtoint i8* %227 to i32
  store i32 %228, i32* %17, align 4
  %229 = load i32*, i32** %11, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 6
  %231 = call i8* @EXTRACT_16BITS(i32* %230)
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %18, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %234 = load i32, i32* %17, align 4
  %235 = load i32, i32* %18, align 4
  %236 = trunc i32 %235 to i16
  %237 = call i32 @format_interval(i16 zeroext %236)
  %238 = sext i32 %237 to i64
  %239 = inttoptr i64 %238 to %struct.TYPE_7__*
  %240 = call i32 @ND_PRINT(%struct.TYPE_7__* %239)
  %241 = load i32, i32* %13, align 4
  %242 = icmp sgt i32 %241, 6
  br i1 %242, label %243, label %254

243:                                              ; preds = %224
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %245 = load i32*, i32** %11, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 8
  %247 = load i32*, i32** %11, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %13, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %12, align 4
  %253 = call i32 @subtlvs_print(%struct.TYPE_7__* %244, i32* %246, i32* %251, i32 %252)
  br label %254

254:                                              ; preds = %243, %224
  br label %255

255:                                              ; preds = %254, %215
  br label %1091

256:                                              ; preds = %118
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %256
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %263 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([5 x i8]* @.str.14 to %struct.TYPE_7__*))
  br label %326

264:                                              ; preds = %256
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %266 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([7 x i8]* @.str.15 to %struct.TYPE_7__*))
  %267 = load i32, i32* %13, align 4
  %268 = icmp slt i32 %267, 6
  br i1 %268, label %269, label %270

269:                                              ; preds = %264
  br label %1103

270:                                              ; preds = %264
  %271 = load i32*, i32** %11, align 8
  %272 = getelementptr inbounds i32, i32* %271, i64 4
  %273 = call i8* @EXTRACT_16BITS(i32* %272)
  %274 = ptrtoint i8* %273 to i16
  store i16 %274, i16* %19, align 2
  %275 = load i32*, i32** %11, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 6
  %277 = call i8* @EXTRACT_16BITS(i32* %276)
  %278 = ptrtoint i8* %277 to i16
  store i16 %278, i16* %20, align 2
  %279 = load i32*, i32** %11, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = load i32*, i32** %11, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 8
  %284 = load i32, i32* %13, align 4
  %285 = sub nsw i32 %284, 6
  %286 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %287 = call i32 @network_address(i32 %281, i32* %283, i32 %285, i32* %286)
  store i32 %287, i32* %22, align 4
  %288 = load i32, i32* %22, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %270
  %291 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %292 = load i32, i32* @tstr, align 4
  %293 = sext i32 %292 to i64
  %294 = inttoptr i64 %293 to %struct.TYPE_7__*
  %295 = call i32 @ND_PRINT(%struct.TYPE_7__* %294)
  br label %1091

296:                                              ; preds = %270
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %299 = getelementptr inbounds [16 x i32], [16 x i32]* %21, i64 0, i64 0
  %300 = call i32 @format_address(%struct.TYPE_7__* %298, i32* %299)
  %301 = load i16, i16* %19, align 2
  %302 = load i16, i16* %20, align 2
  %303 = call i32 @format_interval(i16 zeroext %302)
  %304 = sext i32 %303 to i64
  %305 = inttoptr i64 %304 to %struct.TYPE_7__*
  %306 = call i32 @ND_PRINT(%struct.TYPE_7__* %305)
  %307 = load i32, i32* %22, align 4
  %308 = load i32, i32* %13, align 4
  %309 = sub nsw i32 %308, 6
  %310 = icmp slt i32 %307, %309
  br i1 %310, label %311, label %325

311:                                              ; preds = %296
  %312 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %313 = load i32*, i32** %11, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 8
  %315 = load i32, i32* %22, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32*, i32** %11, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 2
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %12, align 4
  %324 = call i32 @subtlvs_print(%struct.TYPE_7__* %312, i32* %317, i32* %322, i32 %323)
  br label %325

325:                                              ; preds = %311, %296
  br label %326

326:                                              ; preds = %325, %261
  br label %1091

327:                                              ; preds = %118
  %328 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %328, i32 0, i32 0
  %330 = load i64, i64* %329, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %335, label %332

332:                                              ; preds = %327
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %334 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.18 to %struct.TYPE_7__*))
  br label %349

335:                                              ; preds = %327
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.19 to %struct.TYPE_7__*))
  %338 = load i32, i32* %13, align 4
  %339 = icmp slt i32 %338, 10
  br i1 %339, label %340, label %341

340:                                              ; preds = %335
  br label %1103

341:                                              ; preds = %335
  %342 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %343 = load i32*, i32** %11, align 8
  %344 = getelementptr inbounds i32, i32* %343, i64 4
  %345 = call i32 @format_id(i32* %344)
  %346 = sext i32 %345 to i64
  %347 = inttoptr i64 %346 to %struct.TYPE_7__*
  %348 = call i32 @ND_PRINT(%struct.TYPE_7__* %347)
  br label %349

349:                                              ; preds = %341, %332
  br label %1091

350:                                              ; preds = %118
  %351 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %352 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %358, label %355

355:                                              ; preds = %350
  %356 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %357 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([4 x i8]* @.str.21 to %struct.TYPE_7__*))
  br label %385

358:                                              ; preds = %350
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %360 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.22 to %struct.TYPE_7__*))
  %361 = load i32, i32* %13, align 4
  %362 = icmp slt i32 %361, 2
  br i1 %362, label %363, label %364

363:                                              ; preds = %358
  br label %1103

364:                                              ; preds = %358
  %365 = load i32*, i32** %11, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 2
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %11, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 4
  %370 = load i32, i32* %13, align 4
  %371 = sub nsw i32 %370, 2
  %372 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %373 = call i32 @network_address(i32 %367, i32* %369, i32 %371, i32* %372)
  store i32 %373, i32* %23, align 4
  %374 = load i32, i32* %23, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %364
  br label %1103

377:                                              ; preds = %364
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %380 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  %381 = call i32 @format_address(%struct.TYPE_7__* %379, i32* %380)
  %382 = sext i32 %381 to i64
  %383 = inttoptr i64 %382 to %struct.TYPE_7__*
  %384 = call i32 @ND_PRINT(%struct.TYPE_7__* %383)
  br label %385

385:                                              ; preds = %377, %355
  br label %1091

386:                                              ; preds = %118
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %425, label %391

391:                                              ; preds = %386
  %392 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %393 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.23 to %struct.TYPE_7__*))
  %394 = load i32, i32* %13, align 4
  %395 = icmp slt i32 %394, 1
  br i1 %395, label %396, label %399

396:                                              ; preds = %391
  %397 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %398 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.24 to %struct.TYPE_7__*))
  br label %424

399:                                              ; preds = %391
  %400 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %401 = load i32*, i32** %11, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 3
  %403 = load i32, i32* %402, align 4
  %404 = and i32 %403, 128
  %405 = icmp ne i32 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %408 = load i32*, i32** %11, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 3
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, 64
  %412 = icmp ne i32 %411, 0
  %413 = zext i1 %412 to i64
  %414 = select i1 %412, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %415 = load i32*, i32** %11, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 3
  %417 = load i32, i32* %416, align 4
  %418 = and i32 %417, 63
  %419 = icmp ne i32 %418, 0
  %420 = zext i1 %419 to i64
  %421 = select i1 %419, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %422 = bitcast i8* %421 to %struct.TYPE_7__*
  %423 = call i32 @ND_PRINT(%struct.TYPE_7__* %422)
  br label %424

424:                                              ; preds = %399, %396
  br label %555

425:                                              ; preds = %386
  %426 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %427 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.30 to %struct.TYPE_7__*))
  %428 = load i32, i32* %13, align 4
  %429 = icmp slt i32 %428, 10
  br i1 %429, label %430, label %431

430:                                              ; preds = %425
  br label %1103

431:                                              ; preds = %425
  %432 = load i32*, i32** %11, align 8
  %433 = getelementptr inbounds i32, i32* %432, i64 4
  %434 = load i32, i32* %433, align 4
  %435 = load i32*, i32** %11, align 8
  %436 = getelementptr inbounds i32, i32* %435, i64 2
  %437 = load i32, i32* %436, align 4
  %438 = icmp eq i32 %437, 1
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 96, i32 0
  %441 = add nsw i32 %434, %440
  store i32 %441, i32* %28, align 4
  %442 = load i32*, i32** %11, align 8
  %443 = getelementptr inbounds i32, i32* %442, i64 2
  %444 = load i32, i32* %443, align 4
  %445 = load i32*, i32** %11, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 4
  %447 = load i32, i32* %446, align 4
  %448 = load i32*, i32** %11, align 8
  %449 = getelementptr inbounds i32, i32* %448, i64 5
  %450 = load i32, i32* %449, align 4
  %451 = load i32*, i32** %11, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 12
  %453 = load i32*, i32** %11, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 2
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %455, 1
  br i1 %456, label %457, label %459

457:                                              ; preds = %431
  %458 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  br label %461

459:                                              ; preds = %431
  %460 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  br label %461

461:                                              ; preds = %459, %457
  %462 = phi i32* [ %458, %457 ], [ %460, %459 ]
  %463 = load i32, i32* %13, align 4
  %464 = sub nsw i32 %463, 10
  %465 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 0
  %466 = call i32 @network_prefix(i32 %444, i32 %447, i32 %450, i32* %452, i32* %462, i32 %464, i32* %465)
  store i32 %466, i32* %29, align 4
  %467 = load i32, i32* %29, align 4
  %468 = icmp slt i32 %467, 0
  br i1 %468, label %469, label %470

469:                                              ; preds = %461
  br label %1103

470:                                              ; preds = %461
  %471 = load i32*, i32** %11, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 6
  %473 = call i8* @EXTRACT_16BITS(i32* %472)
  %474 = ptrtoint i8* %473 to i32
  store i32 %474, i32* %25, align 4
  %475 = load i32*, i32** %11, align 8
  %476 = getelementptr inbounds i32, i32* %475, i64 8
  %477 = call i8* @EXTRACT_16BITS(i32* %476)
  %478 = ptrtoint i8* %477 to i32
  store i32 %478, i32* %26, align 4
  %479 = load i32*, i32** %11, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 10
  %481 = call i8* @EXTRACT_16BITS(i32* %480)
  %482 = ptrtoint i8* %481 to i32
  store i32 %482, i32* %27, align 4
  %483 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %484 = load i32*, i32** %11, align 8
  %485 = getelementptr inbounds i32, i32* %484, i64 3
  %486 = load i32, i32* %485, align 4
  %487 = and i32 %486, 128
  %488 = icmp ne i32 %487, 0
  %489 = zext i1 %488 to i64
  %490 = select i1 %488, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %491 = load i32*, i32** %11, align 8
  %492 = getelementptr inbounds i32, i32* %491, i64 3
  %493 = load i32, i32* %492, align 4
  %494 = and i32 %493, 64
  %495 = icmp ne i32 %494, 0
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %498 = load i32*, i32** %11, align 8
  %499 = getelementptr inbounds i32, i32* %498, i64 3
  %500 = load i32, i32* %499, align 4
  %501 = and i32 %500, 63
  %502 = icmp ne i32 %501, 0
  %503 = zext i1 %502 to i64
  %504 = select i1 %502, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i64 0, i64 0)
  %505 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %506 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 0
  %507 = load i32, i32* %28, align 4
  %508 = call i8* @format_prefix(%struct.TYPE_7__* %505, i32* %506, i32 %507)
  %509 = load i32, i32* %27, align 4
  %510 = load i32, i32* %26, align 4
  %511 = load i32, i32* %25, align 4
  %512 = call i32 @format_interval_update(i32 %511)
  %513 = sext i32 %512 to i64
  %514 = inttoptr i64 %513 to %struct.TYPE_7__*
  %515 = call i32 @ND_PRINT(%struct.TYPE_7__* %514)
  %516 = load i32*, i32** %11, align 8
  %517 = getelementptr inbounds i32, i32* %516, i64 3
  %518 = load i32, i32* %517, align 4
  %519 = and i32 %518, 128
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %521, label %535

521:                                              ; preds = %470
  %522 = load i32*, i32** %11, align 8
  %523 = getelementptr inbounds i32, i32* %522, i64 2
  %524 = load i32, i32* %523, align 4
  %525 = icmp eq i32 %524, 1
  br i1 %525, label %526, label %530

526:                                              ; preds = %521
  %527 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %528 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 0
  %529 = call i32 @memcpy(i32* %527, i32* %528, i32 16)
  br label %534

530:                                              ; preds = %521
  %531 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  %532 = getelementptr inbounds [16 x i32], [16 x i32]* %30, i64 0, i64 0
  %533 = call i32 @memcpy(i32* %531, i32* %532, i32 16)
  br label %534

534:                                              ; preds = %530, %526
  br label %535

535:                                              ; preds = %534, %470
  %536 = load i32, i32* %29, align 4
  %537 = load i32, i32* %13, align 4
  %538 = sub nsw i32 %537, 10
  %539 = icmp slt i32 %536, %538
  br i1 %539, label %540, label %554

540:                                              ; preds = %535
  %541 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %542 = load i32*, i32** %11, align 8
  %543 = getelementptr inbounds i32, i32* %542, i64 12
  %544 = load i32, i32* %29, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds i32, i32* %543, i64 %545
  %547 = load i32*, i32** %11, align 8
  %548 = getelementptr inbounds i32, i32* %547, i64 2
  %549 = load i32, i32* %13, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i32, i32* %548, i64 %550
  %552 = load i32, i32* %12, align 4
  %553 = call i32 @subtlvs_print(%struct.TYPE_7__* %541, i32* %546, i32* %551, i32 %552)
  br label %554

554:                                              ; preds = %540, %535
  br label %555

555:                                              ; preds = %554, %424
  br label %1091

556:                                              ; preds = %118
  %557 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %558 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %564, label %561

561:                                              ; preds = %556
  %562 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %563 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.32 to %struct.TYPE_7__*))
  br label %612

564:                                              ; preds = %556
  %565 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %566 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.33 to %struct.TYPE_7__*))
  %567 = load i32, i32* %13, align 4
  %568 = icmp slt i32 %567, 2
  br i1 %568, label %569, label %570

569:                                              ; preds = %564
  br label %1103

570:                                              ; preds = %564
  %571 = load i32*, i32** %11, align 8
  %572 = getelementptr inbounds i32, i32* %571, i64 3
  %573 = load i32, i32* %572, align 4
  %574 = load i32*, i32** %11, align 8
  %575 = getelementptr inbounds i32, i32* %574, i64 2
  %576 = load i32, i32* %575, align 4
  %577 = icmp eq i32 %576, 1
  %578 = zext i1 %577 to i64
  %579 = select i1 %577, i32 96, i32 0
  %580 = add nsw i32 %573, %579
  store i32 %580, i32* %33, align 4
  %581 = load i32*, i32** %11, align 8
  %582 = getelementptr inbounds i32, i32* %581, i64 2
  %583 = load i32, i32* %582, align 4
  %584 = load i32*, i32** %11, align 8
  %585 = getelementptr inbounds i32, i32* %584, i64 3
  %586 = load i32, i32* %585, align 4
  %587 = load i32*, i32** %11, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 4
  %589 = load i32, i32* %13, align 4
  %590 = sub nsw i32 %589, 2
  %591 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 0
  %592 = call i32 @network_prefix(i32 %583, i32 %586, i32 0, i32* %588, i32* null, i32 %590, i32* %591)
  store i32 %592, i32* %31, align 4
  %593 = load i32, i32* %31, align 4
  %594 = icmp slt i32 %593, 0
  br i1 %594, label %595, label %596

595:                                              ; preds = %570
  br label %1103

596:                                              ; preds = %570
  %597 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %598 = load i32*, i32** %11, align 8
  %599 = getelementptr inbounds i32, i32* %598, i64 2
  %600 = load i32, i32* %599, align 4
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %596
  br label %608

603:                                              ; preds = %596
  %604 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %605 = getelementptr inbounds [16 x i32], [16 x i32]* %32, i64 0, i64 0
  %606 = load i32, i32* %33, align 4
  %607 = call i8* @format_prefix(%struct.TYPE_7__* %604, i32* %605, i32 %606)
  br label %608

608:                                              ; preds = %603, %602
  %609 = phi i8* [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0), %602 ], [ %607, %603 ]
  %610 = bitcast i8* %609 to %struct.TYPE_7__*
  %611 = call i32 @ND_PRINT(%struct.TYPE_7__* %610)
  br label %612

612:                                              ; preds = %608, %561
  br label %1091

613:                                              ; preds = %118
  %614 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %615 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %614, i32 0, i32 0
  %616 = load i64, i64* %615, align 8
  %617 = icmp ne i64 %616, 0
  br i1 %617, label %621, label %618

618:                                              ; preds = %613
  %619 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %620 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.36 to %struct.TYPE_7__*))
  br label %673

621:                                              ; preds = %613
  %622 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %623 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([14 x i8]* @.str.37 to %struct.TYPE_7__*))
  %624 = load i32, i32* %13, align 4
  %625 = icmp slt i32 %624, 14
  br i1 %625, label %626, label %627

626:                                              ; preds = %621
  br label %1103

627:                                              ; preds = %621
  %628 = load i32*, i32** %11, align 8
  %629 = getelementptr inbounds i32, i32* %628, i64 4
  %630 = call i8* @EXTRACT_16BITS(i32* %629)
  %631 = ptrtoint i8* %630 to i32
  store i32 %631, i32* %35, align 4
  %632 = load i32*, i32** %11, align 8
  %633 = getelementptr inbounds i32, i32* %632, i64 2
  %634 = load i32, i32* %633, align 4
  %635 = load i32*, i32** %11, align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 3
  %637 = load i32, i32* %636, align 4
  %638 = load i32*, i32** %11, align 8
  %639 = getelementptr inbounds i32, i32* %638, i64 16
  %640 = load i32, i32* %13, align 4
  %641 = sub nsw i32 %640, 14
  %642 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 0
  %643 = call i32 @network_prefix(i32 %634, i32 %637, i32 0, i32* %639, i32* null, i32 %641, i32* %642)
  store i32 %643, i32* %34, align 4
  %644 = load i32, i32* %34, align 4
  %645 = icmp slt i32 %644, 0
  br i1 %645, label %646, label %647

646:                                              ; preds = %627
  br label %1103

647:                                              ; preds = %627
  %648 = load i32*, i32** %11, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 3
  %650 = load i32, i32* %649, align 4
  %651 = load i32*, i32** %11, align 8
  %652 = getelementptr inbounds i32, i32* %651, i64 2
  %653 = load i32, i32* %652, align 4
  %654 = icmp eq i32 %653, 1
  %655 = zext i1 %654 to i64
  %656 = select i1 %654, i32 96, i32 0
  %657 = add nsw i32 %650, %656
  store i32 %657, i32* %37, align 4
  %658 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %659 = load i32*, i32** %11, align 8
  %660 = getelementptr inbounds i32, i32* %659, i64 6
  %661 = load i32, i32* %660, align 4
  %662 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %663 = getelementptr inbounds [16 x i32], [16 x i32]* %36, i64 0, i64 0
  %664 = load i32, i32* %37, align 4
  %665 = call i8* @format_prefix(%struct.TYPE_7__* %662, i32* %663, i32 %664)
  %666 = load i32, i32* %35, align 4
  %667 = load i32*, i32** %11, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 8
  %669 = call i32 @format_id(i32* %668)
  %670 = sext i32 %669 to i64
  %671 = inttoptr i64 %670 to %struct.TYPE_7__*
  %672 = call i32 @ND_PRINT(%struct.TYPE_7__* %671)
  br label %673

673:                                              ; preds = %647, %618
  br label %1091

674:                                              ; preds = %118
  %675 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %676 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %675, i32 0, i32 0
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %682, label %679

679:                                              ; preds = %674
  %680 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %681 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([6 x i8]* @.str.39 to %struct.TYPE_7__*))
  br label %698

682:                                              ; preds = %674
  %683 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %684 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.40 to %struct.TYPE_7__*))
  %685 = load i32, i32* %13, align 4
  %686 = icmp slt i32 %685, 6
  br i1 %686, label %687, label %688

687:                                              ; preds = %682
  br label %1103

688:                                              ; preds = %682
  %689 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %690 = load i32*, i32** %11, align 8
  %691 = getelementptr inbounds i32, i32* %690, i64 4
  %692 = call i32 @EXTRACT_32BITS(i32* %691)
  %693 = load i32*, i32** %11, align 8
  %694 = getelementptr inbounds i32, i32* %693, i64 2
  %695 = call i8* @EXTRACT_16BITS(i32* %694)
  %696 = bitcast i8* %695 to %struct.TYPE_7__*
  %697 = call i32 @ND_PRINT(%struct.TYPE_7__* %696)
  br label %698

698:                                              ; preds = %688, %679
  br label %1091

699:                                              ; preds = %118
  %700 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %701 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %700, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %707, label %704

704:                                              ; preds = %699
  %705 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %706 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([6 x i8]* @.str.42 to %struct.TYPE_7__*))
  br label %743

707:                                              ; preds = %699
  %708 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %709 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.43 to %struct.TYPE_7__*))
  %710 = load i32, i32* %13, align 4
  %711 = icmp slt i32 %710, 18
  br i1 %711, label %712, label %713

712:                                              ; preds = %707
  br label %1103

713:                                              ; preds = %707
  %714 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %715 = load i32*, i32** %11, align 8
  %716 = getelementptr inbounds i32, i32* %715, i64 2
  %717 = call i8* @EXTRACT_16BITS(i32* %716)
  %718 = load i32, i32* %13, align 4
  %719 = sub nsw i32 %718, 2
  %720 = sext i32 %719 to i64
  %721 = inttoptr i64 %720 to %struct.TYPE_7__*
  %722 = call i32 @ND_PRINT(%struct.TYPE_7__* %721)
  store i32 0, i32* %38, align 4
  br label %723

723:                                              ; preds = %739, %713
  %724 = load i32, i32* %38, align 4
  %725 = load i32, i32* %13, align 4
  %726 = sub nsw i32 %725, 2
  %727 = icmp ult i32 %724, %726
  br i1 %727, label %728, label %742

728:                                              ; preds = %723
  %729 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %730 = load i32*, i32** %11, align 8
  %731 = load i32, i32* %38, align 4
  %732 = add i32 4, %731
  %733 = zext i32 %732 to i64
  %734 = getelementptr inbounds i32, i32* %730, i64 %733
  %735 = load i32, i32* %734, align 4
  %736 = sext i32 %735 to i64
  %737 = inttoptr i64 %736 to %struct.TYPE_7__*
  %738 = call i32 @ND_PRINT(%struct.TYPE_7__* %737)
  br label %739

739:                                              ; preds = %728
  %740 = load i32, i32* %38, align 4
  %741 = add i32 %740, 1
  store i32 %741, i32* %38, align 4
  br label %723

742:                                              ; preds = %723
  br label %743

743:                                              ; preds = %742, %704
  br label %1091

744:                                              ; preds = %118
  %745 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %746 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %745, i32 0, i32 0
  %747 = load i64, i64* %746, align 8
  %748 = icmp ne i64 %747, 0
  br i1 %748, label %752, label %749

749:                                              ; preds = %744
  %750 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %751 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.46 to %struct.TYPE_7__*))
  br label %879

752:                                              ; preds = %744
  store i32 10, i32* %49, align 4
  %753 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %754 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.47 to %struct.TYPE_7__*))
  %755 = load i32, i32* %13, align 4
  %756 = icmp slt i32 %755, 10
  br i1 %756, label %757, label %758

757:                                              ; preds = %752
  br label %1103

758:                                              ; preds = %752
  %759 = load i32*, i32** %11, align 8
  %760 = getelementptr inbounds i32, i32* %759, i64 2
  %761 = load i32, i32* %760, align 4
  store i32 %761, i32* %44, align 4
  %762 = load i32*, i32** %11, align 8
  %763 = getelementptr inbounds i32, i32* %762, i64 3
  %764 = load i32, i32* %763, align 4
  store i32 %764, i32* %46, align 4
  %765 = load i32*, i32** %11, align 8
  %766 = getelementptr inbounds i32, i32* %765, i64 4
  %767 = load i32, i32* %766, align 4
  store i32 %767, i32* %45, align 4
  %768 = load i32*, i32** %11, align 8
  %769 = getelementptr inbounds i32, i32* %768, i64 5
  %770 = load i32, i32* %769, align 4
  store i32 %770, i32* %47, align 4
  %771 = load i32*, i32** %11, align 8
  %772 = getelementptr inbounds i32, i32* %771, i64 6
  %773 = call i8* @EXTRACT_16BITS(i32* %772)
  %774 = ptrtoint i8* %773 to i32
  store i32 %774, i32* %41, align 4
  %775 = load i32*, i32** %11, align 8
  %776 = getelementptr inbounds i32, i32* %775, i64 8
  %777 = call i8* @EXTRACT_16BITS(i32* %776)
  %778 = ptrtoint i8* %777 to i32
  store i32 %778, i32* %42, align 4
  %779 = load i32*, i32** %11, align 8
  %780 = getelementptr inbounds i32, i32* %779, i64 10
  %781 = call i8* @EXTRACT_16BITS(i32* %780)
  %782 = ptrtoint i8* %781 to i32
  store i32 %782, i32* %43, align 4
  %783 = load i32, i32* %44, align 4
  %784 = load i32, i32* %45, align 4
  %785 = load i32, i32* %47, align 4
  %786 = load i32*, i32** %11, align 8
  %787 = getelementptr inbounds i32, i32* %786, i64 2
  %788 = load i32, i32* %49, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  %791 = load i32, i32* %44, align 4
  %792 = icmp eq i32 %791, 1
  br i1 %792, label %793, label %795

793:                                              ; preds = %758
  %794 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  br label %797

795:                                              ; preds = %758
  %796 = getelementptr inbounds [16 x i32], [16 x i32]* %10, i64 0, i64 0
  br label %797

797:                                              ; preds = %795, %793
  %798 = phi i32* [ %794, %793 ], [ %796, %795 ]
  %799 = load i32, i32* %13, align 4
  %800 = load i32, i32* %49, align 4
  %801 = sub nsw i32 %799, %800
  %802 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 0
  %803 = call i32 @network_prefix(i32 %783, i32 %784, i32 %785, i32* %790, i32* %798, i32 %801, i32* %802)
  store i32 %803, i32* %48, align 4
  %804 = load i32, i32* %48, align 4
  %805 = icmp slt i32 %804, 0
  br i1 %805, label %806, label %807

806:                                              ; preds = %797
  br label %1103

807:                                              ; preds = %797
  %808 = load i32, i32* %44, align 4
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %810, label %813

810:                                              ; preds = %807
  %811 = load i32, i32* %45, align 4
  %812 = add nsw i32 %811, 96
  store i32 %812, i32* %45, align 4
  br label %813

813:                                              ; preds = %810, %807
  %814 = load i32, i32* %48, align 4
  %815 = load i32, i32* %49, align 4
  %816 = add nsw i32 %815, %814
  store i32 %816, i32* %49, align 4
  %817 = load i32, i32* %44, align 4
  %818 = load i32, i32* %46, align 4
  %819 = load i32*, i32** %11, align 8
  %820 = getelementptr inbounds i32, i32* %819, i64 2
  %821 = load i32, i32* %49, align 4
  %822 = sext i32 %821 to i64
  %823 = getelementptr inbounds i32, i32* %820, i64 %822
  %824 = load i32, i32* %13, align 4
  %825 = load i32, i32* %49, align 4
  %826 = sub nsw i32 %824, %825
  %827 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  %828 = call i32 @network_prefix(i32 %817, i32 %818, i32 0, i32* %823, i32* null, i32 %826, i32* %827)
  store i32 %828, i32* %48, align 4
  %829 = load i32, i32* %48, align 4
  %830 = icmp slt i32 %829, 0
  br i1 %830, label %831, label %832

831:                                              ; preds = %813
  br label %1103

832:                                              ; preds = %813
  %833 = load i32, i32* %44, align 4
  %834 = icmp eq i32 %833, 1
  br i1 %834, label %835, label %838

835:                                              ; preds = %832
  %836 = load i32, i32* %46, align 4
  %837 = add nsw i32 %836, 96
  store i32 %837, i32* %46, align 4
  br label %838

838:                                              ; preds = %835, %832
  %839 = load i32, i32* %48, align 4
  %840 = load i32, i32* %49, align 4
  %841 = add nsw i32 %840, %839
  store i32 %841, i32* %49, align 4
  %842 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %843 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %844 = getelementptr inbounds [16 x i32], [16 x i32]* %39, i64 0, i64 0
  %845 = load i32, i32* %45, align 4
  %846 = call i8* @format_prefix(%struct.TYPE_7__* %843, i32* %844, i32 %845)
  %847 = bitcast i8* %846 to %struct.TYPE_7__*
  %848 = call i32 @ND_PRINT(%struct.TYPE_7__* %847)
  %849 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %850 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %851 = getelementptr inbounds [16 x i32], [16 x i32]* %40, i64 0, i64 0
  %852 = load i32, i32* %46, align 4
  %853 = call i8* @format_prefix(%struct.TYPE_7__* %850, i32* %851, i32 %852)
  %854 = load i32, i32* %43, align 4
  %855 = load i32, i32* %42, align 4
  %856 = load i32, i32* %41, align 4
  %857 = call i32 @format_interval_update(i32 %856)
  %858 = sext i32 %857 to i64
  %859 = inttoptr i64 %858 to %struct.TYPE_7__*
  %860 = call i32 @ND_PRINT(%struct.TYPE_7__* %859)
  %861 = load i32, i32* %49, align 4
  %862 = load i32, i32* %13, align 4
  %863 = icmp slt i32 %861, %862
  br i1 %863, label %864, label %878

864:                                              ; preds = %838
  %865 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %866 = load i32*, i32** %11, align 8
  %867 = getelementptr inbounds i32, i32* %866, i64 2
  %868 = load i32, i32* %49, align 4
  %869 = sext i32 %868 to i64
  %870 = getelementptr inbounds i32, i32* %867, i64 %869
  %871 = load i32*, i32** %11, align 8
  %872 = getelementptr inbounds i32, i32* %871, i64 2
  %873 = load i32, i32* %13, align 4
  %874 = sext i32 %873 to i64
  %875 = getelementptr inbounds i32, i32* %872, i64 %874
  %876 = load i32, i32* %12, align 4
  %877 = call i32 @subtlvs_print(%struct.TYPE_7__* %865, i32* %870, i32* %875, i32 %876)
  br label %878

878:                                              ; preds = %864, %838
  br label %879

879:                                              ; preds = %878, %749
  br label %1091

880:                                              ; preds = %118
  %881 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %882 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %881, i32 0, i32 0
  %883 = load i64, i64* %882, align 8
  %884 = icmp ne i64 %883, 0
  br i1 %884, label %888, label %885

885:                                              ; preds = %880
  %886 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %887 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([12 x i8]* @.str.50 to %struct.TYPE_7__*))
  br label %975

888:                                              ; preds = %880
  store i32 3, i32* %51, align 4
  %889 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %890 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([14 x i8]* @.str.51 to %struct.TYPE_7__*))
  %891 = load i32, i32* %13, align 4
  %892 = icmp slt i32 %891, 3
  br i1 %892, label %893, label %894

893:                                              ; preds = %888
  br label %1103

894:                                              ; preds = %888
  %895 = load i32*, i32** %11, align 8
  %896 = getelementptr inbounds i32, i32* %895, i64 2
  %897 = load i32, i32* %896, align 4
  store i32 %897, i32* %52, align 4
  %898 = load i32*, i32** %11, align 8
  %899 = getelementptr inbounds i32, i32* %898, i64 3
  %900 = load i32, i32* %899, align 4
  store i32 %900, i32* %53, align 4
  %901 = load i32*, i32** %11, align 8
  %902 = getelementptr inbounds i32, i32* %901, i64 4
  %903 = load i32, i32* %902, align 4
  store i32 %903, i32* %54, align 4
  %904 = load i32, i32* %52, align 4
  %905 = load i32, i32* %53, align 4
  %906 = load i32*, i32** %11, align 8
  %907 = getelementptr inbounds i32, i32* %906, i64 2
  %908 = load i32, i32* %51, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32, i32* %907, i64 %909
  %911 = load i32, i32* %13, align 4
  %912 = load i32, i32* %51, align 4
  %913 = sub nsw i32 %911, %912
  %914 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i64 0, i64 0
  %915 = call i32 @network_prefix(i32 %904, i32 %905, i32 0, i32* %910, i32* null, i32 %913, i32* %914)
  store i32 %915, i32* %50, align 4
  %916 = load i32, i32* %50, align 4
  %917 = icmp slt i32 %916, 0
  br i1 %917, label %918, label %919

918:                                              ; preds = %894
  br label %1103

919:                                              ; preds = %894
  %920 = load i32, i32* %52, align 4
  %921 = icmp eq i32 %920, 1
  br i1 %921, label %922, label %925

922:                                              ; preds = %919
  %923 = load i32, i32* %53, align 4
  %924 = add nsw i32 %923, 96
  store i32 %924, i32* %53, align 4
  br label %925

925:                                              ; preds = %922, %919
  %926 = load i32, i32* %50, align 4
  %927 = load i32, i32* %51, align 4
  %928 = add nsw i32 %927, %926
  store i32 %928, i32* %51, align 4
  %929 = load i32, i32* %52, align 4
  %930 = load i32, i32* %54, align 4
  %931 = load i32*, i32** %11, align 8
  %932 = getelementptr inbounds i32, i32* %931, i64 2
  %933 = load i32, i32* %51, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i32, i32* %932, i64 %934
  %936 = load i32, i32* %13, align 4
  %937 = load i32, i32* %51, align 4
  %938 = sub nsw i32 %936, %937
  %939 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 0
  %940 = call i32 @network_prefix(i32 %929, i32 %930, i32 0, i32* %935, i32* null, i32 %938, i32* %939)
  store i32 %940, i32* %50, align 4
  %941 = load i32, i32* %50, align 4
  %942 = icmp slt i32 %941, 0
  br i1 %942, label %943, label %944

943:                                              ; preds = %925
  br label %1103

944:                                              ; preds = %925
  %945 = load i32, i32* %52, align 4
  %946 = icmp eq i32 %945, 1
  br i1 %946, label %947, label %950

947:                                              ; preds = %944
  %948 = load i32, i32* %54, align 4
  %949 = add nsw i32 %948, 96
  store i32 %949, i32* %54, align 4
  br label %950

950:                                              ; preds = %947, %944
  %951 = load i32, i32* %50, align 4
  %952 = load i32, i32* %51, align 4
  %953 = add nsw i32 %952, %951
  store i32 %953, i32* %51, align 4
  %954 = load i32, i32* %52, align 4
  %955 = icmp eq i32 %954, 0
  br i1 %955, label %956, label %959

956:                                              ; preds = %950
  %957 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %958 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.52 to %struct.TYPE_7__*))
  br label %974

959:                                              ; preds = %950
  %960 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %961 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %962 = getelementptr inbounds [16 x i32], [16 x i32]* %55, i64 0, i64 0
  %963 = load i32, i32* %53, align 4
  %964 = call i8* @format_prefix(%struct.TYPE_7__* %961, i32* %962, i32 %963)
  %965 = bitcast i8* %964 to %struct.TYPE_7__*
  %966 = call i32 @ND_PRINT(%struct.TYPE_7__* %965)
  %967 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %968 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %969 = getelementptr inbounds [16 x i32], [16 x i32]* %56, i64 0, i64 0
  %970 = load i32, i32* %54, align 4
  %971 = call i8* @format_prefix(%struct.TYPE_7__* %968, i32* %969, i32 %970)
  %972 = bitcast i8* %971 to %struct.TYPE_7__*
  %973 = call i32 @ND_PRINT(%struct.TYPE_7__* %972)
  br label %974

974:                                              ; preds = %959, %956
  br label %975

975:                                              ; preds = %974, %885
  br label %1091

976:                                              ; preds = %118
  %977 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %978 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %977, i32 0, i32 0
  %979 = load i64, i64* %978, align 8
  %980 = icmp ne i64 %979, 0
  br i1 %980, label %984, label %981

981:                                              ; preds = %976
  %982 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %983 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([15 x i8]* @.str.55 to %struct.TYPE_7__*))
  br label %1075

984:                                              ; preds = %976
  store i32 14, i32* %58, align 4
  store i32* null, i32** %66, align 8
  %985 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %986 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([17 x i8]* @.str.56 to %struct.TYPE_7__*))
  %987 = load i32, i32* %13, align 4
  %988 = icmp slt i32 %987, 14
  br i1 %988, label %989, label %990

989:                                              ; preds = %984
  br label %1103

990:                                              ; preds = %984
  %991 = load i32*, i32** %11, align 8
  %992 = getelementptr inbounds i32, i32* %991, i64 2
  %993 = load i32, i32* %992, align 4
  store i32 %993, i32* %60, align 4
  %994 = load i32*, i32** %11, align 8
  %995 = getelementptr inbounds i32, i32* %994, i64 3
  %996 = load i32, i32* %995, align 4
  store i32 %996, i32* %61, align 4
  %997 = load i32*, i32** %11, align 8
  %998 = getelementptr inbounds i32, i32* %997, i64 4
  %999 = call i8* @EXTRACT_16BITS(i32* %998)
  %1000 = ptrtoint i8* %999 to i32
  store i32 %1000, i32* %59, align 4
  %1001 = load i32*, i32** %11, align 8
  %1002 = getelementptr inbounds i32, i32* %1001, i64 6
  %1003 = load i32, i32* %1002, align 4
  store i32 %1003, i32* %65, align 4
  %1004 = load i32*, i32** %11, align 8
  %1005 = getelementptr inbounds i32, i32* %1004, i64 7
  %1006 = load i32, i32* %1005, align 4
  store i32 %1006, i32* %62, align 4
  %1007 = load i32*, i32** %11, align 8
  %1008 = getelementptr inbounds i32, i32* %1007, i64 8
  store i32* %1008, i32** %66, align 8
  %1009 = load i32, i32* %60, align 4
  %1010 = load i32, i32* %61, align 4
  %1011 = load i32*, i32** %11, align 8
  %1012 = getelementptr inbounds i32, i32* %1011, i64 2
  %1013 = load i32, i32* %58, align 4
  %1014 = sext i32 %1013 to i64
  %1015 = getelementptr inbounds i32, i32* %1012, i64 %1014
  %1016 = load i32, i32* %13, align 4
  %1017 = load i32, i32* %58, align 4
  %1018 = sub nsw i32 %1016, %1017
  %1019 = getelementptr inbounds [16 x i32], [16 x i32]* %63, i64 0, i64 0
  %1020 = call i32 @network_prefix(i32 %1009, i32 %1010, i32 0, i32* %1015, i32* null, i32 %1018, i32* %1019)
  store i32 %1020, i32* %57, align 4
  %1021 = load i32, i32* %57, align 4
  %1022 = icmp slt i32 %1021, 0
  br i1 %1022, label %1023, label %1024

1023:                                             ; preds = %990
  br label %1103

1024:                                             ; preds = %990
  %1025 = load i32, i32* %60, align 4
  %1026 = icmp eq i32 %1025, 1
  br i1 %1026, label %1027, label %1030

1027:                                             ; preds = %1024
  %1028 = load i32, i32* %61, align 4
  %1029 = add nsw i32 %1028, 96
  store i32 %1029, i32* %61, align 4
  br label %1030

1030:                                             ; preds = %1027, %1024
  %1031 = load i32, i32* %57, align 4
  %1032 = load i32, i32* %58, align 4
  %1033 = add nsw i32 %1032, %1031
  store i32 %1033, i32* %58, align 4
  %1034 = load i32, i32* %60, align 4
  %1035 = load i32, i32* %62, align 4
  %1036 = load i32*, i32** %11, align 8
  %1037 = getelementptr inbounds i32, i32* %1036, i64 2
  %1038 = load i32, i32* %58, align 4
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds i32, i32* %1037, i64 %1039
  %1041 = load i32, i32* %13, align 4
  %1042 = load i32, i32* %58, align 4
  %1043 = sub nsw i32 %1041, %1042
  %1044 = getelementptr inbounds [16 x i32], [16 x i32]* %64, i64 0, i64 0
  %1045 = call i32 @network_prefix(i32 %1034, i32 %1035, i32 0, i32* %1040, i32* null, i32 %1043, i32* %1044)
  store i32 %1045, i32* %57, align 4
  %1046 = load i32, i32* %57, align 4
  %1047 = icmp slt i32 %1046, 0
  br i1 %1047, label %1048, label %1049

1048:                                             ; preds = %1030
  br label %1103

1049:                                             ; preds = %1030
  %1050 = load i32, i32* %60, align 4
  %1051 = icmp eq i32 %1050, 1
  br i1 %1051, label %1052, label %1055

1052:                                             ; preds = %1049
  %1053 = load i32, i32* %62, align 4
  %1054 = add nsw i32 %1053, 96
  store i32 %1054, i32* %62, align 4
  br label %1055

1055:                                             ; preds = %1052, %1049
  %1056 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1057 = load i32, i32* %65, align 4
  %1058 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1059 = getelementptr inbounds [16 x i32], [16 x i32]* %63, i64 0, i64 0
  %1060 = load i32, i32* %61, align 4
  %1061 = call i8* @format_prefix(%struct.TYPE_7__* %1058, i32* %1059, i32 %1060)
  %1062 = bitcast i8* %1061 to %struct.TYPE_7__*
  %1063 = call i32 @ND_PRINT(%struct.TYPE_7__* %1062)
  %1064 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1065 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1066 = getelementptr inbounds [16 x i32], [16 x i32]* %64, i64 0, i64 0
  %1067 = load i32, i32* %62, align 4
  %1068 = call i8* @format_prefix(%struct.TYPE_7__* %1065, i32* %1066, i32 %1067)
  %1069 = load i32, i32* %59, align 4
  %1070 = load i32*, i32** %66, align 8
  %1071 = call i32 @format_id(i32* %1070)
  %1072 = sext i32 %1071 to i64
  %1073 = inttoptr i64 %1072 to %struct.TYPE_7__*
  %1074 = call i32 @ND_PRINT(%struct.TYPE_7__* %1073)
  br label %1075

1075:                                             ; preds = %1055, %981
  br label %1091

1076:                                             ; preds = %118
  %1077 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1078 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %1077, i32 0, i32 0
  %1079 = load i64, i64* %1078, align 8
  %1080 = icmp ne i64 %1079, 0
  br i1 %1080, label %1084, label %1081

1081:                                             ; preds = %1076
  %1082 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1083 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.59 to %struct.TYPE_7__*))
  br label %1090

1084:                                             ; preds = %1076
  %1085 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1086 = load i32, i32* %12, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = inttoptr i64 %1087 to %struct.TYPE_7__*
  %1089 = call i32 @ND_PRINT(%struct.TYPE_7__* %1088)
  br label %1090

1090:                                             ; preds = %1084, %1081
  br label %1091

1091:                                             ; preds = %1090, %1075, %975, %879, %743, %698, %673, %612, %555, %385, %349, %326, %290, %255, %209, %184, %152
  %1092 = load i32, i32* %13, align 4
  %1093 = add nsw i32 %1092, 2
  %1094 = load i32, i32* %7, align 4
  %1095 = add nsw i32 %1094, %1093
  store i32 %1095, i32* %7, align 4
  br label %88

1096:                                             ; preds = %88
  br label %1109

1097:                                             ; No predecessors!
  %1098 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1099 = load i32, i32* @tstr, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = inttoptr i64 %1100 to %struct.TYPE_7__*
  %1102 = call i32 @ND_PRINT(%struct.TYPE_7__* %1101)
  br label %1109

1103:                                             ; preds = %1048, %1023, %989, %943, %918, %893, %831, %806, %757, %712, %687, %646, %626, %595, %569, %469, %430, %376, %363, %340, %269, %223, %198, %166, %77
  %1104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %1105 = load i32, i32* @istr, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = inttoptr i64 %1106 to %struct.TYPE_7__*
  %1108 = call i32 @ND_PRINT(%struct.TYPE_7__* %1107)
  br label %1109

1109:                                             ; preds = %1103, %1097, %1096
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ND_TCHECK2(i32, i32) #2

declare dso_local i8* @EXTRACT_16BITS(i32*) #2

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #2

declare dso_local i32 @ICHECK(i32, i32) #2

declare dso_local i32 @format_interval(i16 zeroext) #2

declare dso_local i32 @subtlvs_print(%struct.TYPE_7__*, i32*, i32*, i32) #2

declare dso_local i32 @network_address(i32, i32*, i32, i32*) #2

declare dso_local i32 @format_address(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @format_id(i32*) #2

declare dso_local i32 @network_prefix(i32, i32, i32, i32*, i32*, i32, i32*) #2

declare dso_local i8* @format_prefix(%struct.TYPE_7__*, i32*, i32) #2

declare dso_local i32 @format_interval_update(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @EXTRACT_32BITS(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
