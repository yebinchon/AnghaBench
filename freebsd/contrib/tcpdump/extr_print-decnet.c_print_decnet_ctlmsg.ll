; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_decnet_ctlmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-decnet.c_print_decnet_ctlmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.routehdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.controlmsg = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RMF_CTLMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"init \00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"src %sblksize %d vers %d eco %d ueco %d hello %d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"verification \00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"src %s fcnval %o\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"test \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"src %s data %o\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"lev-1-routing \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"src %s \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"lev-2-routing \00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"router-hello \00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"vers %d eco %d ueco %d src %s blksize %d pri %d hello %d\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"endnode-hello \00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"vers %d eco %d ueco %d src %s blksize %d rtr %s hello %d data %o\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"unknown control message\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %union.routehdr*, i32, i32)* @print_decnet_ctlmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_decnet_ctlmsg(i32* %0, %union.routehdr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %union.routehdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.controlmsg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_7__, align 4
  %22 = alloca %struct.TYPE_7__, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_8__, align 8
  %27 = alloca %struct.TYPE_8__, align 8
  %28 = alloca %struct.TYPE_8__, align 8
  %29 = alloca %struct.TYPE_8__, align 8
  %30 = alloca %struct.TYPE_8__, align 8
  %31 = alloca %struct.TYPE_8__, align 8
  %32 = alloca %struct.TYPE_8__, align 8
  store i32* %0, i32** %6, align 8
  store %union.routehdr* %1, %union.routehdr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %33 = load %union.routehdr*, %union.routehdr** %7, align 8
  %34 = bitcast %union.routehdr* %33 to %struct.TYPE_5__*
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @EXTRACT_LE_8BITS(i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load %union.routehdr*, %union.routehdr** %7, align 8
  %39 = bitcast %union.routehdr* %38 to %union.controlmsg*
  store %union.controlmsg* %39, %union.controlmsg** %11, align 8
  %40 = load %union.routehdr*, %union.routehdr** %7, align 8
  %41 = bitcast %union.routehdr* %40 to i8*
  store i8* %41, i8** %24, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @RMF_CTLMASK, align 4
  %44 = and i32 %42, %43
  switch i32 %44, label %404 [
    i32 133, label %45
    i32 128, label %108
    i32 129, label %139
    i32 132, label %170
    i32 131, label %203
    i32 130, label %236
    i32 134, label %317
  ]

45:                                               ; preds = %4
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str to i32*))
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, 4
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  br label %415

52:                                               ; preds = %45
  %53 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %54 = bitcast %union.controlmsg* %53 to %struct.TYPE_8__*
  %55 = bitcast %struct.TYPE_8__* %26 to i8*
  %56 = bitcast %struct.TYPE_8__* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 4 %56, i64 120, i1 false)
  %57 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %26)
  %58 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %59 = bitcast %union.controlmsg* %58 to %struct.TYPE_8__*
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 29
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @EXTRACT_LE_16BITS(i32 %61)
  store i32 %62, i32* %12, align 4
  %63 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %64 = bitcast %union.controlmsg* %63 to %struct.TYPE_8__*
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 28
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @EXTRACT_LE_8BITS(i32 %66)
  store i32 %67, i32* %14, align 4
  %68 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %69 = bitcast %union.controlmsg* %68 to %struct.TYPE_8__*
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 27
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @EXTRACT_LE_16BITS(i32 %71)
  store i32 %72, i32* %15, align 4
  %73 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %74 = bitcast %union.controlmsg* %73 to %struct.TYPE_8__*
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 26
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @EXTRACT_LE_8BITS(i32 %76)
  store i32 %77, i32* %20, align 4
  %78 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %79 = bitcast %union.controlmsg* %78 to %struct.TYPE_8__*
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 25
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @EXTRACT_LE_8BITS(i32 %81)
  store i32 %82, i32* %16, align 4
  %83 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %84 = bitcast %union.controlmsg* %83 to %struct.TYPE_8__*
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 24
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @EXTRACT_LE_8BITS(i32 %86)
  store i32 %87, i32* %17, align 4
  %88 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %89 = bitcast %union.controlmsg* %88 to %struct.TYPE_8__*
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 23
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @EXTRACT_LE_16BITS(i32 %91)
  store i32 %92, i32* %18, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @print_t_info(i32* %93, i32 %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @dnaddr_string(i32* %97, i32 %98)
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %16, align 4
  %103 = load i32, i32* %17, align 4
  %104 = load i32, i32* %18, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i32*
  %107 = call i32 @ND_PRINT(i32* %106)
  store i32 1, i32* %25, align 4
  br label %413

108:                                              ; preds = %4
  %109 = load i32*, i32** %6, align 8
  %110 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.2 to i32*))
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 4
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %415

115:                                              ; preds = %108
  %116 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %117 = bitcast %union.controlmsg* %116 to %struct.TYPE_8__*
  %118 = bitcast %struct.TYPE_8__* %27 to i8*
  %119 = bitcast %struct.TYPE_8__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 4 %119, i64 120, i1 false)
  %120 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %27)
  %121 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %122 = bitcast %union.controlmsg* %121 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 22
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @EXTRACT_LE_16BITS(i32 %124)
  store i32 %125, i32* %12, align 4
  %126 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %127 = bitcast %union.controlmsg* %126 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 21
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @EXTRACT_LE_8BITS(i32 %129)
  store i32 %130, i32* %19, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @dnaddr_string(i32* %132, i32 %133)
  %135 = load i32, i32* %19, align 4
  %136 = sext i32 %135 to i64
  %137 = inttoptr i64 %136 to i32*
  %138 = call i32 @ND_PRINT(i32* %137)
  store i32 1, i32* %25, align 4
  br label %413

139:                                              ; preds = %4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @ND_PRINT(i32* bitcast ([6 x i8]* @.str.4 to i32*))
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ult i64 %143, 4
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %415

146:                                              ; preds = %139
  %147 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %148 = bitcast %union.controlmsg* %147 to %struct.TYPE_8__*
  %149 = bitcast %struct.TYPE_8__* %28 to i8*
  %150 = bitcast %struct.TYPE_8__* %148 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %149, i8* align 4 %150, i64 120, i1 false)
  %151 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %28)
  %152 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %153 = bitcast %union.controlmsg* %152 to %struct.TYPE_8__*
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 20
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @EXTRACT_LE_16BITS(i32 %155)
  store i32 %156, i32* %12, align 4
  %157 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %158 = bitcast %union.controlmsg* %157 to %struct.TYPE_8__*
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 19
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @EXTRACT_LE_8BITS(i32 %160)
  store i32 %161, i32* %19, align 4
  %162 = load i32*, i32** %6, align 8
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* %12, align 4
  %165 = call i32 @dnaddr_string(i32* %163, i32 %164)
  %166 = load i32, i32* %19, align 4
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i32*
  %169 = call i32 @ND_PRINT(i32* %168)
  store i32 1, i32* %25, align 4
  br label %413

170:                                              ; preds = %4
  %171 = load i32*, i32** %6, align 8
  %172 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.6 to i32*))
  %173 = load i32, i32* %8, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp ult i64 %174, 4
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  br label %415

177:                                              ; preds = %170
  %178 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %179 = bitcast %union.controlmsg* %178 to %struct.TYPE_8__*
  %180 = bitcast %struct.TYPE_8__* %29 to i8*
  %181 = bitcast %struct.TYPE_8__* %179 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %180, i8* align 4 %181, i64 120, i1 false)
  %182 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %29)
  %183 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %184 = bitcast %union.controlmsg* %183 to %struct.TYPE_8__*
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 18
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @EXTRACT_LE_16BITS(i32 %186)
  store i32 %187, i32* %12, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* %12, align 4
  %191 = call i32 @dnaddr_string(i32* %189, i32 %190)
  %192 = sext i32 %191 to i64
  %193 = inttoptr i64 %192 to i32*
  %194 = call i32 @ND_PRINT(i32* %193)
  %195 = load i32*, i32** %6, align 8
  %196 = load i8*, i8** %24, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 4
  %198 = load i32, i32* %8, align 4
  %199 = sext i32 %198 to i64
  %200 = sub i64 %199, 4
  %201 = trunc i64 %200 to i32
  %202 = call i32 @print_l1_routes(i32* %195, i8* %197, i32 %201)
  store i32 %202, i32* %25, align 4
  br label %413

203:                                              ; preds = %4
  %204 = load i32*, i32** %6, align 8
  %205 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.8 to i32*))
  %206 = load i32, i32* %8, align 4
  %207 = sext i32 %206 to i64
  %208 = icmp ult i64 %207, 4
  br i1 %208, label %209, label %210

209:                                              ; preds = %203
  br label %415

210:                                              ; preds = %203
  %211 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %212 = bitcast %union.controlmsg* %211 to %struct.TYPE_8__*
  %213 = bitcast %struct.TYPE_8__* %30 to i8*
  %214 = bitcast %struct.TYPE_8__* %212 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %213, i8* align 4 %214, i64 120, i1 false)
  %215 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %30)
  %216 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %217 = bitcast %union.controlmsg* %216 to %struct.TYPE_8__*
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 17
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @EXTRACT_LE_16BITS(i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32*, i32** %6, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @dnaddr_string(i32* %222, i32 %223)
  %225 = sext i32 %224 to i64
  %226 = inttoptr i64 %225 to i32*
  %227 = call i32 @ND_PRINT(i32* %226)
  %228 = load i32*, i32** %6, align 8
  %229 = load i8*, i8** %24, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 4
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = sub i64 %232, 4
  %234 = trunc i64 %233 to i32
  %235 = call i32 @print_l2_routes(i32* %228, i8* %230, i32 %234)
  store i32 %235, i32* %25, align 4
  br label %413

236:                                              ; preds = %4
  %237 = load i32*, i32** %6, align 8
  %238 = call i32 @ND_PRINT(i32* bitcast ([14 x i8]* @.str.9 to i32*))
  %239 = load i32, i32* %8, align 4
  %240 = sext i32 %239 to i64
  %241 = icmp ult i64 %240, 4
  br i1 %241, label %242, label %243

242:                                              ; preds = %236
  br label %415

243:                                              ; preds = %236
  %244 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %245 = bitcast %union.controlmsg* %244 to %struct.TYPE_8__*
  %246 = bitcast %struct.TYPE_8__* %31 to i8*
  %247 = bitcast %struct.TYPE_8__* %245 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %246, i8* align 4 %247, i64 120, i1 false)
  %248 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %31)
  %249 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %250 = bitcast %union.controlmsg* %249 to %struct.TYPE_8__*
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 16
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @EXTRACT_LE_8BITS(i32 %252)
  store i32 %253, i32* %20, align 4
  %254 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %255 = bitcast %union.controlmsg* %254 to %struct.TYPE_8__*
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 15
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @EXTRACT_LE_8BITS(i32 %257)
  store i32 %258, i32* %16, align 4
  %259 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %260 = bitcast %union.controlmsg* %259 to %struct.TYPE_8__*
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 14
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @EXTRACT_LE_8BITS(i32 %262)
  store i32 %263, i32* %17, align 4
  %264 = bitcast %struct.TYPE_7__* %21 to i8*
  %265 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %266 = bitcast %union.controlmsg* %265 to %struct.TYPE_8__*
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %266, i32 0, i32 13
  %268 = bitcast i32* %267 to i8*
  %269 = call i32 @memcpy(i8* %264, i8* %268, i32 4)
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @EXTRACT_LE_16BITS(i32 %272)
  store i32 %273, i32* %12, align 4
  %274 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %275 = bitcast %union.controlmsg* %274 to %struct.TYPE_8__*
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 12
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @EXTRACT_LE_8BITS(i32 %277)
  store i32 %278, i32* %14, align 4
  %279 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %280 = bitcast %union.controlmsg* %279 to %struct.TYPE_8__*
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 11
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @EXTRACT_LE_16BITS(i32 %282)
  store i32 %283, i32* %15, align 4
  %284 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %285 = bitcast %union.controlmsg* %284 to %struct.TYPE_8__*
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 10
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @EXTRACT_LE_8BITS(i32 %287)
  store i32 %288, i32* %23, align 4
  %289 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %290 = bitcast %union.controlmsg* %289 to %struct.TYPE_8__*
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 9
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @EXTRACT_LE_16BITS(i32 %292)
  store i32 %293, i32* %18, align 4
  %294 = load i32*, i32** %6, align 8
  %295 = load i32, i32* %14, align 4
  %296 = call i32 @print_i_info(i32* %294, i32 %295)
  %297 = load i32*, i32** %6, align 8
  %298 = load i32, i32* %20, align 4
  %299 = load i32, i32* %16, align 4
  %300 = load i32, i32* %17, align 4
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %12, align 4
  %303 = call i32 @dnaddr_string(i32* %301, i32 %302)
  %304 = load i32, i32* %15, align 4
  %305 = load i32, i32* %23, align 4
  %306 = load i32, i32* %18, align 4
  %307 = sext i32 %306 to i64
  %308 = inttoptr i64 %307 to i32*
  %309 = call i32 @ND_PRINT(i32* %308)
  %310 = load i8*, i8** %24, align 8
  %311 = getelementptr inbounds i8, i8* %310, i64 4
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = sub i64 %313, 4
  %315 = trunc i64 %314 to i32
  %316 = call i32 @print_elist(i8* %311, i32 %315)
  store i32 %316, i32* %25, align 4
  br label %413

317:                                              ; preds = %4
  %318 = load i32*, i32** %6, align 8
  %319 = call i32 @ND_PRINT(i32* bitcast ([15 x i8]* @.str.11 to i32*))
  %320 = load i32, i32* %8, align 4
  %321 = sext i32 %320 to i64
  %322 = icmp ult i64 %321, 4
  br i1 %322, label %323, label %324

323:                                              ; preds = %317
  br label %415

324:                                              ; preds = %317
  %325 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %326 = bitcast %union.controlmsg* %325 to %struct.TYPE_8__*
  %327 = bitcast %struct.TYPE_8__* %32 to i8*
  %328 = bitcast %struct.TYPE_8__* %326 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %327, i8* align 4 %328, i64 120, i1 false)
  %329 = call i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8 %32)
  %330 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %331 = bitcast %union.controlmsg* %330 to %struct.TYPE_8__*
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 8
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @EXTRACT_LE_8BITS(i32 %333)
  store i32 %334, i32* %20, align 4
  %335 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %336 = bitcast %union.controlmsg* %335 to %struct.TYPE_8__*
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @EXTRACT_LE_8BITS(i32 %338)
  store i32 %339, i32* %16, align 4
  %340 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %341 = bitcast %union.controlmsg* %340 to %struct.TYPE_8__*
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @EXTRACT_LE_8BITS(i32 %343)
  store i32 %344, i32* %17, align 4
  %345 = bitcast %struct.TYPE_7__* %21 to i8*
  %346 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %347 = bitcast %union.controlmsg* %346 to %struct.TYPE_8__*
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 5
  %349 = bitcast i32* %348 to i8*
  %350 = call i32 @memcpy(i8* %345, i8* %349, i32 4)
  %351 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @EXTRACT_LE_16BITS(i32 %353)
  store i32 %354, i32* %12, align 4
  %355 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %356 = bitcast %union.controlmsg* %355 to %struct.TYPE_8__*
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 4
  %359 = call i32 @EXTRACT_LE_8BITS(i32 %358)
  store i32 %359, i32* %14, align 4
  %360 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %361 = bitcast %union.controlmsg* %360 to %struct.TYPE_8__*
  %362 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 4
  %364 = call i32 @EXTRACT_LE_16BITS(i32 %363)
  store i32 %364, i32* %15, align 4
  %365 = bitcast %struct.TYPE_7__* %22 to i8*
  %366 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %367 = bitcast %union.controlmsg* %366 to %struct.TYPE_8__*
  %368 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i32 0, i32 2
  %369 = bitcast i32* %368 to i8*
  %370 = call i32 @memcpy(i8* %365, i8* %369, i32 4)
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @EXTRACT_LE_16BITS(i32 %373)
  store i32 %374, i32* %13, align 4
  %375 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %376 = bitcast %union.controlmsg* %375 to %struct.TYPE_8__*
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @EXTRACT_LE_16BITS(i32 %378)
  store i32 %379, i32* %18, align 4
  %380 = load %union.controlmsg*, %union.controlmsg** %11, align 8
  %381 = bitcast %union.controlmsg* %380 to %struct.TYPE_8__*
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @EXTRACT_LE_8BITS(i32 %383)
  store i32 %384, i32* %19, align 4
  %385 = load i32*, i32** %6, align 8
  %386 = load i32, i32* %14, align 4
  %387 = call i32 @print_i_info(i32* %385, i32 %386)
  %388 = load i32*, i32** %6, align 8
  %389 = load i32, i32* %20, align 4
  %390 = load i32, i32* %16, align 4
  %391 = load i32, i32* %17, align 4
  %392 = load i32*, i32** %6, align 8
  %393 = load i32, i32* %12, align 4
  %394 = call i32 @dnaddr_string(i32* %392, i32 %393)
  %395 = load i32, i32* %15, align 4
  %396 = load i32*, i32** %6, align 8
  %397 = load i32, i32* %13, align 4
  %398 = call i32 @dnaddr_string(i32* %396, i32 %397)
  %399 = load i32, i32* %18, align 4
  %400 = load i32, i32* %19, align 4
  %401 = sext i32 %400 to i64
  %402 = inttoptr i64 %401 to i32*
  %403 = call i32 @ND_PRINT(i32* %402)
  store i32 1, i32* %25, align 4
  br label %413

404:                                              ; preds = %4
  %405 = load i32*, i32** %6, align 8
  %406 = call i32 @ND_PRINT(i32* bitcast ([24 x i8]* @.str.13 to i32*))
  %407 = load %union.routehdr*, %union.routehdr** %7, align 8
  %408 = bitcast %union.routehdr* %407 to i32*
  %409 = load i32, i32* %8, align 4
  %410 = load i32, i32* %9, align 4
  %411 = call i32 @min(i32 %409, i32 %410)
  %412 = call i32 @ND_DEFAULTPRINT(i32* %408, i32 %411)
  store i32 1, i32* %25, align 4
  br label %413

413:                                              ; preds = %404, %324, %243, %210, %177, %146, %115, %52
  %414 = load i32, i32* %25, align 4
  store i32 %414, i32* %5, align 4
  br label %416

415:                                              ; preds = %323, %242, %209, %176, %145, %114, %51
  store i32 0, i32* %5, align 4
  br label %416

416:                                              ; preds = %415, %413
  %417 = load i32, i32* %5, align 4
  ret i32 %417
}

declare dso_local i32 @EXTRACT_LE_8BITS(i32) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @ND_TCHECK(%struct.TYPE_8__* byval(%struct.TYPE_8__) align 8) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @EXTRACT_LE_16BITS(i32) #1

declare dso_local i32 @print_t_info(i32*, i32) #1

declare dso_local i32 @dnaddr_string(i32*, i32) #1

declare dso_local i32 @print_l1_routes(i32*, i8*, i32) #1

declare dso_local i32 @print_l2_routes(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @print_i_info(i32*, i32) #1

declare dso_local i32 @print_elist(i8*, i32) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
