; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_portcapmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibmad/extr_dump.c_mad_dump_portcapmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09\09\09\09IsSM\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"\09\09\09\09IsNoticeSupported\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\09\09\09\09IsTrapSupported\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"\09\09\09\09IsOptionalIPDSupported\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"\09\09\09\09IsAutomaticMigrationSupported\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"\09\09\09\09IsSLMappingSupported\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"\09\09\09\09IsMKeyNVRAM\0A\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"\09\09\09\09IsPKeyNVRAM\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"\09\09\09\09IsLedInfoSupported\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"\09\09\09\09IsSMdisabled\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"\09\09\09\09IsSystemImageGUIDsupported\0A\00", align 1
@.str.12 = private unnamed_addr constant [43 x i8] c"\09\09\09\09IsPkeySwitchExternalPortTrapSupported\0A\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"\09\09\09\09IsExtendedSpeedsSupported\0A\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"\09\09\09\09IsCapabilityMask2Supported\0A\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"\09\09\09\09IsCommunicatonManagementSupported\0A\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"\09\09\09\09IsSNMPTunnelingSupported\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\09\09\09\09IsReinitSupported\0A\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"\09\09\09\09IsDeviceManagementSupported\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"\09\09\09\09IsVendorClassSupported\0A\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"\09\09\09\09IsDRNoticeSupported\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"\09\09\09\09IsCapabilityMaskNoticeSupported\0A\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"\09\09\09\09IsBootManagementSupported\0A\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"\09\09\09\09IsLinkRoundTripLatencySupported\0A\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"\09\09\09\09IsClientRegistrationSupported\0A\00", align 1
@.str.25 = private unnamed_addr constant [40 x i8] c"\09\09\09\09IsOtherLocalChangesNoticeSupported\0A\00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"\09\09\09\09IsLinkSpeedWidthPairsTableSupported\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"\09\09\09\09IsVendorSpecificMadsTableSupported\0A\00", align 1
@.str.28 = private unnamed_addr constant [41 x i8] c"\09\09\09\09IsMcastPkeyTrapSuppressionSupported\0A\00", align 1
@.str.29 = private unnamed_addr constant [32 x i8] c"\09\09\09\09IsMulticastFDBTopSupported\0A\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"\09\09\09\09IsHierarchyInfoSupported\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mad_dump_portcapmask(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to i32*
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 (i8*, i8*, ...) @sprintf(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i8*, i8** %10, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %10, align 8
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 (i8*, i8*, ...) @sprintf(i8* %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %10, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %24, %4
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i8*, i8*, ...) @sprintf(i8* %35, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i8*, i8** %10, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %10, align 8
  br label %40

40:                                               ; preds = %34, %30
  %41 = load i32, i32* %9, align 4
  %42 = and i32 %41, 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** %10, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 16
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 (i8*, i8*, ...) @sprintf(i8* %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %57 = load i8*, i8** %10, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %10, align 8
  br label %60

60:                                               ; preds = %54, %50
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 (i8*, i8*, ...) @sprintf(i8* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %67 = load i8*, i8** %10, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %10, align 8
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i32, i32* %9, align 4
  %72 = and i32 %71, 64
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 (i8*, i8*, ...) @sprintf(i8* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %77 = load i8*, i8** %10, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %10, align 8
  br label %80

80:                                               ; preds = %74, %70
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 128
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load i8*, i8** %10, align 8
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %85, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %87 = load i8*, i8** %10, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %10, align 8
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, 256
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 (i8*, i8*, ...) @sprintf(i8* %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %97 = load i8*, i8** %10, align 8
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  store i8* %99, i8** %10, align 8
  br label %100

100:                                              ; preds = %94, %90
  %101 = load i32, i32* %9, align 4
  %102 = and i32 %101, 512
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %100
  %105 = load i8*, i8** %10, align 8
  %106 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %107 = load i8*, i8** %10, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %10, align 8
  br label %110

110:                                              ; preds = %104, %100
  %111 = load i32, i32* %9, align 4
  %112 = and i32 %111, 1024
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %117 = load i8*, i8** %10, align 8
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  store i8* %119, i8** %10, align 8
  br label %120

120:                                              ; preds = %114, %110
  %121 = load i32, i32* %9, align 4
  %122 = and i32 %121, 2048
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %127 = load i8*, i8** %10, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %10, align 8
  br label %130

130:                                              ; preds = %124, %120
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 4096
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* %135, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.12, i64 0, i64 0))
  %137 = load i8*, i8** %10, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %10, align 8
  br label %140

140:                                              ; preds = %134, %130
  %141 = load i32, i32* %9, align 4
  %142 = and i32 %141, 16384
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 (i8*, i8*, ...) @sprintf(i8* %145, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %147 = load i8*, i8** %10, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %10, align 8
  br label %150

150:                                              ; preds = %144, %140
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 32768
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load i8*, i8** %10, align 8
  %156 = call i32 (i8*, i8*, ...) @sprintf(i8* %155, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0))
  %157 = load i8*, i8** %10, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8* %159, i8** %10, align 8
  br label %160

160:                                              ; preds = %154, %150
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, 65536
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %160
  %165 = load i8*, i8** %10, align 8
  %166 = call i32 (i8*, i8*, ...) @sprintf(i8* %165, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  %167 = load i8*, i8** %10, align 8
  %168 = sext i32 %166 to i64
  %169 = getelementptr inbounds i8, i8* %167, i64 %168
  store i8* %169, i8** %10, align 8
  br label %170

170:                                              ; preds = %164, %160
  %171 = load i32, i32* %9, align 4
  %172 = and i32 %171, 131072
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load i8*, i8** %10, align 8
  %176 = call i32 (i8*, i8*, ...) @sprintf(i8* %175, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0))
  %177 = load i8*, i8** %10, align 8
  %178 = sext i32 %176 to i64
  %179 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8* %179, i8** %10, align 8
  br label %180

180:                                              ; preds = %174, %170
  %181 = load i32, i32* %9, align 4
  %182 = and i32 %181, 262144
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load i8*, i8** %10, align 8
  %186 = call i32 (i8*, i8*, ...) @sprintf(i8* %185, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %187 = load i8*, i8** %10, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i8, i8* %187, i64 %188
  store i8* %189, i8** %10, align 8
  br label %190

190:                                              ; preds = %184, %180
  %191 = load i32, i32* %9, align 4
  %192 = and i32 %191, 524288
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = load i8*, i8** %10, align 8
  %196 = call i32 (i8*, i8*, ...) @sprintf(i8* %195, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.18, i64 0, i64 0))
  %197 = load i8*, i8** %10, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %10, align 8
  br label %200

200:                                              ; preds = %194, %190
  %201 = load i32, i32* %9, align 4
  %202 = and i32 %201, 1048576
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load i8*, i8** %10, align 8
  %206 = call i32 (i8*, i8*, ...) @sprintf(i8* %205, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %207 = load i8*, i8** %10, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %10, align 8
  br label %210

210:                                              ; preds = %204, %200
  %211 = load i32, i32* %9, align 4
  %212 = and i32 %211, 2097152
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %210
  %215 = load i8*, i8** %10, align 8
  %216 = call i32 (i8*, i8*, ...) @sprintf(i8* %215, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i64 0, i64 0))
  %217 = load i8*, i8** %10, align 8
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %217, i64 %218
  store i8* %219, i8** %10, align 8
  br label %220

220:                                              ; preds = %214, %210
  %221 = load i32, i32* %9, align 4
  %222 = and i32 %221, 4194304
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load i8*, i8** %10, align 8
  %226 = call i32 (i8*, i8*, ...) @sprintf(i8* %225, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0))
  %227 = load i8*, i8** %10, align 8
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8* %229, i8** %10, align 8
  br label %230

230:                                              ; preds = %224, %220
  %231 = load i32, i32* %9, align 4
  %232 = and i32 %231, 8388608
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load i8*, i8** %10, align 8
  %236 = call i32 (i8*, i8*, ...) @sprintf(i8* %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %237 = load i8*, i8** %10, align 8
  %238 = sext i32 %236 to i64
  %239 = getelementptr inbounds i8, i8* %237, i64 %238
  store i8* %239, i8** %10, align 8
  br label %240

240:                                              ; preds = %234, %230
  %241 = load i32, i32* %9, align 4
  %242 = and i32 %241, 16777216
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %250

244:                                              ; preds = %240
  %245 = load i8*, i8** %10, align 8
  %246 = call i32 (i8*, i8*, ...) @sprintf(i8* %245, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0))
  %247 = load i8*, i8** %10, align 8
  %248 = sext i32 %246 to i64
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  store i8* %249, i8** %10, align 8
  br label %250

250:                                              ; preds = %244, %240
  %251 = load i32, i32* %9, align 4
  %252 = and i32 %251, 33554432
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %260

254:                                              ; preds = %250
  %255 = load i8*, i8** %10, align 8
  %256 = call i32 (i8*, i8*, ...) @sprintf(i8* %255, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0))
  %257 = load i8*, i8** %10, align 8
  %258 = sext i32 %256 to i64
  %259 = getelementptr inbounds i8, i8* %257, i64 %258
  store i8* %259, i8** %10, align 8
  br label %260

260:                                              ; preds = %254, %250
  %261 = load i32, i32* %9, align 4
  %262 = and i32 %261, 67108864
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %260
  %265 = load i8*, i8** %10, align 8
  %266 = call i32 (i8*, i8*, ...) @sprintf(i8* %265, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.25, i64 0, i64 0))
  %267 = load i8*, i8** %10, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %10, align 8
  br label %270

270:                                              ; preds = %264, %260
  %271 = load i32, i32* %9, align 4
  %272 = and i32 %271, 134217728
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %270
  %275 = load i8*, i8** %10, align 8
  %276 = call i32 (i8*, i8*, ...) @sprintf(i8* %275, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.26, i64 0, i64 0))
  %277 = load i8*, i8** %10, align 8
  %278 = sext i32 %276 to i64
  %279 = getelementptr inbounds i8, i8* %277, i64 %278
  store i8* %279, i8** %10, align 8
  br label %280

280:                                              ; preds = %274, %270
  %281 = load i32, i32* %9, align 4
  %282 = and i32 %281, 268435456
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i8*, i8** %10, align 8
  %286 = call i32 (i8*, i8*, ...) @sprintf(i8* %285, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.27, i64 0, i64 0))
  %287 = load i8*, i8** %10, align 8
  %288 = sext i32 %286 to i64
  %289 = getelementptr inbounds i8, i8* %287, i64 %288
  store i8* %289, i8** %10, align 8
  br label %290

290:                                              ; preds = %284, %280
  %291 = load i32, i32* %9, align 4
  %292 = and i32 %291, 536870912
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i8*, i8** %10, align 8
  %296 = call i32 (i8*, i8*, ...) @sprintf(i8* %295, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.28, i64 0, i64 0))
  %297 = load i8*, i8** %10, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %10, align 8
  br label %300

300:                                              ; preds = %294, %290
  %301 = load i32, i32* %9, align 4
  %302 = and i32 %301, 1073741824
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %310

304:                                              ; preds = %300
  %305 = load i8*, i8** %10, align 8
  %306 = call i32 (i8*, i8*, ...) @sprintf(i8* %305, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.29, i64 0, i64 0))
  %307 = load i8*, i8** %10, align 8
  %308 = sext i32 %306 to i64
  %309 = getelementptr inbounds i8, i8* %307, i64 %308
  store i8* %309, i8** %10, align 8
  br label %310

310:                                              ; preds = %304, %300
  %311 = load i32, i32* %9, align 4
  %312 = and i32 %311, -2147483648
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %310
  %315 = load i8*, i8** %10, align 8
  %316 = call i32 (i8*, i8*, ...) @sprintf(i8* %315, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  %317 = load i8*, i8** %10, align 8
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i8, i8* %317, i64 %318
  store i8* %319, i8** %10, align 8
  br label %320

320:                                              ; preds = %314, %310
  %321 = load i8*, i8** %10, align 8
  %322 = load i8*, i8** %5, align 8
  %323 = icmp ne i8* %321, %322
  br i1 %323, label %324, label %327

324:                                              ; preds = %320
  %325 = load i8*, i8** %10, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 -1
  store i8* %326, i8** %10, align 8
  store i8 0, i8* %326, align 1
  br label %327

327:                                              ; preds = %324, %320
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
