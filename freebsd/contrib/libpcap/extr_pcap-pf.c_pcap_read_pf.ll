; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_read_pf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-pf.c_pcap_read_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32*, %struct.TYPE_4__, i32, i64, i64, i64, i32, %struct.pcap_pf* }
%struct.TYPE_4__ = type { i32 }
%struct.pcap_pf = type { i64, i64, i32, i64, i32, i32 }
%struct.pcap_pkthdr = type { i32, i64, i32 }
%struct.enstamp = type { i32, i32, i64, i32, i64 }

@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pf read\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"pf short read (%d)\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"pf short stamplen (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32*)* @pcap_read_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_read_pf(%struct.TYPE_5__* %0, i32 %1, i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i32*, %struct.pcap_pkthdr*, i32*)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pcap_pf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.enstamp*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.pcap_pkthdr, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i32*, %struct.pcap_pkthdr*, i32*)* %2, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 11
  %22 = load %struct.pcap_pf*, %struct.pcap_pf** %21, align 8
  store %struct.pcap_pf* %22, %struct.pcap_pf** %10, align 8
  br label %23

23:                                               ; preds = %68, %4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %90

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 10
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %36, i64 %40
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @read(i32 %32, i8* %41, i64 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %80

48:                                               ; preds = %29
  %49 = load i64, i64* @errno, align 8
  %50 = load i64, i64* @EWOULDBLOCK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %276

53:                                               ; preds = %48
  %54 = load i64, i64* @errno, align 8
  %55 = load i64, i64* @EINVAL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SEEK_CUR, align 4
  %62 = call i64 @lseek(i32 %60, i64 0, i32 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %62, %65
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %57
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 10
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SEEK_SET, align 4
  %73 = call i64 @lseek(i32 %71, i64 0, i32 %72)
  br label %23

74:                                               ; preds = %57, %53
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i64, i64* @errno, align 8
  %79 = call i32 @pcap_fmt_errmsg_for_errno(i32 %77, i32 4, i64 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %276

80:                                               ; preds = %29
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 9
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %12, align 8
  br label %94

90:                                               ; preds = %23
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  store i32* %93, i32** %12, align 8
  br label %94

94:                                               ; preds = %90, %80
  store i32 0, i32* %14, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 8
  %97 = load i64, i64* %96, align 8
  store i64 %97, i64* %18, align 8
  br label %98

98:                                               ; preds = %271, %94
  %99 = load i32, i32* %13, align 4
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %272

101:                                              ; preds = %98
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %101
  %107 = load i32, i32* %14, align 4
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 7
  store i64 0, i64* %111, align 8
  store i32 -2, i32* %5, align 4
  br label %276

112:                                              ; preds = %106
  %113 = load i32, i32* %13, align 4
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 4
  store i32* %116, i32** %118, align 8
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %5, align 4
  br label %276

120:                                              ; preds = %101
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %122, 32
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = call i32 @pcap_snprintf(i32 %127, i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  store i32 -1, i32* %5, align 4
  br label %276

130:                                              ; preds = %120
  %131 = load i32*, i32** %12, align 8
  %132 = bitcast i32* %131 to %struct.enstamp*
  store %struct.enstamp* %132, %struct.enstamp** %17, align 8
  %133 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %134 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sext i32 %135 to i64
  %137 = icmp ne i64 %136, 32
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %143 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @pcap_snprintf(i32 %141, i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  store i32 -1, i32* %5, align 4
  br label %276

146:                                              ; preds = %130
  %147 = load i32*, i32** %12, align 8
  %148 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %149 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %147, i64 %151
  store i32* %152, i32** %11, align 8
  %153 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %154 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %146
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %15, align 4
  br label %165

165:                                              ; preds = %161, %146
  %166 = load i32, i32* %15, align 4
  %167 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %168 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %166, %169
  %171 = call i32 @ENALIGN(i32 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %13, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %13, align 4
  %175 = load i32, i32* %16, align 4
  %176 = load i32*, i32** %12, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %12, align 8
  %179 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %180 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %184 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %183, i32 0, i32 4
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %187 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %189, %185
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %187, align 8
  %192 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %193 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %192, i32 0, i32 2
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %196 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %195, i32 0, i32 0
  store i64 %194, i64* %196, align 8
  %197 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %198 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %165
  %202 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %203 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %206 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %205, i32 0, i32 1
  store i64 %204, i64* %206, align 8
  br label %207

207:                                              ; preds = %201, %165
  %208 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %209 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %208, i32 0, i32 3
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %224, label %212

212:                                              ; preds = %207
  %213 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32*, i32** %11, align 8
  %218 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %219 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %15, align 4
  %222 = call i64 @bpf_filter(i32 %216, i32* %217, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %271

224:                                              ; preds = %212, %207
  %225 = load %struct.pcap_pf*, %struct.pcap_pf** %10, align 8
  %226 = getelementptr inbounds %struct.pcap_pf, %struct.pcap_pf* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 8
  %229 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %230 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 2
  store i32 %231, i32* %232, align 8
  %233 = load %struct.enstamp*, %struct.enstamp** %17, align 8
  %234 = getelementptr inbounds %struct.enstamp, %struct.enstamp* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %18, align 8
  %238 = sub nsw i64 %236, %237
  %239 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 1
  store i64 %238, i64* %239, align 8
  %240 = load i64, i64* %18, align 8
  %241 = load i32*, i32** %11, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 %240
  store i32* %242, i32** %11, align 8
  %243 = load i64, i64* %18, align 8
  %244 = load i32, i32* %15, align 4
  %245 = sext i32 %244 to i64
  %246 = sub nsw i64 %245, %243
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %15, align 4
  %248 = load i32, i32* %15, align 4
  %249 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %19, i32 0, i32 0
  store i32 %248, i32* %249, align 8
  %250 = load i32 (i32*, %struct.pcap_pkthdr*, i32*)*, i32 (i32*, %struct.pcap_pkthdr*, i32*)** %8, align 8
  %251 = load i32*, i32** %9, align 8
  %252 = load i32*, i32** %11, align 8
  %253 = call i32 %250(i32* %251, %struct.pcap_pkthdr* %19, i32* %252)
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %14, align 4
  %256 = load i32, i32* %7, align 4
  %257 = icmp sge i32 %255, %256
  br i1 %257, label %258, label %270

258:                                              ; preds = %224
  %259 = load i32, i32* %7, align 4
  %260 = call i32 @PACKET_COUNT_IS_UNLIMITED(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %270, label %262

262:                                              ; preds = %258
  %263 = load i32, i32* %13, align 4
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 0
  store i32 %263, i32* %265, align 8
  %266 = load i32*, i32** %12, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 4
  store i32* %266, i32** %268, align 8
  %269 = load i32, i32* %14, align 4
  store i32 %269, i32* %5, align 4
  br label %276

270:                                              ; preds = %258, %224
  br label %271

271:                                              ; preds = %270, %212
  br label %98

272:                                              ; preds = %98
  %273 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  store i32 0, i32* %274, align 8
  %275 = load i32, i32* %14, align 4
  store i32 %275, i32* %5, align 4
  br label %276

276:                                              ; preds = %272, %262, %138, %124, %112, %109, %74, %52
  %277 = load i32, i32* %5, align 4
  ret i32 %277
}

declare dso_local i32 @read(i32, i8*, i64) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i32, i32, i64, i8*) #1

declare dso_local i32 @pcap_snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @ENALIGN(i32) #1

declare dso_local i64 @bpf_filter(i32, i32*, i32, i32) #1

declare dso_local i32 @PACKET_COUNT_IS_UNLIMITED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
