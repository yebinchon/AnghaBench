; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_arp_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-arp.c_arp_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32 }
%struct.arp_pkthdr = type { i32 }

@LINKADDR_FRELAY = common dso_local global i32 0, align 4
@LINKADDR_ETHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@tstr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"ARP, \00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@ETHERTYPE_TRAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"%s (len %u), %s (len %u)\00", align 1
@arphrd_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown Hardware (%u)\00", align 1
@ethertype_values = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Unknown Protocol (0x%04x)\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s%s \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@arpop_values = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"who-has \00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" (%s)\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c" tell \00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" is-at %s\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"who-is %s tell %s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"%s at \00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c", length %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arp_print(%struct.TYPE_8__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.arp_pkthdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.arp_pkthdr*
  store %struct.arp_pkthdr* %15, %struct.arp_pkthdr** %9, align 8
  %16 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %17 = getelementptr inbounds %struct.arp_pkthdr, %struct.arp_pkthdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ND_TCHECK(i32 %18)
  %20 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %21 = call i32 @HRD(%struct.arp_pkthdr* %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %23 = call i32 @PRO(%struct.arp_pkthdr* %22)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %25 = call i32 @OP(%struct.arp_pkthdr* %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  switch i32 %26, label %35 [
    i32 135, label %27
    i32 134, label %33
  ]

27:                                               ; preds = %4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @atmarp_print(%struct.TYPE_8__* %28, i32* %29, i32 %30, i32 %31)
  br label %257

33:                                               ; preds = %4
  %34 = load i32, i32* @LINKADDR_FRELAY, align 4
  store i32 %34, i32* %13, align 4
  br label %37

35:                                               ; preds = %4
  %36 = load i32, i32* @LINKADDR_ETHER, align 4
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %39 = call i32* @TPA(%struct.arp_pkthdr* %38)
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %42 = call i32 @PROTO_LEN(%struct.arp_pkthdr* %41)
  %43 = call i32 @ND_TTEST2(i32 %40, i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = load i32, i32* @tstr, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.TYPE_8__*
  %50 = call i32 @ND_PRINT(%struct.TYPE_8__* %49)
  %51 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %52 = bitcast %struct.arp_pkthdr* %51 to i32*
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @ND_DEFAULTPRINT(i32* %52, i32 %53)
  br label %257

55:                                               ; preds = %37
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([6 x i8]* @.str.1 to %struct.TYPE_8__*))
  br label %63

63:                                               ; preds = %60, %55
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @ETHERTYPE_IP, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @ETHERTYPE_TRAIL, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %73 = call i32 @PROTO_LEN(%struct.arp_pkthdr* %72)
  %74 = icmp ne i32 %73, 4
  br i1 %74, label %84, label %75

75:                                               ; preds = %71
  %76 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %77 = call i64 @HRD_LEN(%struct.arp_pkthdr* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %105

84:                                               ; preds = %79, %75, %71, %67
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %86 = load i32, i32* @arphrd_values, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @tok2str(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %90 = call i64 @HRD_LEN(%struct.arp_pkthdr* %89)
  %91 = load i32, i32* @ethertype_values, align 4
  %92 = load i32, i32* %10, align 4
  %93 = call i32 @tok2str(i32 %91, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %95 = call i32 @PROTO_LEN(%struct.arp_pkthdr* %94)
  %96 = sext i32 %95 to i64
  %97 = inttoptr i64 %96 to %struct.TYPE_8__*
  %98 = call i32 @ND_PRINT(%struct.TYPE_8__* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %84
  br label %245

104:                                              ; preds = %84
  br label %105

105:                                              ; preds = %104, %79
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.7, i64 0, i64 0)
  %113 = load i32, i32* @arpop_values, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @tok2str(i32 %113, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %114)
  %116 = sext i32 %115 to i64
  %117 = inttoptr i64 %116 to %struct.TYPE_8__*
  %118 = call i32 @ND_PRINT(%struct.TYPE_8__* %117)
  %119 = load i32, i32* %12, align 4
  switch i32 %119, label %239 [
    i32 130, label %120
    i32 131, label %153
    i32 128, label %169
    i32 129, label %188
    i32 132, label %204
    i32 133, label %223
  ]

120:                                              ; preds = %105
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %122 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([9 x i8]* @.str.9 to %struct.TYPE_8__*))
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @tpaddr_print_ip(%struct.TYPE_8__* %123, %struct.arp_pkthdr* %124, i32 %125)
  %127 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %128 = call i64 @THA(%struct.arp_pkthdr* %127)
  %129 = inttoptr i64 %128 to i32*
  %130 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %131 = call i64 @HRD_LEN(%struct.arp_pkthdr* %130)
  %132 = call i32 @isnonzero(i32* %129, i64 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %146

134:                                              ; preds = %120
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %137 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %138 = call i64 @THA(%struct.arp_pkthdr* %137)
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %141 = call i64 @HRD_LEN(%struct.arp_pkthdr* %140)
  %142 = call i32 @linkaddr_string(%struct.TYPE_8__* %136, i64 %138, i32 %139, i64 %141)
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to %struct.TYPE_8__*
  %145 = call i32 @ND_PRINT(%struct.TYPE_8__* %144)
  br label %146

146:                                              ; preds = %134, %120
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = call i32 @ND_PRINT(%struct.TYPE_8__* bitcast ([7 x i8]* @.str.11 to %struct.TYPE_8__*))
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %150 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @spaddr_print_ip(%struct.TYPE_8__* %149, %struct.arp_pkthdr* %150, i32 %151)
  br label %244

153:                                              ; preds = %105
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %155 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @spaddr_print_ip(%struct.TYPE_8__* %154, %struct.arp_pkthdr* %155, i32 %156)
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %160 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %161 = call i64 @SHA(%struct.arp_pkthdr* %160)
  %162 = load i32, i32* %13, align 4
  %163 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %164 = call i64 @HRD_LEN(%struct.arp_pkthdr* %163)
  %165 = call i32 @linkaddr_string(%struct.TYPE_8__* %159, i64 %161, i32 %162, i64 %164)
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to %struct.TYPE_8__*
  %168 = call i32 @ND_PRINT(%struct.TYPE_8__* %167)
  br label %244

169:                                              ; preds = %105
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %172 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %173 = call i64 @THA(%struct.arp_pkthdr* %172)
  %174 = load i32, i32* %13, align 4
  %175 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %176 = call i64 @HRD_LEN(%struct.arp_pkthdr* %175)
  %177 = call i32 @linkaddr_string(%struct.TYPE_8__* %171, i64 %173, i32 %174, i64 %176)
  %178 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %179 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %180 = call i64 @SHA(%struct.arp_pkthdr* %179)
  %181 = load i32, i32* %13, align 4
  %182 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %183 = call i64 @HRD_LEN(%struct.arp_pkthdr* %182)
  %184 = call i32 @linkaddr_string(%struct.TYPE_8__* %178, i64 %180, i32 %181, i64 %183)
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to %struct.TYPE_8__*
  %187 = call i32 @ND_PRINT(%struct.TYPE_8__* %186)
  br label %244

188:                                              ; preds = %105
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %191 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %192 = call i64 @THA(%struct.arp_pkthdr* %191)
  %193 = load i32, i32* %13, align 4
  %194 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %195 = call i64 @HRD_LEN(%struct.arp_pkthdr* %194)
  %196 = call i32 @linkaddr_string(%struct.TYPE_8__* %190, i64 %192, i32 %193, i64 %195)
  %197 = sext i32 %196 to i64
  %198 = inttoptr i64 %197 to %struct.TYPE_8__*
  %199 = call i32 @ND_PRINT(%struct.TYPE_8__* %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %201 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @tpaddr_print_ip(%struct.TYPE_8__* %200, %struct.arp_pkthdr* %201, i32 %202)
  br label %244

204:                                              ; preds = %105
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %207 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %208 = call i64 @THA(%struct.arp_pkthdr* %207)
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %211 = call i64 @HRD_LEN(%struct.arp_pkthdr* %210)
  %212 = call i32 @linkaddr_string(%struct.TYPE_8__* %206, i64 %208, i32 %209, i64 %211)
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %214 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %215 = call i64 @SHA(%struct.arp_pkthdr* %214)
  %216 = load i32, i32* %13, align 4
  %217 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %218 = call i64 @HRD_LEN(%struct.arp_pkthdr* %217)
  %219 = call i32 @linkaddr_string(%struct.TYPE_8__* %213, i64 %215, i32 %216, i64 %218)
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to %struct.TYPE_8__*
  %222 = call i32 @ND_PRINT(%struct.TYPE_8__* %221)
  br label %244

223:                                              ; preds = %105
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %226 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %227 = call i64 @SHA(%struct.arp_pkthdr* %226)
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %230 = call i64 @HRD_LEN(%struct.arp_pkthdr* %229)
  %231 = call i32 @linkaddr_string(%struct.TYPE_8__* %225, i64 %227, i32 %228, i64 %230)
  %232 = sext i32 %231 to i64
  %233 = inttoptr i64 %232 to %struct.TYPE_8__*
  %234 = call i32 @ND_PRINT(%struct.TYPE_8__* %233)
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %236 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @spaddr_print_ip(%struct.TYPE_8__* %235, %struct.arp_pkthdr* %236, i32 %237)
  br label %244

239:                                              ; preds = %105
  %240 = load %struct.arp_pkthdr*, %struct.arp_pkthdr** %9, align 8
  %241 = bitcast %struct.arp_pkthdr* %240 to i32*
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @ND_DEFAULTPRINT(i32* %241, i32 %242)
  br label %257

244:                                              ; preds = %223, %204, %188, %169, %153, %146
  br label %245

245:                                              ; preds = %244, %103
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = inttoptr i64 %248 to %struct.TYPE_8__*
  %250 = call i32 @ND_PRINT(%struct.TYPE_8__* %249)
  br label %257

251:                                              ; No predecessors!
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %253 = load i32, i32* @tstr, align 4
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to %struct.TYPE_8__*
  %256 = call i32 @ND_PRINT(%struct.TYPE_8__* %255)
  br label %257

257:                                              ; preds = %251, %245, %239, %45, %27
  ret void
}

declare dso_local i32 @ND_TCHECK(i32) #1

declare dso_local i32 @HRD(%struct.arp_pkthdr*) #1

declare dso_local i32 @PRO(%struct.arp_pkthdr*) #1

declare dso_local i32 @OP(%struct.arp_pkthdr*) #1

declare dso_local i32 @atmarp_print(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @ND_TTEST2(i32, i32) #1

declare dso_local i32* @TPA(%struct.arp_pkthdr*) #1

declare dso_local i32 @PROTO_LEN(%struct.arp_pkthdr*) #1

declare dso_local i32 @ND_PRINT(%struct.TYPE_8__*) #1

declare dso_local i32 @ND_DEFAULTPRINT(i32*, i32) #1

declare dso_local i64 @HRD_LEN(%struct.arp_pkthdr*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @tpaddr_print_ip(%struct.TYPE_8__*, %struct.arp_pkthdr*, i32) #1

declare dso_local i32 @isnonzero(i32*, i64) #1

declare dso_local i64 @THA(%struct.arp_pkthdr*) #1

declare dso_local i32 @linkaddr_string(%struct.TYPE_8__*, i64, i32, i64) #1

declare dso_local i32 @spaddr_print_ip(%struct.TYPE_8__*, %struct.arp_pkthdr*, i32) #1

declare dso_local i64 @SHA(%struct.arp_pkthdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
