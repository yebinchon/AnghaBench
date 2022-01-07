; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bootp.c_rfc1048_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bootp.c_rfc1048_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"\0A\09  Vendor-rfc1048 Extensions\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\0A\09    Magic Cookie 0x%08x\00", align 1
@TAG_PAD = common dso_local global i64 0, align 8
@TAG_END = common dso_local global i64 0, align 8
@TAG_EXTENDED_OPTION = common dso_local global i64 0, align 8
@xtag2str = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"?xT%u\00", align 1
@tag2str = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"?T%u\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"\0A\09    %s Option %u, length %u%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [12 x i8] c", occurs %u\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"[|rfc1048 %u]\00", align 1
@TAG_DHCP_MESSAGE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@dhcp_msg_values = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [13 x i8] c"Unknown (%u)\00", align 1
@TAG_PARM_REQUEST = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"?Option %u\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\0A\09      \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c", \00", align 1
@TAG_EXTENDED_REQUEST = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"(%s:\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%s)\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"%u?\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [24 x i8] c"ERROR: length < 1 bytes\00", align 1
@nbo2str = common dso_local global i32 0, align 4
@oo2str = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [24 x i8] c"ERROR: length < 3 bytes\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"%u/%u \00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@arp2str = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [18 x i8] c"hardware-type %u,\00", align 1
@.str.33 = private unnamed_addr constant [67 x i8] c"\0A\09      %s SubOption %u, length %u: length goes past end of option\00", align 1
@agent_suboption_values = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"\0A\09      %s SubOption %u, length %u: \00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"\0A\09\09\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"ERROR: length < 5 bytes\00", align 1
@.str.38 = private unnamed_addr constant [30 x i8] c"[ERROR: Mask width (%d) > 32]\00", align 1
@.str.39 = private unnamed_addr constant [42 x i8] c"[ERROR: Remaining length (%u) < %u bytes]\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c".0\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"/%d\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c":%s)\00", align 1
@.str.45 = private unnamed_addr constant [24 x i8] c"ERROR: length < 2 bytes\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"instance#%u: \00", align 1
@.str.47 = private unnamed_addr constant [41 x i8] c"ERROR: suboption length must be non-zero\00", align 1
@.str.48 = private unnamed_addr constant [22 x i8] c"ERROR: invalid option\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c", length %d\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"[unknown special tag %u, size %u]\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"\0A\09  trailing data length %u\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"|[rfc1048]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64*)* @rfc1048_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfc1048_print(%struct.TYPE_7__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i64* %1, i64** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([30 x i8]* @.str to %struct.TYPE_7__*))
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = call i32 @EXTRACT_32BITS(i64* %25)
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.TYPE_7__*
  %29 = call i32 @ND_PRINT(%struct.TYPE_7__* %28)
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 4
  store i64* %31, i64** %4, align 8
  br label %32

32:                                               ; preds = %939, %243, %212, %167, %49, %2
  %33 = load i64*, i64** %4, align 8
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @ND_TTEST2(i64 %34, i32 1)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %940

37:                                               ; preds = %32
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %4, align 8
  %40 = load i64, i64* %38, align 8
  store i64 %40, i64* %5, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @TAG_PAD, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %32

50:                                               ; preds = %44, %37
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @TAG_END, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %944

60:                                               ; preds = %54, %50
  %61 = load i64, i64* %5, align 8
  %62 = load i64, i64* @TAG_EXTENDED_OPTION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %60
  %65 = load i64*, i64** %4, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ND_TCHECK2(i64 %67, i32 2)
  %69 = load i64*, i64** %4, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = call i64 @EXTRACT_16BITS(i64* %70)
  store i64 %71, i64* %5, align 8
  %72 = load i32, i32* @xtag2str, align 4
  %73 = load i64, i64* %5, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i8* @tok2str(i32 %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %74)
  store i8* %75, i8** %7, align 8
  br label %81

76:                                               ; preds = %60
  %77 = load i32, i32* @tag2str, align 4
  %78 = load i64, i64* %5, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i8* @tok2str(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  store i8* %80, i8** %7, align 8
  br label %81

81:                                               ; preds = %76, %64
  %82 = load i8*, i8** %7, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %7, align 8
  %84 = load i8, i8* %82, align 1
  store i8 %84, i8* %8, align 1
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @TAG_PAD, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i64, i64* %5, align 8
  %90 = load i64, i64* @TAG_END, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %81
  store i32 0, i32* %6, align 4
  br label %101

93:                                               ; preds = %88
  %94 = load i64*, i64** %4, align 8
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @ND_TCHECK2(i64 %95, i32 1)
  %97 = load i64*, i64** %4, align 8
  %98 = getelementptr inbounds i64, i64* %97, i32 1
  store i64* %98, i64** %4, align 8
  %99 = load i64, i64* %97, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %93, %92
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load i64, i64* %5, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp sgt i32 %106, 0
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %110 = bitcast i8* %109 to %struct.TYPE_7__*
  %111 = call i32 @ND_PRINT(%struct.TYPE_7__* %110)
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @TAG_PAD, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %148

115:                                              ; preds = %101
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp sgt i32 %118, 2
  br i1 %119, label %120, label %148

120:                                              ; preds = %115
  store i32 1, i32* %16, align 4
  br label %121

121:                                              ; preds = %133, %120
  %122 = load i64*, i64** %4, align 8
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @ND_TTEST2(i64 %123, i32 1)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %121
  %127 = load i64*, i64** %4, align 8
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @TAG_PAD, align 8
  %130 = icmp eq i64 %128, %129
  br label %131

131:                                              ; preds = %126, %121
  %132 = phi i1 [ false, %121 ], [ %130, %126 ]
  br i1 %132, label %133, label %138

133:                                              ; preds = %131
  %134 = load i64*, i64** %4, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %4, align 8
  %136 = load i32, i32* %16, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %16, align 4
  br label %121

138:                                              ; preds = %131
  %139 = load i32, i32* %16, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = inttoptr i64 %144 to %struct.TYPE_7__*
  %146 = call i32 @ND_PRINT(%struct.TYPE_7__* %145)
  br label %147

147:                                              ; preds = %141, %138
  br label %148

148:                                              ; preds = %147, %115, %101
  %149 = load i64*, i64** %4, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = call i64 @ND_TTEST2(i64 %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = load i32, i32* %6, align 4
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to %struct.TYPE_7__*
  %159 = call i32 @ND_PRINT(%struct.TYPE_7__* %158)
  br label %944

160:                                              ; preds = %148
  %161 = load i64, i64* %5, align 8
  %162 = load i64, i64* @TAG_DHCP_MESSAGE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i64*, i64** %4, align 8
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  store i64* %169, i64** %4, align 8
  %170 = load i64, i64* %168, align 8
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %13, align 4
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %173 = load i32, i32* @dhcp_msg_values, align 4
  %174 = load i32, i32* %13, align 4
  %175 = call i8* @tok2str(i32 %173, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  %176 = bitcast i8* %175 to %struct.TYPE_7__*
  %177 = call i32 @ND_PRINT(%struct.TYPE_7__* %176)
  br label %32

178:                                              ; preds = %164, %160
  %179 = load i64, i64* %5, align 8
  %180 = load i64, i64* @TAG_PARM_REQUEST, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %213

182:                                              ; preds = %178
  store i32 0, i32* %10, align 4
  br label %183

183:                                              ; preds = %204, %182
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %6, align 4
  %186 = icmp sgt i32 %184, 0
  br i1 %186, label %187, label %212

187:                                              ; preds = %183
  %188 = load i64*, i64** %4, align 8
  %189 = getelementptr inbounds i64, i64* %188, i32 1
  store i64* %189, i64** %4, align 8
  %190 = load i64, i64* %188, align 8
  %191 = trunc i64 %190 to i32
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* @tag2str, align 4
  %193 = load i32, i32* %13, align 4
  %194 = call i8* @tok2str(i32 %192, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32 %193)
  store i8* %194, i8** %7, align 8
  %195 = load i32, i32* %10, align 4
  %196 = srem i32 %195, 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %187
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %200 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.12 to %struct.TYPE_7__*))
  br label %204

201:                                              ; preds = %187
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %203 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.13 to %struct.TYPE_7__*))
  br label %204

204:                                              ; preds = %201, %198
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  %208 = bitcast i8* %207 to %struct.TYPE_7__*
  %209 = call i32 @ND_PRINT(%struct.TYPE_7__* %208)
  %210 = load i32, i32* %10, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %10, align 4
  br label %183

212:                                              ; preds = %183
  br label %32

213:                                              ; preds = %178
  %214 = load i64, i64* %5, align 8
  %215 = load i64, i64* @TAG_EXTENDED_REQUEST, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %244

217:                                              ; preds = %213
  store i32 1, i32* %9, align 4
  br label %218

218:                                              ; preds = %237, %217
  %219 = load i32, i32* %6, align 4
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %243

221:                                              ; preds = %218
  %222 = load i32, i32* %6, align 4
  %223 = sub nsw i32 %222, 2
  store i32 %223, i32* %6, align 4
  %224 = load i64*, i64** %4, align 8
  %225 = call i64 @EXTRACT_16BITS(i64* %224)
  store i64 %225, i64* %12, align 8
  %226 = load i64*, i64** %4, align 8
  %227 = getelementptr inbounds i64, i64* %226, i64 2
  store i64* %227, i64** %4, align 8
  %228 = load i32, i32* @xtag2str, align 4
  %229 = load i64, i64* %12, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i8* @tok2str(i32 %228, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %230)
  store i8* %231, i8** %7, align 8
  %232 = load i32, i32* %9, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %221
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %236 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.14 to %struct.TYPE_7__*))
  br label %237

237:                                              ; preds = %234, %221
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %239 = load i8*, i8** %7, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = bitcast i8* %240 to %struct.TYPE_7__*
  %242 = call i32 @ND_PRINT(%struct.TYPE_7__* %241)
  store i32 0, i32* %9, align 4
  br label %218

243:                                              ; preds = %218
  br label %32

244:                                              ; preds = %213
  %245 = load i8, i8* %8, align 1
  %246 = sext i8 %245 to i32
  %247 = icmp eq i32 %246, 63
  br i1 %247, label %248, label %261

248:                                              ; preds = %244
  %249 = load i32, i32* %6, align 4
  %250 = and i32 %249, 1
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i8 98, i8* %8, align 1
  br label %260

253:                                              ; preds = %248
  %254 = load i32, i32* %6, align 4
  %255 = and i32 %254, 2
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %253
  store i8 115, i8* %8, align 1
  br label %259

258:                                              ; preds = %253
  store i8 108, i8* %8, align 1
  br label %259

259:                                              ; preds = %258, %257
  br label %260

260:                                              ; preds = %259, %252
  br label %261

261:                                              ; preds = %260, %244
  store i32 1, i32* %9, align 4
  %262 = load i8, i8* %8, align 1
  %263 = sext i8 %262 to i32
  switch i32 %263, label %434 [
    i32 97, label %264
    i32 105, label %285
    i32 108, label %285
    i32 76, label %285
    i32 112, label %336
    i32 115, label %377
    i32 66, label %402
    i32 98, label %433
    i32 120, label %433
    i32 36, label %472
  ]

264:                                              ; preds = %261
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %266 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %268 = load i64*, i64** %4, align 8
  %269 = load i32, i32* %6, align 4
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @fn_printn(%struct.TYPE_7__* %267, i64* %268, i32 %269, i32 %272)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %278

275:                                              ; preds = %264
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %277 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  br label %941

278:                                              ; preds = %264
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %280 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %281 = load i32, i32* %6, align 4
  %282 = load i64*, i64** %4, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  store i64* %284, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %926

285:                                              ; preds = %261, %261, %261
  br label %286

286:                                              ; preds = %328, %285
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = icmp uge i64 %288, 4
  br i1 %289, label %290, label %335

290:                                              ; preds = %286
  %291 = load i32, i32* %9, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %295 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i64*, i64** %4, align 8
  %298 = call i32 @EXTRACT_32BITS(i64* %297)
  store i32 %298, i32* %11, align 4
  %299 = load i8, i8* %8, align 1
  %300 = sext i8 %299 to i32
  %301 = icmp eq i32 %300, 105
  br i1 %301, label %302, label %311

302:                                              ; preds = %296
  %303 = load i32, i32* %11, align 4
  %304 = call i32 @htonl(i32 %303)
  store i32 %304, i32* %11, align 4
  %305 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %307 = call i32 @ipaddr_string(%struct.TYPE_7__* %306, i32* %11)
  %308 = sext i32 %307 to i64
  %309 = inttoptr i64 %308 to %struct.TYPE_7__*
  %310 = call i32 @ND_PRINT(%struct.TYPE_7__* %309)
  br label %328

311:                                              ; preds = %296
  %312 = load i8, i8* %8, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 76
  br i1 %314, label %315, label %321

315:                                              ; preds = %311
  %316 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %317 = load i32, i32* %11, align 4
  %318 = sext i32 %317 to i64
  %319 = inttoptr i64 %318 to %struct.TYPE_7__*
  %320 = call i32 @ND_PRINT(%struct.TYPE_7__* %319)
  br label %327

321:                                              ; preds = %311
  %322 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %323 = load i32, i32* %11, align 4
  %324 = sext i32 %323 to i64
  %325 = inttoptr i64 %324 to %struct.TYPE_7__*
  %326 = call i32 @ND_PRINT(%struct.TYPE_7__* %325)
  br label %327

327:                                              ; preds = %321, %315
  br label %328

328:                                              ; preds = %327, %302
  %329 = load i64*, i64** %4, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 4
  store i64* %330, i64** %4, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = sub i64 %332, 4
  %334 = trunc i64 %333 to i32
  store i32 %334, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %286

335:                                              ; preds = %286
  br label %926

336:                                              ; preds = %261
  br label %337

337:                                              ; preds = %347, %336
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = icmp uge i64 %339, 8
  br i1 %340, label %341, label %376

341:                                              ; preds = %337
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %347, label %344

344:                                              ; preds = %341
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %346 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %347

347:                                              ; preds = %344, %341
  %348 = bitcast i32* %11 to i8*
  %349 = load i64*, i64** %4, align 8
  %350 = bitcast i64* %349 to i8*
  %351 = call i32 @memcpy(i8* %348, i8* %350, i32 4)
  %352 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %354 = call i32 @ipaddr_string(%struct.TYPE_7__* %353, i32* %11)
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to %struct.TYPE_7__*
  %357 = call i32 @ND_PRINT(%struct.TYPE_7__* %356)
  %358 = load i64*, i64** %4, align 8
  %359 = getelementptr inbounds i64, i64* %358, i64 4
  store i64* %359, i64** %4, align 8
  %360 = bitcast i32* %11 to i8*
  %361 = load i64*, i64** %4, align 8
  %362 = bitcast i64* %361 to i8*
  %363 = call i32 @memcpy(i8* %360, i8* %362, i32 4)
  %364 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %365 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %366 = call i32 @ipaddr_string(%struct.TYPE_7__* %365, i32* %11)
  %367 = sext i32 %366 to i64
  %368 = inttoptr i64 %367 to %struct.TYPE_7__*
  %369 = call i32 @ND_PRINT(%struct.TYPE_7__* %368)
  %370 = load i64*, i64** %4, align 8
  %371 = getelementptr inbounds i64, i64* %370, i64 4
  store i64* %371, i64** %4, align 8
  %372 = load i32, i32* %6, align 4
  %373 = sext i32 %372 to i64
  %374 = sub i64 %373, 8
  %375 = trunc i64 %374 to i32
  store i32 %375, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %337

376:                                              ; preds = %337
  br label %926

377:                                              ; preds = %261
  br label %378

378:                                              ; preds = %388, %377
  %379 = load i32, i32* %6, align 4
  %380 = sext i32 %379 to i64
  %381 = icmp uge i64 %380, 8
  br i1 %381, label %382, label %401

382:                                              ; preds = %378
  %383 = load i32, i32* %9, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %388, label %385

385:                                              ; preds = %382
  %386 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %387 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %388

388:                                              ; preds = %385, %382
  %389 = load i64*, i64** %4, align 8
  %390 = call i64 @EXTRACT_16BITS(i64* %389)
  store i64 %390, i64* %12, align 8
  %391 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %392 = load i64, i64* %12, align 8
  %393 = inttoptr i64 %392 to %struct.TYPE_7__*
  %394 = call i32 @ND_PRINT(%struct.TYPE_7__* %393)
  %395 = load i64*, i64** %4, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 8
  store i64* %396, i64** %4, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sext i32 %397 to i64
  %399 = sub i64 %398, 8
  %400 = trunc i64 %399 to i32
  store i32 %400, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %378

401:                                              ; preds = %378
  br label %926

402:                                              ; preds = %261
  br label %403

403:                                              ; preds = %427, %402
  %404 = load i32, i32* %6, align 4
  %405 = icmp sgt i32 %404, 0
  br i1 %405, label %406, label %432

406:                                              ; preds = %403
  %407 = load i32, i32* %9, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %412, label %409

409:                                              ; preds = %406
  %410 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %411 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %412

412:                                              ; preds = %409, %406
  %413 = load i64*, i64** %4, align 8
  %414 = load i64, i64* %413, align 8
  switch i64 %414, label %421 [
    i64 0, label %415
    i64 1, label %418
  ]

415:                                              ; preds = %412
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %417 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.21 to %struct.TYPE_7__*))
  br label %427

418:                                              ; preds = %412
  %419 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %420 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.22 to %struct.TYPE_7__*))
  br label %427

421:                                              ; preds = %412
  %422 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %423 = load i64*, i64** %4, align 8
  %424 = load i64, i64* %423, align 8
  %425 = inttoptr i64 %424 to %struct.TYPE_7__*
  %426 = call i32 @ND_PRINT(%struct.TYPE_7__* %425)
  br label %427

427:                                              ; preds = %421, %418, %415
  %428 = load i64*, i64** %4, align 8
  %429 = getelementptr inbounds i64, i64* %428, i32 1
  store i64* %429, i64** %4, align 8
  %430 = load i32, i32* %6, align 4
  %431 = add nsw i32 %430, -1
  store i32 %431, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %403

432:                                              ; preds = %403
  br label %926

433:                                              ; preds = %261, %261
  br label %434

434:                                              ; preds = %261, %433
  br label %435

435:                                              ; preds = %466, %434
  %436 = load i32, i32* %6, align 4
  %437 = icmp sgt i32 %436, 0
  br i1 %437, label %438, label %471

438:                                              ; preds = %435
  %439 = load i32, i32* %9, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %450, label %441

441:                                              ; preds = %438
  %442 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %443 = load i8, i8* %8, align 1
  %444 = sext i8 %443 to i32
  %445 = icmp eq i32 %444, 120
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i64 0, i64 0)
  %448 = bitcast i8* %447 to %struct.TYPE_7__*
  %449 = call i32 @ND_PRINT(%struct.TYPE_7__* %448)
  br label %450

450:                                              ; preds = %441, %438
  %451 = load i8, i8* %8, align 1
  %452 = sext i8 %451 to i32
  %453 = icmp eq i32 %452, 120
  br i1 %453, label %454, label %460

454:                                              ; preds = %450
  %455 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %456 = load i64*, i64** %4, align 8
  %457 = load i64, i64* %456, align 8
  %458 = inttoptr i64 %457 to %struct.TYPE_7__*
  %459 = call i32 @ND_PRINT(%struct.TYPE_7__* %458)
  br label %466

460:                                              ; preds = %450
  %461 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %462 = load i64*, i64** %4, align 8
  %463 = load i64, i64* %462, align 8
  %464 = inttoptr i64 %463 to %struct.TYPE_7__*
  %465 = call i32 @ND_PRINT(%struct.TYPE_7__* %464)
  br label %466

466:                                              ; preds = %460, %454
  %467 = load i64*, i64** %4, align 8
  %468 = getelementptr inbounds i64, i64* %467, i32 1
  store i64* %468, i64** %4, align 8
  %469 = load i32, i32* %6, align 4
  %470 = add nsw i32 %469, -1
  store i32 %470, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %435

471:                                              ; preds = %435
  br label %926

472:                                              ; preds = %261
  %473 = load i64, i64* %5, align 8
  switch i64 %473, label %914 [
    i64 130, label %474
    i64 129, label %493
    i64 132, label %512
    i64 131, label %579
    i64 135, label %643
    i64 134, label %711
    i64 133, label %711
    i64 128, label %834
  ]

474:                                              ; preds = %472
  %475 = load i32, i32* %6, align 4
  %476 = icmp slt i32 %475, 1
  br i1 %476, label %477, label %480

477:                                              ; preds = %474
  %478 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %479 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.27 to %struct.TYPE_7__*))
  br label %925

480:                                              ; preds = %474
  %481 = load i64*, i64** %4, align 8
  %482 = getelementptr inbounds i64, i64* %481, i32 1
  store i64* %482, i64** %4, align 8
  %483 = load i64, i64* %481, align 8
  store i64 %483, i64* %5, align 8
  %484 = load i32, i32* %6, align 4
  %485 = add nsw i32 %484, -1
  store i32 %485, i32* %6, align 4
  %486 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %487 = load i32, i32* @nbo2str, align 4
  %488 = load i64, i64* %5, align 8
  %489 = trunc i64 %488 to i32
  %490 = call i8* @tok2str(i32 %487, i8* null, i32 %489)
  %491 = bitcast i8* %490 to %struct.TYPE_7__*
  %492 = call i32 @ND_PRINT(%struct.TYPE_7__* %491)
  br label %925

493:                                              ; preds = %472
  %494 = load i32, i32* %6, align 4
  %495 = icmp slt i32 %494, 1
  br i1 %495, label %496, label %499

496:                                              ; preds = %493
  %497 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %498 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.27 to %struct.TYPE_7__*))
  br label %925

499:                                              ; preds = %493
  %500 = load i64*, i64** %4, align 8
  %501 = getelementptr inbounds i64, i64* %500, i32 1
  store i64* %501, i64** %4, align 8
  %502 = load i64, i64* %500, align 8
  store i64 %502, i64* %5, align 8
  %503 = load i32, i32* %6, align 4
  %504 = add nsw i32 %503, -1
  store i32 %504, i32* %6, align 4
  %505 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %506 = load i32, i32* @oo2str, align 4
  %507 = load i64, i64* %5, align 8
  %508 = trunc i64 %507 to i32
  %509 = call i8* @tok2str(i32 %506, i8* null, i32 %508)
  %510 = bitcast i8* %509 to %struct.TYPE_7__*
  %511 = call i32 @ND_PRINT(%struct.TYPE_7__* %510)
  br label %925

512:                                              ; preds = %472
  %513 = load i32, i32* %6, align 4
  %514 = icmp slt i32 %513, 3
  br i1 %514, label %515, label %522

515:                                              ; preds = %512
  %516 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %517 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.28 to %struct.TYPE_7__*))
  %518 = load i32, i32* %6, align 4
  %519 = load i64*, i64** %4, align 8
  %520 = sext i32 %518 to i64
  %521 = getelementptr inbounds i64, i64* %519, i64 %520
  store i64* %521, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

522:                                              ; preds = %512
  %523 = load i64*, i64** %4, align 8
  %524 = load i64, i64* %523, align 8
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %534

526:                                              ; preds = %522
  %527 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %528 = load i64*, i64** %4, align 8
  %529 = load i64, i64* %528, align 8
  %530 = call i32 @client_fqdn_flags(i64 %529)
  %531 = sext i32 %530 to i64
  %532 = inttoptr i64 %531 to %struct.TYPE_7__*
  %533 = call i32 @ND_PRINT(%struct.TYPE_7__* %532)
  br label %534

534:                                              ; preds = %526, %522
  %535 = load i64*, i64** %4, align 8
  %536 = getelementptr inbounds i64, i64* %535, i32 1
  store i64* %536, i64** %4, align 8
  %537 = load i64*, i64** %4, align 8
  %538 = load i64, i64* %537, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %545, label %540

540:                                              ; preds = %534
  %541 = load i64*, i64** %4, align 8
  %542 = getelementptr inbounds i64, i64* %541, i64 1
  %543 = load i64, i64* %542, align 8
  %544 = icmp ne i64 %543, 0
  br i1 %544, label %545, label %554

545:                                              ; preds = %540, %534
  %546 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %547 = load i64*, i64** %4, align 8
  %548 = load i64, i64* %547, align 8
  %549 = load i64*, i64** %4, align 8
  %550 = getelementptr inbounds i64, i64* %549, i64 1
  %551 = load i64, i64* %550, align 8
  %552 = inttoptr i64 %551 to %struct.TYPE_7__*
  %553 = call i32 @ND_PRINT(%struct.TYPE_7__* %552)
  br label %554

554:                                              ; preds = %545, %540
  %555 = load i64*, i64** %4, align 8
  %556 = getelementptr inbounds i64, i64* %555, i64 2
  store i64* %556, i64** %4, align 8
  %557 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %558 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %559 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %560 = load i64*, i64** %4, align 8
  %561 = load i32, i32* %6, align 4
  %562 = sub nsw i32 %561, 3
  %563 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %564 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %563, i32 0, i32 1
  %565 = load i32, i32* %564, align 4
  %566 = call i32 @fn_printn(%struct.TYPE_7__* %559, i64* %560, i32 %562, i32 %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %554
  %569 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %570 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  br label %941

571:                                              ; preds = %554
  %572 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %573 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %574 = load i32, i32* %6, align 4
  %575 = sub nsw i32 %574, 3
  %576 = load i64*, i64** %4, align 8
  %577 = sext i32 %575 to i64
  %578 = getelementptr inbounds i64, i64* %576, i64 %577
  store i64* %578, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

579:                                              ; preds = %472
  %580 = load i32, i32* %6, align 4
  %581 = icmp slt i32 %580, 1
  br i1 %581, label %582, label %585

582:                                              ; preds = %579
  %583 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %584 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.27 to %struct.TYPE_7__*))
  br label %925

585:                                              ; preds = %579
  %586 = load i64*, i64** %4, align 8
  %587 = getelementptr inbounds i64, i64* %586, i32 1
  store i64* %587, i64** %4, align 8
  %588 = load i64, i64* %586, align 8
  %589 = trunc i64 %588 to i32
  store i32 %589, i32* %17, align 4
  %590 = load i32, i32* %6, align 4
  %591 = add nsw i32 %590, -1
  store i32 %591, i32* %6, align 4
  %592 = load i32, i32* %17, align 4
  %593 = icmp eq i32 %592, 0
  br i1 %593, label %594, label %615

594:                                              ; preds = %585
  %595 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %596 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %597 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %598 = load i64*, i64** %4, align 8
  %599 = load i32, i32* %6, align 4
  %600 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %601 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %600, i32 0, i32 1
  %602 = load i32, i32* %601, align 4
  %603 = call i32 @fn_printn(%struct.TYPE_7__* %597, i64* %598, i32 %599, i32 %602)
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %608

605:                                              ; preds = %594
  %606 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %607 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  br label %941

608:                                              ; preds = %594
  %609 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %610 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %611 = load i32, i32* %6, align 4
  %612 = load i64*, i64** %4, align 8
  %613 = sext i32 %611 to i64
  %614 = getelementptr inbounds i64, i64* %612, i64 %613
  store i64* %614, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

615:                                              ; preds = %585
  %616 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %617 = load i32, i32* @arp2str, align 4
  %618 = load i32, i32* %17, align 4
  %619 = call i8* @tok2str(i32 %617, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.32, i64 0, i64 0), i32 %618)
  %620 = bitcast i8* %619 to %struct.TYPE_7__*
  %621 = call i32 @ND_PRINT(%struct.TYPE_7__* %620)
  br label %622

622:                                              ; preds = %631, %615
  %623 = load i32, i32* %6, align 4
  %624 = icmp sgt i32 %623, 0
  br i1 %624, label %625, label %641

625:                                              ; preds = %622
  %626 = load i32, i32* %9, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %631, label %628

628:                                              ; preds = %625
  %629 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %630 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.24 to %struct.TYPE_7__*))
  br label %631

631:                                              ; preds = %628, %625
  %632 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %633 = load i64*, i64** %4, align 8
  %634 = load i64, i64* %633, align 8
  %635 = inttoptr i64 %634 to %struct.TYPE_7__*
  %636 = call i32 @ND_PRINT(%struct.TYPE_7__* %635)
  %637 = load i64*, i64** %4, align 8
  %638 = getelementptr inbounds i64, i64* %637, i32 1
  store i64* %638, i64** %4, align 8
  %639 = load i32, i32* %6, align 4
  %640 = add nsw i32 %639, -1
  store i32 %640, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %622

641:                                              ; preds = %622
  br label %642

642:                                              ; preds = %641
  br label %925

643:                                              ; preds = %472
  br label %644

644:                                              ; preds = %702, %643
  %645 = load i32, i32* %6, align 4
  %646 = icmp sge i32 %645, 2
  br i1 %646, label %647, label %710

647:                                              ; preds = %644
  %648 = load i64*, i64** %4, align 8
  %649 = getelementptr inbounds i64, i64* %648, i32 1
  store i64* %649, i64** %4, align 8
  %650 = load i64, i64* %648, align 8
  %651 = trunc i64 %650 to i32
  store i32 %651, i32* %14, align 4
  %652 = load i64*, i64** %4, align 8
  %653 = getelementptr inbounds i64, i64* %652, i32 1
  store i64* %653, i64** %4, align 8
  %654 = load i64, i64* %652, align 8
  %655 = trunc i64 %654 to i32
  store i32 %655, i32* %15, align 4
  %656 = load i32, i32* %6, align 4
  %657 = sub nsw i32 %656, 2
  store i32 %657, i32* %6, align 4
  %658 = load i32, i32* %15, align 4
  %659 = load i32, i32* %6, align 4
  %660 = icmp sgt i32 %658, %659
  br i1 %660, label %661, label %675

661:                                              ; preds = %647
  %662 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %663 = load i32, i32* @agent_suboption_values, align 4
  %664 = load i32, i32* %14, align 4
  %665 = call i8* @tok2str(i32 %663, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 %664)
  %666 = load i32, i32* %14, align 4
  %667 = load i32, i32* %15, align 4
  %668 = sext i32 %667 to i64
  %669 = inttoptr i64 %668 to %struct.TYPE_7__*
  %670 = call i32 @ND_PRINT(%struct.TYPE_7__* %669)
  %671 = load i32, i32* %6, align 4
  %672 = load i64*, i64** %4, align 8
  %673 = sext i32 %671 to i64
  %674 = getelementptr inbounds i64, i64* %672, i64 %673
  store i64* %674, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %710

675:                                              ; preds = %647
  %676 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %677 = load i32, i32* @agent_suboption_values, align 4
  %678 = load i32, i32* %14, align 4
  %679 = call i8* @tok2str(i32 %677, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i64 0, i64 0), i32 %678)
  %680 = load i32, i32* %14, align 4
  %681 = load i32, i32* %15, align 4
  %682 = sext i32 %681 to i64
  %683 = inttoptr i64 %682 to %struct.TYPE_7__*
  %684 = call i32 @ND_PRINT(%struct.TYPE_7__* %683)
  %685 = load i32, i32* %14, align 4
  switch i32 %685, label %697 [
    i32 138, label %686
    i32 137, label %686
    i32 136, label %686
  ]

686:                                              ; preds = %675, %675, %675
  %687 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %688 = load i64*, i64** %4, align 8
  %689 = load i32, i32* %15, align 4
  %690 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %691 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %690, i32 0, i32 1
  %692 = load i32, i32* %691, align 4
  %693 = call i32 @fn_printn(%struct.TYPE_7__* %687, i64* %688, i32 %689, i32 %692)
  %694 = icmp ne i32 %693, 0
  br i1 %694, label %695, label %696

695:                                              ; preds = %686
  br label %941

696:                                              ; preds = %686
  br label %702

697:                                              ; preds = %675
  %698 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %699 = load i64*, i64** %4, align 8
  %700 = load i32, i32* %15, align 4
  %701 = call i32 @print_unknown_data(%struct.TYPE_7__* %698, i64* %699, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0), i32 %700)
  br label %702

702:                                              ; preds = %697, %696
  %703 = load i32, i32* %15, align 4
  %704 = load i32, i32* %6, align 4
  %705 = sub nsw i32 %704, %703
  store i32 %705, i32* %6, align 4
  %706 = load i32, i32* %15, align 4
  %707 = load i64*, i64** %4, align 8
  %708 = sext i32 %706 to i64
  %709 = getelementptr inbounds i64, i64* %707, i64 %708
  store i64* %709, i64** %4, align 8
  br label %644

710:                                              ; preds = %661, %644
  br label %925

711:                                              ; preds = %472, %472
  %712 = load i32, i32* %6, align 4
  %713 = icmp slt i32 %712, 5
  br i1 %713, label %714, label %721

714:                                              ; preds = %711
  %715 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %716 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.37 to %struct.TYPE_7__*))
  %717 = load i32, i32* %6, align 4
  %718 = load i64*, i64** %4, align 8
  %719 = sext i32 %717 to i64
  %720 = getelementptr inbounds i64, i64* %718, i64 %719
  store i64* %720, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

721:                                              ; preds = %711
  br label %722

722:                                              ; preds = %816, %721
  %723 = load i32, i32* %6, align 4
  %724 = icmp sgt i32 %723, 0
  br i1 %724, label %725, label %833

725:                                              ; preds = %722
  %726 = load i32, i32* %9, align 4
  %727 = icmp ne i32 %726, 0
  br i1 %727, label %731, label %728

728:                                              ; preds = %725
  %729 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %730 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.16 to %struct.TYPE_7__*))
  br label %731

731:                                              ; preds = %728, %725
  %732 = load i64*, i64** %4, align 8
  %733 = getelementptr inbounds i64, i64* %732, i32 1
  store i64* %733, i64** %4, align 8
  %734 = load i64, i64* %732, align 8
  %735 = trunc i64 %734 to i32
  store i32 %735, i32* %18, align 4
  %736 = load i32, i32* %6, align 4
  %737 = add nsw i32 %736, -1
  store i32 %737, i32* %6, align 4
  %738 = load i32, i32* %18, align 4
  %739 = icmp sgt i32 %738, 32
  br i1 %739, label %740, label %750

740:                                              ; preds = %731
  %741 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %742 = load i32, i32* %18, align 4
  %743 = sext i32 %742 to i64
  %744 = inttoptr i64 %743 to %struct.TYPE_7__*
  %745 = call i32 @ND_PRINT(%struct.TYPE_7__* %744)
  %746 = load i32, i32* %6, align 4
  %747 = load i64*, i64** %4, align 8
  %748 = sext i32 %746 to i64
  %749 = getelementptr inbounds i64, i64* %747, i64 %748
  store i64* %749, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %833

750:                                              ; preds = %731
  %751 = load i32, i32* %18, align 4
  %752 = add nsw i32 %751, 7
  %753 = sdiv i32 %752, 8
  store i32 %753, i32* %19, align 4
  %754 = load i32, i32* %6, align 4
  %755 = load i32, i32* %19, align 4
  %756 = add nsw i32 %755, 4
  %757 = icmp slt i32 %754, %756
  br i1 %757, label %758, label %770

758:                                              ; preds = %750
  %759 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %760 = load i32, i32* %6, align 4
  %761 = load i32, i32* %19, align 4
  %762 = add nsw i32 %761, 4
  %763 = sext i32 %762 to i64
  %764 = inttoptr i64 %763 to %struct.TYPE_7__*
  %765 = call i32 @ND_PRINT(%struct.TYPE_7__* %764)
  %766 = load i32, i32* %6, align 4
  %767 = load i64*, i64** %4, align 8
  %768 = sext i32 %766 to i64
  %769 = getelementptr inbounds i64, i64* %767, i64 %768
  store i64* %769, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %833

770:                                              ; preds = %750
  %771 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %772 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.40 to %struct.TYPE_7__*))
  %773 = load i32, i32* %18, align 4
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %778

775:                                              ; preds = %770
  %776 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %777 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([8 x i8]* @.str.41 to %struct.TYPE_7__*))
  br label %816

778:                                              ; preds = %770
  store i32 0, i32* %20, align 4
  br label %779

779:                                              ; preds = %796, %778
  %780 = load i32, i32* %20, align 4
  %781 = load i32, i32* %19, align 4
  %782 = icmp slt i32 %780, %781
  br i1 %782, label %783, label %799

783:                                              ; preds = %779
  %784 = load i32, i32* %20, align 4
  %785 = icmp sgt i32 %784, 0
  br i1 %785, label %786, label %789

786:                                              ; preds = %783
  %787 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %788 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.25 to %struct.TYPE_7__*))
  br label %789

789:                                              ; preds = %786, %783
  %790 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %791 = load i64*, i64** %4, align 8
  %792 = getelementptr inbounds i64, i64* %791, i32 1
  store i64* %792, i64** %4, align 8
  %793 = load i64, i64* %791, align 8
  %794 = inttoptr i64 %793 to %struct.TYPE_7__*
  %795 = call i32 @ND_PRINT(%struct.TYPE_7__* %794)
  br label %796

796:                                              ; preds = %789
  %797 = load i32, i32* %20, align 4
  %798 = add nsw i32 %797, 1
  store i32 %798, i32* %20, align 4
  br label %779

799:                                              ; preds = %779
  %800 = load i32, i32* %19, align 4
  store i32 %800, i32* %20, align 4
  br label %801

801:                                              ; preds = %807, %799
  %802 = load i32, i32* %20, align 4
  %803 = icmp slt i32 %802, 4
  br i1 %803, label %804, label %810

804:                                              ; preds = %801
  %805 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %806 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([3 x i8]* @.str.42 to %struct.TYPE_7__*))
  br label %807

807:                                              ; preds = %804
  %808 = load i32, i32* %20, align 4
  %809 = add nsw i32 %808, 1
  store i32 %809, i32* %20, align 4
  br label %801

810:                                              ; preds = %801
  %811 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %812 = load i32, i32* %18, align 4
  %813 = sext i32 %812 to i64
  %814 = inttoptr i64 %813 to %struct.TYPE_7__*
  %815 = call i32 @ND_PRINT(%struct.TYPE_7__* %814)
  br label %816

816:                                              ; preds = %810, %775
  %817 = bitcast i32* %11 to i8*
  %818 = load i64*, i64** %4, align 8
  %819 = bitcast i64* %818 to i8*
  %820 = call i32 @memcpy(i8* %817, i8* %819, i32 4)
  %821 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %822 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %823 = call i32 @ipaddr_string(%struct.TYPE_7__* %822, i32* %11)
  %824 = sext i32 %823 to i64
  %825 = inttoptr i64 %824 to %struct.TYPE_7__*
  %826 = call i32 @ND_PRINT(%struct.TYPE_7__* %825)
  %827 = load i64*, i64** %4, align 8
  %828 = getelementptr inbounds i64, i64* %827, i64 4
  store i64* %828, i64** %4, align 8
  %829 = load i32, i32* %19, align 4
  %830 = add nsw i32 %829, 4
  %831 = load i32, i32* %6, align 4
  %832 = sub nsw i32 %831, %830
  store i32 %832, i32* %6, align 4
  store i32 0, i32* %9, align 4
  br label %722

833:                                              ; preds = %758, %740, %722
  br label %925

834:                                              ; preds = %472
  store i32 1, i32* %21, align 4
  store i32 1, i32* %9, align 4
  %835 = load i32, i32* %6, align 4
  %836 = icmp slt i32 %835, 2
  br i1 %836, label %837, label %844

837:                                              ; preds = %834
  %838 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %839 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([24 x i8]* @.str.45 to %struct.TYPE_7__*))
  %840 = load i32, i32* %6, align 4
  %841 = load i64*, i64** %4, align 8
  %842 = sext i32 %840 to i64
  %843 = getelementptr inbounds i64, i64* %841, i64 %842
  store i64* %843, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

844:                                              ; preds = %834
  br label %845

845:                                              ; preds = %896, %844
  %846 = load i32, i32* %6, align 4
  %847 = icmp sgt i32 %846, 0
  br i1 %847, label %848, label %913

848:                                              ; preds = %845
  %849 = load i64*, i64** %4, align 8
  %850 = getelementptr inbounds i64, i64* %849, i32 1
  store i64* %850, i64** %4, align 8
  %851 = load i64, i64* %849, align 8
  %852 = trunc i64 %851 to i32
  store i32 %852, i32* %15, align 4
  %853 = load i32, i32* %6, align 4
  %854 = add nsw i32 %853, -1
  store i32 %854, i32* %6, align 4
  %855 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %856 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([9 x i8]* @.str.12 to %struct.TYPE_7__*))
  %857 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %858 = load i32, i32* %21, align 4
  %859 = sext i32 %858 to i64
  %860 = inttoptr i64 %859 to %struct.TYPE_7__*
  %861 = call i32 @ND_PRINT(%struct.TYPE_7__* %860)
  %862 = load i32, i32* %15, align 4
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %871

864:                                              ; preds = %848
  %865 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %866 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([41 x i8]* @.str.47 to %struct.TYPE_7__*))
  %867 = load i32, i32* %6, align 4
  %868 = load i64*, i64** %4, align 8
  %869 = sext i32 %867 to i64
  %870 = getelementptr inbounds i64, i64* %868, i64 %869
  store i64* %870, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %913

871:                                              ; preds = %848
  %872 = load i32, i32* %6, align 4
  %873 = load i32, i32* %15, align 4
  %874 = icmp slt i32 %872, %873
  br i1 %874, label %875, label %882

875:                                              ; preds = %871
  %876 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %877 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([22 x i8]* @.str.48 to %struct.TYPE_7__*))
  %878 = load i32, i32* %6, align 4
  %879 = load i64*, i64** %4, align 8
  %880 = sext i32 %878 to i64
  %881 = getelementptr inbounds i64, i64* %879, i64 %880
  store i64* %881, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %913

882:                                              ; preds = %871
  %883 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %884 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %885 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %886 = load i64*, i64** %4, align 8
  %887 = load i32, i32* %15, align 4
  %888 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %889 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %888, i32 0, i32 1
  %890 = load i32, i32* %889, align 4
  %891 = call i32 @fn_printn(%struct.TYPE_7__* %885, i64* %886, i32 %887, i32 %890)
  %892 = icmp ne i32 %891, 0
  br i1 %892, label %893, label %896

893:                                              ; preds = %882
  %894 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %895 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  br label %941

896:                                              ; preds = %882
  %897 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %898 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([2 x i8]* @.str.15 to %struct.TYPE_7__*))
  %899 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %900 = load i32, i32* %15, align 4
  %901 = sext i32 %900 to i64
  %902 = inttoptr i64 %901 to %struct.TYPE_7__*
  %903 = call i32 @ND_PRINT(%struct.TYPE_7__* %902)
  %904 = load i32, i32* %21, align 4
  %905 = add nsw i32 %904, 1
  store i32 %905, i32* %21, align 4
  %906 = load i32, i32* %15, align 4
  %907 = load i32, i32* %6, align 4
  %908 = sub nsw i32 %907, %906
  store i32 %908, i32* %6, align 4
  %909 = load i32, i32* %15, align 4
  %910 = load i64*, i64** %4, align 8
  %911 = sext i32 %909 to i64
  %912 = getelementptr inbounds i64, i64* %910, i64 %911
  store i64* %912, i64** %4, align 8
  br label %845

913:                                              ; preds = %875, %864, %845
  br label %925

914:                                              ; preds = %472
  %915 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %916 = load i64, i64* %5, align 8
  %917 = load i32, i32* %6, align 4
  %918 = sext i32 %917 to i64
  %919 = inttoptr i64 %918 to %struct.TYPE_7__*
  %920 = call i32 @ND_PRINT(%struct.TYPE_7__* %919)
  %921 = load i32, i32* %6, align 4
  %922 = load i64*, i64** %4, align 8
  %923 = sext i32 %921 to i64
  %924 = getelementptr inbounds i64, i64* %922, i64 %923
  store i64* %924, i64** %4, align 8
  store i32 0, i32* %6, align 4
  br label %925

925:                                              ; preds = %914, %913, %837, %833, %714, %710, %642, %608, %582, %571, %515, %499, %496, %480, %477
  br label %926

926:                                              ; preds = %925, %471, %432, %401, %376, %335, %278
  %927 = load i32, i32* %6, align 4
  %928 = icmp ne i32 %927, 0
  br i1 %928, label %929, label %939

929:                                              ; preds = %926
  %930 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %931 = load i32, i32* %6, align 4
  %932 = sext i32 %931 to i64
  %933 = inttoptr i64 %932 to %struct.TYPE_7__*
  %934 = call i32 @ND_PRINT(%struct.TYPE_7__* %933)
  %935 = load i32, i32* %6, align 4
  %936 = load i64*, i64** %4, align 8
  %937 = sext i32 %935 to i64
  %938 = getelementptr inbounds i64, i64* %936, i64 %937
  store i64* %938, i64** %4, align 8
  br label %939

939:                                              ; preds = %929, %926
  br label %32

940:                                              ; preds = %32
  br label %944

941:                                              ; preds = %893, %695, %605, %568, %275
  %942 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %943 = call i32 @ND_PRINT(%struct.TYPE_7__* bitcast ([11 x i8]* @.str.52 to %struct.TYPE_7__*))
  br label %944

944:                                              ; preds = %941, %940, %154, %59
  ret void
}

declare dso_local i32 @ND_PRINT(%struct.TYPE_7__*) #1

declare dso_local i32 @EXTRACT_32BITS(i64*) #1

declare dso_local i64 @ND_TTEST2(i64, i32) #1

declare dso_local i32 @ND_TCHECK2(i64, i32) #1

declare dso_local i64 @EXTRACT_16BITS(i64*) #1

declare dso_local i8* @tok2str(i32, i8*, i32) #1

declare dso_local i32 @fn_printn(%struct.TYPE_7__*, i64*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @ipaddr_string(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @client_fqdn_flags(i64) #1

declare dso_local i32 @print_unknown_data(%struct.TYPE_7__*, i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
