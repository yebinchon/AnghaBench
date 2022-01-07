; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-olsr.c_olsr_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-olsr.c_olsr_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%union.anon = type { %struct.olsr_common* }
%struct.olsr_common = type { i32*, i32* }
%union.anon.0 = type { %struct.olsr_msg4* }
%struct.olsr_msg4 = type { i32, i32*, i32, i32, i32, i32*, i32* }
%struct.olsr_hna6 = type { i32, i32* }
%struct.olsr_msg6 = type { i32, i32*, i32, i32, i32, i32*, i32* }
%struct.olsr_hello = type { i32, i32 }
%struct.olsr_hello_link = type { i32, i32* }
%struct.olsr_tc = type { i32* }
%struct.olsr_hna4 = type { i32*, i32* }

@.str = private unnamed_addr constant [31 x i8] c"OLSRv%i, seq 0x%04x, length %u\00", align 1
@.str.1 = private unnamed_addr constant [96 x i8] c"\0A\09%s Message (%#04x), originator %s, ttl %u, hop %u\0A\09  vtime %.3fs, msg-seq 0x%04x, length %u%s\00", align 1
@olsr_msg_values = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" (invalid)\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0A\09  hello-time %.3fs, MPR willingness %u\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"\0A\09    link-type %s, neighbor-type %s, len %u%s\00", align 1
@olsr_link_type_values = common dso_local global i32 0, align 4
@olsr_neighbor_type_values = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"\0A\09    advertised neighbor seq 0x%04x\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"\0A\09  interface address %s\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"\0A\09  Advertised networks (total %u)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"\0A\09    #%i: %s/%u\00", align 1
@GW_HNA_PAD = common dso_local global i64 0, align 8
@GW_HNA_FLAGS = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [33 x i8] c"%sSmart-Gateway:%s%s%s%s%s %u/%u\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"\0A\09    \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@GW_HNA_FLAG_LINKSPEED = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [11 x i8] c" LINKSPEED\00", align 1
@GW_HNA_FLAG_IPV4 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [6 x i8] c" IPV4\00", align 1
@GW_HNA_FLAG_IPV4_NAT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [10 x i8] c" IPV4-NAT\00", align 1
@GW_HNA_FLAG_IPV6 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c" IPV6\00", align 1
@GW_HNA_FLAG_IPV6PREFIX = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c" IPv6-PREFIX\00", align 1
@GW_HNA_UPLINK = common dso_local global i64 0, align 8
@GW_HNA_DOWNLINK = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"%s%s/%u\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"\0A\09  Version %u, Entries %u%s\00", align 1
@.str.21 = private unnamed_addr constant [35 x i8] c"\0A\09    #%u: type %#06x, length %u%s\00", align 1
@.str.22 = private unnamed_addr constant [21 x i8] c", address %s, name \22\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"[|olsr]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @olsr_print(%struct.TYPE_11__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.anon, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %union.anon.0, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.olsr_hna6*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  store i32* %33, i32** %19, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %35, 16
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  br label %909

38:                                               ; preds = %4
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ND_TCHECK2(i32 %40, i32 16)
  %42 = load i32*, i32** %19, align 8
  %43 = bitcast i32* %42 to %struct.olsr_common*
  %44 = bitcast %union.anon* %9 to %struct.olsr_common**
  store %struct.olsr_common* %43, %struct.olsr_common** %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = bitcast %union.anon* %9 to %struct.olsr_common**
  %47 = load %struct.olsr_common*, %struct.olsr_common** %46, align 8
  %48 = getelementptr inbounds %struct.olsr_common, %struct.olsr_common* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @EXTRACT_16BITS(i32* %49)
  %51 = call i32 @min(i32 %45, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 4, i32 6
  %57 = bitcast %union.anon* %9 to %struct.olsr_common**
  %58 = load %struct.olsr_common*, %struct.olsr_common** %57, align 8
  %59 = getelementptr inbounds %struct.olsr_common, %struct.olsr_common* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @EXTRACT_16BITS(i32* %60)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to %struct.TYPE_11__*
  %65 = call i32 @ND_PRINT(%struct.TYPE_11__* %64)
  %66 = load i32*, i32** %19, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 16
  store i32* %67, i32** %19, align 8
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %70, 1
  br i1 %71, label %72, label %73

72:                                               ; preds = %38
  br label %912

73:                                               ; preds = %38
  br label %74

74:                                               ; preds = %903, %73
  %75 = load i32*, i32** %19, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = icmp ult i32* %75, %79
  br i1 %80, label %81, label %908

81:                                               ; preds = %74
  store i32 0, i32* %22, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %162

84:                                               ; preds = %81
  %85 = load i32*, i32** %19, align 8
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @ND_TCHECK2(i32 %86, i32 48)
  %88 = load i32*, i32** %19, align 8
  %89 = bitcast i32* %88 to %struct.olsr_msg6*
  %90 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  store %struct.olsr_msg6* %89, %struct.olsr_msg6** %90, align 8
  %91 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %92 = load %struct.olsr_msg6*, %struct.olsr_msg6** %91, align 8
  %93 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %10, align 4
  %95 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %96 = load %struct.olsr_msg6*, %struct.olsr_msg6** %95, align 8
  %97 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %96, i32 0, i32 6
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @EXTRACT_16BITS(i32* %98)
  store i32 %99, i32* %11, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sext i32 %100 to i64
  %102 = icmp uge i64 %101, 48
  br i1 %102, label %103, label %108

103:                                              ; preds = %84
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp sle i32 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %22, align 4
  br label %108

108:                                              ; preds = %107, %103, %84
  %109 = load i32, i32* %10, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %114, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %108
  br label %912

115:                                              ; preds = %111
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = load i32, i32* @olsr_msg_values, align 4
  %118 = load i32, i32* %10, align 4
  %119 = call i32 @tok2str(i32 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %10, align 4
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %122 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %123 = load %struct.olsr_msg6*, %struct.olsr_msg6** %122, align 8
  %124 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %123, i32 0, i32 5
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ip6addr_string(%struct.TYPE_11__* %121, i32* %125)
  %127 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %128 = load %struct.olsr_msg6*, %struct.olsr_msg6** %127, align 8
  %129 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %132 = load %struct.olsr_msg6*, %struct.olsr_msg6** %131, align 8
  %133 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %136 = load %struct.olsr_msg6*, %struct.olsr_msg6** %135, align 8
  %137 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @ME_TO_DOUBLE(i32 %138)
  %140 = bitcast %union.anon.0* %21 to %struct.olsr_msg6**
  %141 = load %struct.olsr_msg6*, %struct.olsr_msg6** %140, align 8
  %142 = getelementptr inbounds %struct.olsr_msg6, %struct.olsr_msg6* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @EXTRACT_16BITS(i32* %143)
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %22, align 4
  %147 = icmp eq i32 %146, 0
  %148 = zext i1 %147 to i64
  %149 = select i1 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %150 = bitcast i8* %149 to %struct.TYPE_11__*
  %151 = call i32 @ND_PRINT(%struct.TYPE_11__* %150)
  %152 = load i32, i32* %22, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %115
  br label %912

155:                                              ; preds = %115
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = sub i64 %157, 48
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %12, align 4
  %160 = load i32*, i32** %19, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 48
  store i32* %161, i32** %20, align 8
  br label %240

162:                                              ; preds = %81
  %163 = load i32*, i32** %19, align 8
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @ND_TCHECK2(i32 %164, i32 48)
  %166 = load i32*, i32** %19, align 8
  %167 = bitcast i32* %166 to %struct.olsr_msg4*
  %168 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  store %struct.olsr_msg4* %167, %struct.olsr_msg4** %168, align 8
  %169 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %170 = load %struct.olsr_msg4*, %struct.olsr_msg4** %169, align 8
  %171 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  store i32 %172, i32* %10, align 4
  %173 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %174 = load %struct.olsr_msg4*, %struct.olsr_msg4** %173, align 8
  %175 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %174, i32 0, i32 6
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @EXTRACT_16BITS(i32* %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp uge i64 %179, 48
  br i1 %180, label %181, label %186

181:                                              ; preds = %162
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %7, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  store i32 1, i32* %22, align 4
  br label %186

186:                                              ; preds = %185, %181, %162
  %187 = load i32, i32* %10, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %11, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %189, %186
  br label %912

193:                                              ; preds = %189
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %195 = load i32, i32* @olsr_msg_values, align 4
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @tok2str(i32 %195, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %196)
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %200 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %201 = load %struct.olsr_msg4*, %struct.olsr_msg4** %200, align 8
  %202 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %201, i32 0, i32 5
  %203 = load i32*, i32** %202, align 8
  %204 = call i32 @ipaddr_string(%struct.TYPE_11__* %199, i32* %203)
  %205 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %206 = load %struct.olsr_msg4*, %struct.olsr_msg4** %205, align 8
  %207 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %210 = load %struct.olsr_msg4*, %struct.olsr_msg4** %209, align 8
  %211 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %214 = load %struct.olsr_msg4*, %struct.olsr_msg4** %213, align 8
  %215 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @ME_TO_DOUBLE(i32 %216)
  %218 = bitcast %union.anon.0* %21 to %struct.olsr_msg4**
  %219 = load %struct.olsr_msg4*, %struct.olsr_msg4** %218, align 8
  %220 = getelementptr inbounds %struct.olsr_msg4, %struct.olsr_msg4* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @EXTRACT_16BITS(i32* %221)
  %223 = load i32, i32* %11, align 4
  %224 = load i32, i32* %22, align 4
  %225 = icmp eq i32 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %228 = bitcast i8* %227 to %struct.TYPE_11__*
  %229 = call i32 @ND_PRINT(%struct.TYPE_11__* %228)
  %230 = load i32, i32* %22, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %233, label %232

232:                                              ; preds = %193
  br label %912

233:                                              ; preds = %193
  %234 = load i32, i32* %11, align 4
  %235 = sext i32 %234 to i64
  %236 = sub i64 %235, 48
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %12, align 4
  %238 = load i32*, i32** %19, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 48
  store i32* %239, i32** %20, align 8
  br label %240

240:                                              ; preds = %233, %155
  %241 = load i32, i32* %10, align 4
  switch i32 %241, label %898 [
    i32 134, label %242
    i32 135, label %242
    i32 128, label %379
    i32 129, label %379
    i32 132, label %437
    i32 133, label %478
    i32 131, label %736
    i32 130, label %897
  ]

242:                                              ; preds = %240, %240
  %243 = load i32, i32* %12, align 4
  %244 = sext i32 %243 to i64
  %245 = icmp ult i64 %244, 8
  br i1 %245, label %246, label %247

246:                                              ; preds = %242
  br label %909

247:                                              ; preds = %242
  %248 = load i32*, i32** %20, align 8
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @ND_TCHECK2(i32 %249, i32 8)
  %251 = load i32*, i32** %20, align 8
  %252 = bitcast i32* %251 to %struct.olsr_hello*
  %253 = bitcast %union.anon* %9 to %struct.olsr_hello**
  store %struct.olsr_hello* %252, %struct.olsr_hello** %253, align 8
  %254 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %255 = bitcast %union.anon* %9 to %struct.olsr_hello**
  %256 = load %struct.olsr_hello*, %struct.olsr_hello** %255, align 8
  %257 = getelementptr inbounds %struct.olsr_hello, %struct.olsr_hello* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @ME_TO_DOUBLE(i32 %258)
  %260 = bitcast %union.anon* %9 to %struct.olsr_hello**
  %261 = load %struct.olsr_hello*, %struct.olsr_hello** %260, align 8
  %262 = getelementptr inbounds %struct.olsr_hello, %struct.olsr_hello* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = inttoptr i64 %264 to %struct.TYPE_11__*
  %266 = call i32 @ND_PRINT(%struct.TYPE_11__* %265)
  %267 = load i32*, i32** %20, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 8
  store i32* %268, i32** %20, align 8
  %269 = load i32, i32* %12, align 4
  %270 = sext i32 %269 to i64
  %271 = sub i64 %270, 8
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %12, align 4
  br label %273

273:                                              ; preds = %370, %247
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = icmp uge i64 %275, 16
  br i1 %276, label %277, label %378

277:                                              ; preds = %273
  store i32 0, i32* %23, align 4
  %278 = load i32*, i32** %20, align 8
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @ND_TCHECK2(i32 %279, i32 16)
  %281 = load i32*, i32** %20, align 8
  %282 = bitcast i32* %281 to %struct.olsr_hello_link*
  %283 = bitcast %union.anon* %9 to %struct.olsr_hello_link**
  store %struct.olsr_hello_link* %282, %struct.olsr_hello_link** %283, align 8
  %284 = bitcast %union.anon* %9 to %struct.olsr_hello_link**
  %285 = load %struct.olsr_hello_link*, %struct.olsr_hello_link** %284, align 8
  %286 = getelementptr inbounds %struct.olsr_hello_link, %struct.olsr_hello_link* %285, i32 0, i32 1
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @EXTRACT_16BITS(i32* %287)
  store i32 %288, i32* %13, align 4
  %289 = bitcast %union.anon* %9 to %struct.olsr_hello_link**
  %290 = load %struct.olsr_hello_link*, %struct.olsr_hello_link** %289, align 8
  %291 = getelementptr inbounds %struct.olsr_hello_link, %struct.olsr_hello_link* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @OLSR_EXTRACT_LINK_TYPE(i32 %292)
  store i32 %293, i32* %17, align 4
  %294 = bitcast %union.anon* %9 to %struct.olsr_hello_link**
  %295 = load %struct.olsr_hello_link*, %struct.olsr_hello_link** %294, align 8
  %296 = getelementptr inbounds %struct.olsr_hello_link, %struct.olsr_hello_link* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @OLSR_EXTRACT_NEIGHBOR_TYPE(i32 %297)
  store i32 %298, i32* %18, align 4
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* %12, align 4
  %301 = icmp sle i32 %299, %300
  br i1 %301, label %302, label %307

302:                                              ; preds = %277
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp uge i64 %304, 16
  br i1 %305, label %306, label %307

306:                                              ; preds = %302
  store i32 1, i32* %23, align 4
  br label %307

307:                                              ; preds = %306, %302, %277
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %309 = load i32, i32* @olsr_link_type_values, align 4
  %310 = load i32, i32* %17, align 4
  %311 = call i32 @tok2str(i32 %309, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* @olsr_neighbor_type_values, align 4
  %313 = load i32, i32* %18, align 4
  %314 = call i32 @tok2str(i32 %312, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %313)
  %315 = load i32, i32* %13, align 4
  %316 = load i32, i32* %23, align 4
  %317 = icmp eq i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %320 = bitcast i8* %319 to %struct.TYPE_11__*
  %321 = call i32 @ND_PRINT(%struct.TYPE_11__* %320)
  %322 = load i32, i32* %23, align 4
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %307
  br label %378

325:                                              ; preds = %307
  %326 = load i32*, i32** %20, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 16
  store i32* %327, i32** %20, align 8
  %328 = load i32, i32* %12, align 4
  %329 = sext i32 %328 to i64
  %330 = sub i64 %329, 16
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %12, align 4
  %332 = load i32, i32* %13, align 4
  %333 = sext i32 %332 to i64
  %334 = sub i64 %333, 16
  %335 = trunc i64 %334 to i32
  store i32 %335, i32* %13, align 4
  %336 = load i32*, i32** %20, align 8
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %13, align 4
  %339 = call i32 @ND_TCHECK2(i32 %337, i32 %338)
  %340 = load i32, i32* %10, align 4
  %341 = icmp eq i32 %340, 134
  br i1 %341, label %342, label %350

342:                                              ; preds = %325
  %343 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %344 = load i32*, i32** %20, align 8
  %345 = load i32, i32* %13, align 4
  %346 = call i32 @olsr_print_neighbor(%struct.TYPE_11__* %343, i32* %344, i32 %345)
  %347 = icmp eq i32 %346, -1
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  br label %909

349:                                              ; preds = %342
  br label %370

350:                                              ; preds = %325
  %351 = load i32, i32* %8, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %361

353:                                              ; preds = %350
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %355 = load i32*, i32** %20, align 8
  %356 = load i32, i32* %13, align 4
  %357 = call i32 @olsr_print_lq_neighbor6(%struct.TYPE_11__* %354, i32* %355, i32 %356)
  %358 = icmp eq i32 %357, -1
  br i1 %358, label %359, label %360

359:                                              ; preds = %353
  br label %909

360:                                              ; preds = %353
  br label %369

361:                                              ; preds = %350
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %363 = load i32*, i32** %20, align 8
  %364 = load i32, i32* %13, align 4
  %365 = call i32 @olsr_print_lq_neighbor4(%struct.TYPE_11__* %362, i32* %363, i32 %364)
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %367, label %368

367:                                              ; preds = %361
  br label %909

368:                                              ; preds = %361
  br label %369

369:                                              ; preds = %368, %360
  br label %370

370:                                              ; preds = %369, %349
  %371 = load i32, i32* %13, align 4
  %372 = load i32*, i32** %20, align 8
  %373 = sext i32 %371 to i64
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  store i32* %374, i32** %20, align 8
  %375 = load i32, i32* %13, align 4
  %376 = load i32, i32* %12, align 4
  %377 = sub nsw i32 %376, %375
  store i32 %377, i32* %12, align 4
  br label %273

378:                                              ; preds = %324, %273
  br label %903

379:                                              ; preds = %240, %240
  %380 = load i32, i32* %12, align 4
  %381 = sext i32 %380 to i64
  %382 = icmp ult i64 %381, 8
  br i1 %382, label %383, label %384

383:                                              ; preds = %379
  br label %909

384:                                              ; preds = %379
  %385 = load i32*, i32** %20, align 8
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @ND_TCHECK2(i32 %386, i32 8)
  %388 = load i32*, i32** %20, align 8
  %389 = bitcast i32* %388 to %struct.olsr_tc*
  %390 = bitcast %union.anon* %9 to %struct.olsr_tc**
  store %struct.olsr_tc* %389, %struct.olsr_tc** %390, align 8
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %392 = bitcast %union.anon* %9 to %struct.olsr_tc**
  %393 = load %struct.olsr_tc*, %struct.olsr_tc** %392, align 8
  %394 = getelementptr inbounds %struct.olsr_tc, %struct.olsr_tc* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = call i32 @EXTRACT_16BITS(i32* %395)
  %397 = sext i32 %396 to i64
  %398 = inttoptr i64 %397 to %struct.TYPE_11__*
  %399 = call i32 @ND_PRINT(%struct.TYPE_11__* %398)
  %400 = load i32*, i32** %20, align 8
  %401 = getelementptr inbounds i32, i32* %400, i64 8
  store i32* %401, i32** %20, align 8
  %402 = load i32, i32* %12, align 4
  %403 = sext i32 %402 to i64
  %404 = sub i64 %403, 8
  %405 = trunc i64 %404 to i32
  store i32 %405, i32* %12, align 4
  %406 = load i32, i32* %10, align 4
  %407 = icmp eq i32 %406, 128
  br i1 %407, label %408, label %416

408:                                              ; preds = %384
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %410 = load i32*, i32** %20, align 8
  %411 = load i32, i32* %12, align 4
  %412 = call i32 @olsr_print_neighbor(%struct.TYPE_11__* %409, i32* %410, i32 %411)
  %413 = icmp eq i32 %412, -1
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  br label %909

415:                                              ; preds = %408
  br label %436

416:                                              ; preds = %384
  %417 = load i32, i32* %8, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %427

419:                                              ; preds = %416
  %420 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %421 = load i32*, i32** %20, align 8
  %422 = load i32, i32* %12, align 4
  %423 = call i32 @olsr_print_lq_neighbor6(%struct.TYPE_11__* %420, i32* %421, i32 %422)
  %424 = icmp eq i32 %423, -1
  br i1 %424, label %425, label %426

425:                                              ; preds = %419
  br label %909

426:                                              ; preds = %419
  br label %435

427:                                              ; preds = %416
  %428 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %429 = load i32*, i32** %20, align 8
  %430 = load i32, i32* %12, align 4
  %431 = call i32 @olsr_print_lq_neighbor4(%struct.TYPE_11__* %428, i32* %429, i32 %430)
  %432 = icmp eq i32 %431, -1
  br i1 %432, label %433, label %434

433:                                              ; preds = %427
  br label %909

434:                                              ; preds = %427
  br label %435

435:                                              ; preds = %434, %426
  br label %436

436:                                              ; preds = %435, %415
  br label %903

437:                                              ; preds = %240
  store i64 4, i64* %24, align 8
  %438 = load i32, i32* %8, align 4
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  store i64 4, i64* %24, align 8
  br label %441

441:                                              ; preds = %440, %437
  br label %442

442:                                              ; preds = %464, %441
  %443 = load i32, i32* %12, align 4
  %444 = sext i32 %443 to i64
  %445 = load i64, i64* %24, align 8
  %446 = icmp uge i64 %444, %445
  br i1 %446, label %447, label %477

447:                                              ; preds = %442
  %448 = load i32*, i32** %20, align 8
  %449 = load i32, i32* %448, align 4
  %450 = load i64, i64* %24, align 8
  %451 = trunc i64 %450 to i32
  %452 = call i32 @ND_TCHECK2(i32 %449, i32 %451)
  %453 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %454 = load i32, i32* %8, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %460

456:                                              ; preds = %447
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %458 = load i32*, i32** %20, align 8
  %459 = call i32 @ip6addr_string(%struct.TYPE_11__* %457, i32* %458)
  br label %464

460:                                              ; preds = %447
  %461 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %462 = load i32*, i32** %20, align 8
  %463 = call i32 @ipaddr_string(%struct.TYPE_11__* %461, i32* %462)
  br label %464

464:                                              ; preds = %460, %456
  %465 = phi i32 [ %459, %456 ], [ %463, %460 ]
  %466 = sext i32 %465 to i64
  %467 = inttoptr i64 %466 to %struct.TYPE_11__*
  %468 = call i32 @ND_PRINT(%struct.TYPE_11__* %467)
  %469 = load i64, i64* %24, align 8
  %470 = load i32*, i32** %20, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 %469
  store i32* %471, i32** %20, align 8
  %472 = load i64, i64* %24, align 8
  %473 = load i32, i32* %12, align 4
  %474 = sext i32 %473 to i64
  %475 = sub i64 %474, %472
  %476 = trunc i64 %475 to i32
  store i32 %476, i32* %12, align 4
  br label %442

477:                                              ; preds = %442
  br label %903

478:                                              ; preds = %240
  %479 = load i32, i32* %8, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %521

481:                                              ; preds = %478
  store i32 0, i32* %25, align 4
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %483 = load i32, i32* %12, align 4
  %484 = sext i32 %483 to i64
  %485 = udiv i64 %484, 16
  %486 = trunc i64 %485 to i32
  %487 = zext i32 %486 to i64
  %488 = inttoptr i64 %487 to %struct.TYPE_11__*
  %489 = call i32 @ND_PRINT(%struct.TYPE_11__* %488)
  br label %490

490:                                              ; preds = %494, %481
  %491 = load i32, i32* %12, align 4
  %492 = sext i32 %491 to i64
  %493 = icmp uge i64 %492, 16
  br i1 %493, label %494, label %520

494:                                              ; preds = %490
  %495 = load i32*, i32** %20, align 8
  %496 = load i32, i32* %495, align 4
  %497 = call i32 @ND_TCHECK2(i32 %496, i32 16)
  %498 = load i32*, i32** %20, align 8
  %499 = bitcast i32* %498 to %struct.olsr_hna6*
  store %struct.olsr_hna6* %499, %struct.olsr_hna6** %26, align 8
  %500 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %501 = load i32, i32* %25, align 4
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %503 = load %struct.olsr_hna6*, %struct.olsr_hna6** %26, align 8
  %504 = getelementptr inbounds %struct.olsr_hna6, %struct.olsr_hna6* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = call i32 @ip6addr_string(%struct.TYPE_11__* %502, i32* %505)
  %507 = load %struct.olsr_hna6*, %struct.olsr_hna6** %26, align 8
  %508 = getelementptr inbounds %struct.olsr_hna6, %struct.olsr_hna6* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 8
  %510 = call i32 @mask62plen(i32 %509)
  %511 = sext i32 %510 to i64
  %512 = inttoptr i64 %511 to %struct.TYPE_11__*
  %513 = call i32 @ND_PRINT(%struct.TYPE_11__* %512)
  %514 = load i32*, i32** %20, align 8
  %515 = getelementptr inbounds i32, i32* %514, i64 16
  store i32* %515, i32** %20, align 8
  %516 = load i32, i32* %12, align 4
  %517 = sext i32 %516 to i64
  %518 = sub i64 %517, 16
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %12, align 4
  br label %490

520:                                              ; preds = %490
  br label %735

521:                                              ; preds = %478
  store i32 0, i32* %27, align 4
  %522 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %523 = load i32, i32* %12, align 4
  %524 = sext i32 %523 to i64
  %525 = udiv i64 %524, 16
  %526 = trunc i64 %525 to i32
  %527 = zext i32 %526 to i64
  %528 = inttoptr i64 %527 to %struct.TYPE_11__*
  %529 = call i32 @ND_PRINT(%struct.TYPE_11__* %528)
  br label %530

530:                                              ; preds = %724, %521
  %531 = load i32, i32* %12, align 4
  %532 = sext i32 %531 to i64
  %533 = icmp uge i64 %532, 16
  br i1 %533, label %534, label %734

534:                                              ; preds = %530
  %535 = load i32*, i32** %20, align 8
  %536 = load i32, i32* %535, align 4
  %537 = call i32 @ND_TCHECK2(i32 %536, i32 16)
  %538 = load i32*, i32** %20, align 8
  %539 = bitcast i32* %538 to %struct.olsr_hna4*
  %540 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  store %struct.olsr_hna4* %539, %struct.olsr_hna4** %540, align 8
  %541 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %542 = load %struct.olsr_hna4*, %struct.olsr_hna4** %541, align 8
  %543 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %542, i32 0, i32 1
  %544 = load i32*, i32** %543, align 8
  %545 = getelementptr inbounds i32, i32* %544, i64 0
  %546 = load i32, i32* %545, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %703, label %548

548:                                              ; preds = %534
  %549 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %550 = load %struct.olsr_hna4*, %struct.olsr_hna4** %549, align 8
  %551 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %550, i32 0, i32 1
  %552 = load i32*, i32** %551, align 8
  %553 = getelementptr inbounds i32, i32* %552, i64 1
  %554 = load i32, i32* %553, align 4
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %703, label %556

556:                                              ; preds = %548
  %557 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %558 = load %struct.olsr_hna4*, %struct.olsr_hna4** %557, align 8
  %559 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %558, i32 0, i32 1
  %560 = load i32*, i32** %559, align 8
  %561 = getelementptr inbounds i32, i32* %560, i64 2
  %562 = load i32, i32* %561, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %703, label %564

564:                                              ; preds = %556
  %565 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %566 = load %struct.olsr_hna4*, %struct.olsr_hna4** %565, align 8
  %567 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %566, i32 0, i32 1
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds i32, i32* %568, i64 3
  %570 = load i32, i32* %569, align 4
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %703, label %572

572:                                              ; preds = %564
  %573 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %574 = load %struct.olsr_hna4*, %struct.olsr_hna4** %573, align 8
  %575 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %574, i32 0, i32 0
  %576 = load i32*, i32** %575, align 8
  %577 = load i64, i64* @GW_HNA_PAD, align 8
  %578 = getelementptr inbounds i32, i32* %576, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %703, label %581

581:                                              ; preds = %572
  %582 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %583 = load %struct.olsr_hna4*, %struct.olsr_hna4** %582, align 8
  %584 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %583, i32 0, i32 0
  %585 = load i32*, i32** %584, align 8
  %586 = load i64, i64* @GW_HNA_FLAGS, align 8
  %587 = getelementptr inbounds i32, i32* %585, i64 %586
  %588 = load i32, i32* %587, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %590, label %703

590:                                              ; preds = %581
  %591 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %592 = load i32, i32* %27, align 4
  %593 = icmp eq i32 %592, 0
  %594 = zext i1 %593 to i64
  %595 = select i1 %593, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %596 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %597 = load %struct.olsr_hna4*, %struct.olsr_hna4** %596, align 8
  %598 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %597, i32 0, i32 0
  %599 = load i32*, i32** %598, align 8
  %600 = load i64, i64* @GW_HNA_FLAGS, align 8
  %601 = getelementptr inbounds i32, i32* %599, i64 %600
  %602 = load i32, i32* %601, align 4
  %603 = load i32, i32* @GW_HNA_FLAG_LINKSPEED, align 4
  %604 = and i32 %602, %603
  %605 = icmp ne i32 %604, 0
  %606 = zext i1 %605 to i64
  %607 = select i1 %605, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %608 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %609 = load %struct.olsr_hna4*, %struct.olsr_hna4** %608, align 8
  %610 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %609, i32 0, i32 0
  %611 = load i32*, i32** %610, align 8
  %612 = load i64, i64* @GW_HNA_FLAGS, align 8
  %613 = getelementptr inbounds i32, i32* %611, i64 %612
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* @GW_HNA_FLAG_IPV4, align 4
  %616 = and i32 %614, %615
  %617 = icmp ne i32 %616, 0
  %618 = zext i1 %617 to i64
  %619 = select i1 %617, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %620 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %621 = load %struct.olsr_hna4*, %struct.olsr_hna4** %620, align 8
  %622 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %621, i32 0, i32 0
  %623 = load i32*, i32** %622, align 8
  %624 = load i64, i64* @GW_HNA_FLAGS, align 8
  %625 = getelementptr inbounds i32, i32* %623, i64 %624
  %626 = load i32, i32* %625, align 4
  %627 = load i32, i32* @GW_HNA_FLAG_IPV4_NAT, align 4
  %628 = and i32 %626, %627
  %629 = icmp ne i32 %628, 0
  %630 = zext i1 %629 to i64
  %631 = select i1 %629, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %632 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %633 = load %struct.olsr_hna4*, %struct.olsr_hna4** %632, align 8
  %634 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %633, i32 0, i32 0
  %635 = load i32*, i32** %634, align 8
  %636 = load i64, i64* @GW_HNA_FLAGS, align 8
  %637 = getelementptr inbounds i32, i32* %635, i64 %636
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* @GW_HNA_FLAG_IPV6, align 4
  %640 = and i32 %638, %639
  %641 = icmp ne i32 %640, 0
  %642 = zext i1 %641 to i64
  %643 = select i1 %641, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %644 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %645 = load %struct.olsr_hna4*, %struct.olsr_hna4** %644, align 8
  %646 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %645, i32 0, i32 0
  %647 = load i32*, i32** %646, align 8
  %648 = load i64, i64* @GW_HNA_FLAGS, align 8
  %649 = getelementptr inbounds i32, i32* %647, i64 %648
  %650 = load i32, i32* %649, align 4
  %651 = load i32, i32* @GW_HNA_FLAG_IPV6PREFIX, align 4
  %652 = and i32 %650, %651
  %653 = icmp ne i32 %652, 0
  %654 = zext i1 %653 to i64
  %655 = select i1 %653, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %656 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %657 = load %struct.olsr_hna4*, %struct.olsr_hna4** %656, align 8
  %658 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %657, i32 0, i32 0
  %659 = load i32*, i32** %658, align 8
  %660 = load i64, i64* @GW_HNA_FLAGS, align 8
  %661 = getelementptr inbounds i32, i32* %659, i64 %660
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @GW_HNA_FLAG_LINKSPEED, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %675

666:                                              ; preds = %590
  %667 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %668 = load %struct.olsr_hna4*, %struct.olsr_hna4** %667, align 8
  %669 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %668, i32 0, i32 0
  %670 = load i32*, i32** %669, align 8
  %671 = load i64, i64* @GW_HNA_UPLINK, align 8
  %672 = getelementptr inbounds i32, i32* %670, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = call i32 @deserialize_gw_speed(i32 %673)
  br label %676

675:                                              ; preds = %590
  br label %676

676:                                              ; preds = %675, %666
  %677 = phi i32 [ %674, %666 ], [ 0, %675 ]
  %678 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %679 = load %struct.olsr_hna4*, %struct.olsr_hna4** %678, align 8
  %680 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %679, i32 0, i32 0
  %681 = load i32*, i32** %680, align 8
  %682 = load i64, i64* @GW_HNA_FLAGS, align 8
  %683 = getelementptr inbounds i32, i32* %681, i64 %682
  %684 = load i32, i32* %683, align 4
  %685 = load i32, i32* @GW_HNA_FLAG_LINKSPEED, align 4
  %686 = and i32 %684, %685
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %697

688:                                              ; preds = %676
  %689 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %690 = load %struct.olsr_hna4*, %struct.olsr_hna4** %689, align 8
  %691 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %690, i32 0, i32 0
  %692 = load i32*, i32** %691, align 8
  %693 = load i64, i64* @GW_HNA_DOWNLINK, align 8
  %694 = getelementptr inbounds i32, i32* %692, i64 %693
  %695 = load i32, i32* %694, align 4
  %696 = call i32 @deserialize_gw_speed(i32 %695)
  br label %698

697:                                              ; preds = %676
  br label %698

698:                                              ; preds = %697, %688
  %699 = phi i32 [ %696, %688 ], [ 0, %697 ]
  %700 = sext i32 %699 to i64
  %701 = inttoptr i64 %700 to %struct.TYPE_11__*
  %702 = call i32 @ND_PRINT(%struct.TYPE_11__* %701)
  br label %724

703:                                              ; preds = %581, %572, %564, %556, %548, %534
  %704 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %705 = load i32, i32* %27, align 4
  %706 = icmp eq i32 %705, 0
  %707 = zext i1 %706 to i64
  %708 = select i1 %706, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0)
  %709 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %710 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %711 = load %struct.olsr_hna4*, %struct.olsr_hna4** %710, align 8
  %712 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %711, i32 0, i32 1
  %713 = load i32*, i32** %712, align 8
  %714 = call i32 @ipaddr_string(%struct.TYPE_11__* %709, i32* %713)
  %715 = bitcast %union.anon* %9 to %struct.olsr_hna4**
  %716 = load %struct.olsr_hna4*, %struct.olsr_hna4** %715, align 8
  %717 = getelementptr inbounds %struct.olsr_hna4, %struct.olsr_hna4* %716, i32 0, i32 0
  %718 = load i32*, i32** %717, align 8
  %719 = call i32 @EXTRACT_32BITS(i32* %718)
  %720 = call i32 @mask2plen(i32 %719)
  %721 = sext i32 %720 to i64
  %722 = inttoptr i64 %721 to %struct.TYPE_11__*
  %723 = call i32 @ND_PRINT(%struct.TYPE_11__* %722)
  br label %724

724:                                              ; preds = %703, %698
  %725 = load i32*, i32** %20, align 8
  %726 = getelementptr inbounds i32, i32* %725, i64 16
  store i32* %726, i32** %20, align 8
  %727 = load i32, i32* %12, align 4
  %728 = sext i32 %727 to i64
  %729 = sub i64 %728, 16
  %730 = trunc i64 %729 to i32
  store i32 %730, i32* %12, align 4
  %731 = load i32, i32* %27, align 4
  %732 = add nsw i32 %731, 1
  %733 = srem i32 %732, 4
  store i32 %733, i32* %27, align 4
  br label %530

734:                                              ; preds = %530
  br label %735

735:                                              ; preds = %734, %520
  br label %903

736:                                              ; preds = %240
  %737 = load i32, i32* %12, align 4
  %738 = icmp slt i32 %737, 4
  br i1 %738, label %739, label %740

739:                                              ; preds = %736
  br label %909

740:                                              ; preds = %736
  %741 = load i32*, i32** %20, align 8
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @ND_TCHECK2(i32 %742, i32 4)
  %744 = load i32*, i32** %20, align 8
  %745 = getelementptr inbounds i32, i32* %744, i64 2
  %746 = call i32 @EXTRACT_16BITS(i32* %745)
  store i32 %746, i32* %28, align 4
  store i32 4, i32* %29, align 4
  %747 = load i32, i32* %8, align 4
  %748 = icmp ne i32 %747, 0
  br i1 %748, label %749, label %750

749:                                              ; preds = %740
  store i32 16, i32* %29, align 4
  br label %750

750:                                              ; preds = %749, %740
  store i32 0, i32* %30, align 4
  %751 = load i32, i32* %28, align 4
  %752 = icmp sgt i32 %751, 0
  br i1 %752, label %753, label %761

753:                                              ; preds = %750
  %754 = load i32, i32* %28, align 4
  %755 = load i32, i32* %29, align 4
  %756 = add nsw i32 4, %755
  %757 = mul nsw i32 %754, %756
  %758 = load i32, i32* %12, align 4
  %759 = icmp sle i32 %757, %758
  br i1 %759, label %760, label %761

760:                                              ; preds = %753
  store i32 1, i32* %30, align 4
  br label %761

761:                                              ; preds = %760, %753, %750
  %762 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %763 = load i32*, i32** %20, align 8
  %764 = call i32 @EXTRACT_16BITS(i32* %763)
  %765 = load i32, i32* %28, align 4
  %766 = load i32, i32* %30, align 4
  %767 = icmp eq i32 %766, 0
  %768 = zext i1 %767 to i64
  %769 = select i1 %767, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %770 = bitcast i8* %769 to %struct.TYPE_11__*
  %771 = call i32 @ND_PRINT(%struct.TYPE_11__* %770)
  %772 = load i32, i32* %30, align 4
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %774, label %775

774:                                              ; preds = %761
  br label %903

775:                                              ; preds = %761
  %776 = load i32*, i32** %20, align 8
  %777 = getelementptr inbounds i32, i32* %776, i64 4
  store i32* %777, i32** %20, align 8
  %778 = load i32, i32* %12, align 4
  %779 = sub nsw i32 %778, 4
  store i32 %779, i32* %12, align 4
  store i32 0, i32* %31, align 4
  br label %780

780:                                              ; preds = %893, %775
  %781 = load i32, i32* %31, align 4
  %782 = load i32, i32* %28, align 4
  %783 = icmp slt i32 %781, %782
  br i1 %783, label %784, label %896

784:                                              ; preds = %780
  store i32 0, i32* %32, align 4
  %785 = load i32, i32* %12, align 4
  %786 = icmp slt i32 %785, 4
  br i1 %786, label %787, label %788

787:                                              ; preds = %784
  br label %896

788:                                              ; preds = %784
  %789 = load i32*, i32** %20, align 8
  %790 = load i32, i32* %789, align 4
  %791 = call i32 @ND_TCHECK2(i32 %790, i32 4)
  %792 = load i32*, i32** %20, align 8
  %793 = call i32 @EXTRACT_16BITS(i32* %792)
  store i32 %793, i32* %14, align 4
  %794 = load i32*, i32** %20, align 8
  %795 = getelementptr inbounds i32, i32* %794, i64 2
  %796 = call i32 @EXTRACT_16BITS(i32* %795)
  store i32 %796, i32* %15, align 4
  %797 = load i32*, i32** %20, align 8
  %798 = getelementptr inbounds i32, i32* %797, i64 4
  store i32* %798, i32** %20, align 8
  %799 = load i32, i32* %12, align 4
  %800 = sub nsw i32 %799, 4
  store i32 %800, i32* %12, align 4
  %801 = load i32, i32* %15, align 4
  %802 = icmp sgt i32 %801, 0
  br i1 %802, label %803, label %810

803:                                              ; preds = %788
  %804 = load i32, i32* %29, align 4
  %805 = load i32, i32* %15, align 4
  %806 = add nsw i32 %804, %805
  %807 = load i32, i32* %12, align 4
  %808 = icmp sle i32 %806, %807
  br i1 %808, label %809, label %810

809:                                              ; preds = %803
  store i32 1, i32* %32, align 4
  br label %810

810:                                              ; preds = %809, %803, %788
  %811 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %812 = load i32, i32* %31, align 4
  %813 = load i32, i32* %14, align 4
  %814 = load i32, i32* %15, align 4
  %815 = load i32, i32* %32, align 4
  %816 = icmp eq i32 %815, 0
  %817 = zext i1 %816 to i64
  %818 = select i1 %816, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %819 = bitcast i8* %818 to %struct.TYPE_11__*
  %820 = call i32 @ND_PRINT(%struct.TYPE_11__* %819)
  %821 = load i32, i32* %32, align 4
  %822 = icmp eq i32 %821, 0
  br i1 %822, label %823, label %824

823:                                              ; preds = %810
  br label %896

824:                                              ; preds = %810
  store i32 0, i32* %16, align 4
  %825 = load i32, i32* %15, align 4
  %826 = srem i32 %825, 4
  %827 = icmp ne i32 %826, 0
  br i1 %827, label %828, label %832

828:                                              ; preds = %824
  %829 = load i32, i32* %15, align 4
  %830 = srem i32 %829, 4
  %831 = sub nsw i32 4, %830
  store i32 %831, i32* %16, align 4
  br label %832

832:                                              ; preds = %828, %824
  %833 = load i32, i32* %12, align 4
  %834 = load i32, i32* %29, align 4
  %835 = load i32, i32* %15, align 4
  %836 = add nsw i32 %834, %835
  %837 = load i32, i32* %16, align 4
  %838 = add nsw i32 %836, %837
  %839 = icmp slt i32 %833, %838
  br i1 %839, label %840, label %841

840:                                              ; preds = %832
  br label %909

841:                                              ; preds = %832
  %842 = load i32*, i32** %20, align 8
  %843 = load i32, i32* %842, align 4
  %844 = load i32, i32* %29, align 4
  %845 = load i32, i32* %15, align 4
  %846 = add nsw i32 %844, %845
  %847 = load i32, i32* %16, align 4
  %848 = add nsw i32 %846, %847
  %849 = call i32 @ND_TCHECK2(i32 %843, i32 %848)
  %850 = load i32, i32* %8, align 4
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %852, label %860

852:                                              ; preds = %841
  %853 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %854 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %855 = load i32*, i32** %20, align 8
  %856 = call i32 @ip6addr_string(%struct.TYPE_11__* %854, i32* %855)
  %857 = sext i32 %856 to i64
  %858 = inttoptr i64 %857 to %struct.TYPE_11__*
  %859 = call i32 @ND_PRINT(%struct.TYPE_11__* %858)
  br label %868

860:                                              ; preds = %841
  %861 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %862 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %863 = load i32*, i32** %20, align 8
  %864 = call i32 @ipaddr_string(%struct.TYPE_11__* %862, i32* %863)
  %865 = sext i32 %864 to i64
  %866 = inttoptr i64 %865 to %struct.TYPE_11__*
  %867 = call i32 @ND_PRINT(%struct.TYPE_11__* %866)
  br label %868

868:                                              ; preds = %860, %852
  %869 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %870 = load i32*, i32** %20, align 8
  %871 = load i32, i32* %29, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds i32, i32* %870, i64 %872
  %874 = load i32, i32* %15, align 4
  %875 = call i32 @fn_printn(%struct.TYPE_11__* %869, i32* %873, i32 %874, i32* null)
  %876 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %877 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([2 x i8]* @.str.23 to %struct.TYPE_11__*))
  %878 = load i32, i32* %29, align 4
  %879 = load i32, i32* %15, align 4
  %880 = add nsw i32 %878, %879
  %881 = load i32, i32* %16, align 4
  %882 = add nsw i32 %880, %881
  %883 = load i32*, i32** %20, align 8
  %884 = sext i32 %882 to i64
  %885 = getelementptr inbounds i32, i32* %883, i64 %884
  store i32* %885, i32** %20, align 8
  %886 = load i32, i32* %29, align 4
  %887 = load i32, i32* %15, align 4
  %888 = add nsw i32 %886, %887
  %889 = load i32, i32* %16, align 4
  %890 = add nsw i32 %888, %889
  %891 = load i32, i32* %12, align 4
  %892 = sub nsw i32 %891, %890
  store i32 %892, i32* %12, align 4
  br label %893

893:                                              ; preds = %868
  %894 = load i32, i32* %31, align 4
  %895 = add nsw i32 %894, 1
  store i32 %895, i32* %31, align 4
  br label %780

896:                                              ; preds = %823, %787, %780
  br label %903

897:                                              ; preds = %240
  br label %898

898:                                              ; preds = %240, %897
  %899 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %900 = load i32*, i32** %20, align 8
  %901 = load i32, i32* %12, align 4
  %902 = call i32 @print_unknown_data(%struct.TYPE_11__* %899, i32* %900, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i32 %901)
  br label %903

903:                                              ; preds = %898, %896, %774, %735, %477, %436, %378
  %904 = load i32, i32* %11, align 4
  %905 = load i32*, i32** %19, align 8
  %906 = sext i32 %904 to i64
  %907 = getelementptr inbounds i32, i32* %905, i64 %906
  store i32* %907, i32** %19, align 8
  br label %74

908:                                              ; preds = %74
  br label %912

909:                                              ; preds = %840, %739, %433, %425, %414, %383, %367, %359, %348, %246, %37
  %910 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %911 = call i32 @ND_PRINT(%struct.TYPE_11__* bitcast ([8 x i8]* @.str.24 to %struct.TYPE_11__*))
  br label %912

912:                                              ; preds = %909, %908, %232, %192, %154, %114, %72
  ret void
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_11__*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @ip6addr_string(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ME_TO_DOUBLE(i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @OLSR_EXTRACT_LINK_TYPE(i32) #1

declare dso_local i32 @OLSR_EXTRACT_NEIGHBOR_TYPE(i32) #1

declare dso_local i32 @olsr_print_neighbor(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @olsr_print_lq_neighbor6(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @olsr_print_lq_neighbor4(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @mask62plen(i32) #1

declare dso_local i32 @deserialize_gw_speed(i32) #1

declare dso_local i32 @mask2plen(i32) #1

declare dso_local i32 @EXTRACT_32BITS(i32*) #1

declare dso_local i32 @fn_printn(%struct.TYPE_11__*, i32*, i32, i32*) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_11__*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
