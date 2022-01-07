; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_CheckInitParameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_CheckInitParameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@e_ENET_SPEED_10000 = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@E_INVALID_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Ethernet 1G MAC driver only supports 1G or lower speeds\00", align 1
@FM_MAX_NUM_OF_1G_MACS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"macId can not be greater than the number of 1G MACs\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Ethernet MAC Must have a valid MAC Address\00", align 1
@e_ENET_SPEED_1000 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"Ethernet MAC 1G can't work in half duplex\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"LoopBack is not supported in halfDuplex mode\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Preamble length should be 0x7 bytes\00", align 1
@.str.6 = private unnamed_addr constant [66 x i8] c"dTSEC in half duplex mode has to be with 1588 timeStamping diable\00", align 1
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [83 x i8] c"Receive control frame are not passed to the system memory so it can not be accept \00", align 1
@MAX_PACKET_ALIGNMENT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [49 x i8] c"packetAlignmentPadding can't be greater than %d \00", align 1
@MAX_INTER_PACKET_GAP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [43 x i8] c"Inter packet gap can't be greater than %d \00", align 1
@MAX_INTER_PALTERNATE_BEB = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"alternateBackoffVal can't be greater than %d \00", align 1
@MAX_RETRANSMISSION = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [44 x i8] c"maxRetransmission can't be greater than %d \00", align 1
@MAX_COLLISION_WINDOW = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"collisionWindow can't be greater than %d \00", align 1
@MAX_PHYS = common dso_local global i64 0, align 8
@E_NOT_IN_RANGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"PHY address (should be 0-%d)\00", align 1
@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"uninitialized f_Exception\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"uninitialized f_Event\00", align 1
@E_OK = common dso_local global i32 0, align 4
@E_NOT_SUPPORTED = common dso_local global i32 0, align 4
@MINOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @CheckInitParameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckInitParameters(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 6
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @ENET_SPEED_FROM_MODE(i32 %5)
  %7 = load i64, i64* @e_ENET_SPEED_10000, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @MAJOR, align 4
  %11 = load i32, i32* @E_INVALID_VALUE, align 4
  %12 = call i32 @RETURN_ERROR(i32 %10, i32 %11, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FM_MAX_NUM_OF_1G_MACS, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* @MAJOR, align 4
  %21 = load i32, i32* @E_INVALID_VALUE, align 4
  %22 = call i32 @RETURN_ERROR(i32 %20, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %19, %13
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @MAJOR, align 4
  %30 = load i32, i32* @E_INVALID_VALUE, align 4
  %31 = call i32 @RETURN_ERROR(i32 %29, i32 %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ENET_SPEED_FROM_MODE(i32 %35)
  %37 = load i64, i64* @e_ENET_SPEED_1000, align 8
  %38 = icmp sge i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %32
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 14
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load i32, i32* @MAJOR, align 4
  %48 = load i32, i32* @E_INVALID_VALUE, align 4
  %49 = call i32 @RETURN_ERROR(i32 %47, i32 %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %46, %39, %32
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 14
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %50
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 17
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @MAJOR, align 4
  %66 = load i32, i32* @E_INVALID_VALUE, align 4
  %67 = call i32 @RETURN_ERROR(i32 %65, i32 %66, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %64, %57, %50
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 16
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 15
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %75, %68
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 7
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @MAJOR, align 4
  %91 = load i32, i32* @E_INVALID_VALUE, align 4
  %92 = call i32 @RETURN_ERROR(i32 %90, i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %93

93:                                               ; preds = %89, %82, %75
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 14
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %93
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 13
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 12
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107, %100
  %115 = load i32, i32* @MAJOR, align 4
  %116 = load i32, i32* @E_INVALID_VALUE, align 4
  %117 = call i32 @RETURN_ERROR(i32 %115, i32 %116, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.6, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %107, %93
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 11
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %118
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 10
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %125
  %133 = load i32, i32* @MAJOR, align 4
  %134 = load i32, i32* @E_INVALID_STATE, align 4
  %135 = call i32 @RETURN_ERROR(i32 %133, i32 %134, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.7, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %125, %118
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MAX_PACKET_ALIGNMENT, align 8
  %143 = icmp sgt i64 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %136
  %145 = load i32, i32* @MAJOR, align 4
  %146 = load i32, i32* @E_INVALID_STATE, align 4
  %147 = load i64, i64* @MAX_PACKET_ALIGNMENT, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = call i32 @RETURN_ERROR(i32 %145, i32 %146, i8* %148)
  br label %150

150:                                              ; preds = %144, %136
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %174, label %158

158:                                              ; preds = %150
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 2
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %158
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %173 = icmp sgt i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %166, %158, %150
  %175 = load i32, i32* @MAJOR, align 4
  %176 = load i32, i32* @E_INVALID_STATE, align 4
  %177 = load i64, i64* @MAX_INTER_PACKET_GAP, align 8
  %178 = inttoptr i64 %177 to i8*
  %179 = call i32 @RETURN_ERROR(i32 %175, i32 %176, i8* %178)
  br label %180

180:                                              ; preds = %174, %166
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @MAX_INTER_PALTERNATE_BEB, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %180
  %189 = load i32, i32* @MAJOR, align 4
  %190 = load i32, i32* @E_INVALID_STATE, align 4
  %191 = load i64, i64* @MAX_INTER_PALTERNATE_BEB, align 8
  %192 = inttoptr i64 %191 to i8*
  %193 = call i32 @RETURN_ERROR(i32 %189, i32 %190, i8* %192)
  br label %194

194:                                              ; preds = %188, %180
  %195 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 6
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @MAX_RETRANSMISSION, align 8
  %201 = icmp sgt i64 %199, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %194
  %203 = load i32, i32* @MAJOR, align 4
  %204 = load i32, i32* @E_INVALID_STATE, align 4
  %205 = load i64, i64* @MAX_RETRANSMISSION, align 8
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 @RETURN_ERROR(i32 %203, i32 %204, i8* %206)
  br label %208

208:                                              ; preds = %202, %194
  %209 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 2
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 7
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @MAX_COLLISION_WINDOW, align 8
  %215 = icmp sgt i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %208
  %217 = load i32, i32* @MAJOR, align 4
  %218 = load i32, i32* @E_INVALID_STATE, align 4
  %219 = load i64, i64* @MAX_COLLISION_WINDOW, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @RETURN_ERROR(i32 %217, i32 %218, i8* %220)
  br label %222

222:                                              ; preds = %216, %208
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 2
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 8
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @MAX_PHYS, align 8
  %229 = icmp sgt i64 %227, %228
  br i1 %229, label %230, label %236

230:                                              ; preds = %222
  %231 = load i32, i32* @MAJOR, align 4
  %232 = load i32, i32* @E_NOT_IN_RANGE, align 4
  %233 = load i64, i64* @MAX_PHYS, align 8
  %234 = inttoptr i64 %233 to i8*
  %235 = call i32 @RETURN_ERROR(i32 %231, i32 %232, i8* %234)
  br label %236

236:                                              ; preds = %230, %222
  %237 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %245, label %241

241:                                              ; preds = %236
  %242 = load i32, i32* @MAJOR, align 4
  %243 = load i32, i32* @E_INVALID_HANDLE, align 4
  %244 = call i32 @RETURN_ERROR(i32 %242, i32 %243, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %245

245:                                              ; preds = %241, %236
  %246 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %254, label %250

250:                                              ; preds = %245
  %251 = load i32, i32* @MAJOR, align 4
  %252 = load i32, i32* @E_INVALID_HANDLE, align 4
  %253 = call i32 @RETURN_ERROR(i32 %251, i32 %252, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  br label %254

254:                                              ; preds = %250, %245
  %255 = load i32, i32* @E_OK, align 4
  ret i32 %255
}

declare dso_local i64 @ENET_SPEED_FROM_MODE(i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
