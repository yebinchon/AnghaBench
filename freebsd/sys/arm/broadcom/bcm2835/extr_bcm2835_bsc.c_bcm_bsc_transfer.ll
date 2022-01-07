; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_bsc.c_bcm_bsc_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_bsc_softc = type { i32, i64, i64, i32, %struct.iic_msg*, i64 }
%struct.iic_msg = type { i32, i32, i64 }

@BCM_I2C_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"bscbusw\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Transfer %d msgs\0A\00", align 1
@IIC_M_RD = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@BCM_BSC_SLAVE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"start  0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"%-6s 0x%02x len %d: \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@BCM_BSC_CTRL_READ = common dso_local global i64 0, align 8
@BCM_I2C_READ = common dso_local global i32 0, align 4
@BCM_BSC_DLEN = common dso_local global i32 0, align 4
@BCM_BSC_CTRL = common dso_local global i32 0, align 4
@BCM_BSC_CTRL_I2CEN = common dso_local global i64 0, align 8
@BCM_BSC_CTRL_ST = common dso_local global i64 0, align 8
@BCM_BSC_STATUS = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_ERR = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@BCM_BSC_STATUS_TA = common dso_local global i64 0, align 8
@BCM_BSC_CTRL_INT_ALL = common dso_local global i64 0, align 8
@BCM_I2C_DONE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"bsciow\00", align 1
@hz = common dso_local global i32 0, align 4
@BCM_I2C_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [9 x i8] c" err=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_bsc_softc*, %struct.iic_msg*, i64)* @bcm_bsc_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_bsc_transfer(%struct.bcm_bsc_softc* %0, %struct.iic_msg* %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_bsc_softc*, align 8
  %5 = alloca %struct.iic_msg*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcm_bsc_softc*, align 8
  %8 = alloca %struct.iic_msg*, align 8
  %9 = alloca %struct.iic_msg*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.bcm_bsc_softc* %0, %struct.bcm_bsc_softc** %4, align 8
  store %struct.iic_msg* %1, %struct.iic_msg** %5, align 8
  store i64 %2, i64* %6, align 8
  %18 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %19 = call %struct.bcm_bsc_softc* @device_get_softc(%struct.bcm_bsc_softc* %18)
  store %struct.bcm_bsc_softc* %19, %struct.bcm_bsc_softc** %7, align 8
  %20 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %21 = call i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc* %20)
  br label %22

22:                                               ; preds = %29, %3
  %23 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %24 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BCM_I2C_BUSY, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %31 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %32 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %31, i32 0, i32 3
  %33 = call i32 @mtx_sleep(%struct.bcm_bsc_softc* %30, i32* %32, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %22

34:                                               ; preds = %22
  %35 = load i32, i32* @BCM_I2C_BUSY, align 4
  %36 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %37 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %38, i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  %41 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %42 = call i32 @bcm_bsc_reset(%struct.bcm_bsc_softc* %41)
  store i32 0, i32* %12, align 4
  %43 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %44 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %46 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %47 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %46, i32 0, i32 4
  store %struct.iic_msg* %45, %struct.iic_msg** %47, align 8
  %48 = load %struct.iic_msg*, %struct.iic_msg** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %48, i64 %49
  store %struct.iic_msg* %50, %struct.iic_msg** %8, align 8
  br label %51

51:                                               ; preds = %321, %34
  %52 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %53 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %52, i32 0, i32 4
  %54 = load %struct.iic_msg*, %struct.iic_msg** %53, align 8
  %55 = load %struct.iic_msg*, %struct.iic_msg** %8, align 8
  %56 = icmp ult %struct.iic_msg* %54, %55
  br i1 %56, label %57, label %322

57:                                               ; preds = %51
  store i64 0, i64* %10, align 8
  %58 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %59 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %58, i32 0, i32 4
  %60 = load %struct.iic_msg*, %struct.iic_msg** %59, align 8
  %61 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 1
  store i32 %63, i32* %15, align 4
  %64 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %65 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %64, i32 0, i32 4
  %66 = load %struct.iic_msg*, %struct.iic_msg** %65, align 8
  %67 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IIC_M_RD, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %14, align 4
  %71 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %72 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %74 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %73, i32 0, i32 4
  %75 = load %struct.iic_msg*, %struct.iic_msg** %74, align 8
  %76 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %79 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %78, i32 0, i32 2
  store i64 %77, i64* %79, align 8
  %80 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %81 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %80, i32 0, i32 4
  %82 = load %struct.iic_msg*, %struct.iic_msg** %81, align 8
  %83 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %82, i64 1
  store %struct.iic_msg* %83, %struct.iic_msg** %9, align 8
  br label %84

84:                                               ; preds = %134, %57
  %85 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %86 = load %struct.iic_msg*, %struct.iic_msg** %8, align 8
  %87 = icmp ult %struct.iic_msg* %85, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %84
  %89 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %90 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = ashr i32 %91, 1
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %133

96:                                               ; preds = %88
  %97 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %98 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IIC_M_RD, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %16, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %96
  %106 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %107 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %110 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %108
  store i64 %112, i64* %110, align 8
  br label %134

113:                                              ; preds = %96
  %114 = load i32, i32* %14, align 4
  %115 = load i32, i32* @IIC_M_WR, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %113
  %118 = load i32, i32* @IIC_M_RD, align 4
  store i32 %118, i32* %14, align 4
  %119 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %120 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %123 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %125 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %128 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %134

131:                                              ; preds = %113
  br label %132

132:                                              ; preds = %131
  br label %133

133:                                              ; preds = %132, %88
  br label %137

134:                                              ; preds = %117, %105
  %135 = load %struct.iic_msg*, %struct.iic_msg** %9, align 8
  %136 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %135, i32 1
  store %struct.iic_msg* %136, %struct.iic_msg** %9, align 8
  br label %84

137:                                              ; preds = %133, %84
  %138 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %139 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %138, i32 0, i32 4
  %140 = load %struct.iic_msg*, %struct.iic_msg** %139, align 8
  %141 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @IIC_M_RD, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i32 1, i32 0
  store i32 %147, i32* %14, align 4
  %148 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %149 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %148, i32 0, i32 4
  %150 = load %struct.iic_msg*, %struct.iic_msg** %149, align 8
  %151 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %15, align 4
  %155 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %156 = load i32, i32* @BCM_BSC_SLAVE, align 4
  %157 = load i32, i32* %15, align 4
  %158 = ashr i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %155, i32 %156, i64 %159)
  %161 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %162 = load i32, i32* %15, align 4
  %163 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %161, i32 2, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %162)
  %164 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %165 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %199

168:                                              ; preds = %137
  %169 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %174 = load i32, i32* %15, align 4
  %175 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %176 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %169, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %173, i32 %174, i64 %177)
  %179 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %180 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  store i64 %181, i64* %13, align 8
  %182 = load i32, i32* %14, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %168
  %185 = load i64, i64* @BCM_BSC_CTRL_READ, align 8
  store i64 %185, i64* %10, align 8
  %186 = load i32, i32* @BCM_I2C_READ, align 4
  %187 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %188 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = or i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %198

191:                                              ; preds = %168
  store i64 0, i64* %10, align 8
  %192 = load i32, i32* @BCM_I2C_READ, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %195 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 8
  br label %198

198:                                              ; preds = %191, %184
  br label %253

199:                                              ; preds = %137
  %200 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %201 = load i32, i32* %14, align 4
  %202 = icmp ne i32 %201, 0
  %203 = zext i1 %202 to i64
  %204 = select i1 %202, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %205 = load i32, i32* %15, align 4
  %206 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %207 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %206, i32 0, i32 1
  %208 = load i64, i64* %207, align 8
  %209 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %200, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* %204, i32 %205, i64 %208)
  %210 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %211 = load i32, i32* @BCM_BSC_DLEN, align 4
  %212 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %213 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %210, i32 %211, i64 %214)
  %216 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %217 = load i32, i32* @BCM_BSC_CTRL, align 4
  %218 = load i64, i64* @BCM_BSC_CTRL_I2CEN, align 8
  %219 = load i64, i64* @BCM_BSC_CTRL_ST, align 8
  %220 = or i64 %218, %219
  %221 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %216, i32 %217, i64 %220)
  br label %222

222:                                              ; preds = %233, %199
  %223 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %224 = load i32, i32* @BCM_BSC_STATUS, align 4
  %225 = call i64 @BCM_BSC_READ(%struct.bcm_bsc_softc* %223, i32 %224)
  store i64 %225, i64* %11, align 8
  %226 = load i64, i64* %11, align 8
  %227 = load i64, i64* @BCM_BSC_STATUS_ERR, align 8
  %228 = and i64 %226, %227
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %222
  %231 = load i32, i32* @EIO, align 4
  store i32 %231, i32* %12, align 4
  br label %312

232:                                              ; preds = %222
  br label %233

233:                                              ; preds = %232
  %234 = load i64, i64* %11, align 8
  %235 = load i64, i64* @BCM_BSC_STATUS_TA, align 8
  %236 = and i64 %234, %235
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %222, label %238

238:                                              ; preds = %233
  %239 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %240 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %243 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = sub i64 %241, %244
  store i64 %245, i64* %13, align 8
  %246 = load i64, i64* @BCM_BSC_CTRL_READ, align 8
  store i64 %246, i64* %10, align 8
  %247 = load i32, i32* @BCM_I2C_READ, align 4
  %248 = xor i32 %247, -1
  %249 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %250 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = and i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %238, %198
  %254 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %255 = load i32, i32* @BCM_BSC_DLEN, align 4
  %256 = load i64, i64* %13, align 8
  %257 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %254, i32 %255, i64 %256)
  %258 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %259 = load i32, i32* @BCM_BSC_CTRL, align 4
  %260 = load i64, i64* %10, align 8
  %261 = load i64, i64* @BCM_BSC_CTRL_I2CEN, align 8
  %262 = or i64 %260, %261
  %263 = load i64, i64* @BCM_BSC_CTRL_ST, align 8
  %264 = or i64 %262, %263
  %265 = load i64, i64* @BCM_BSC_CTRL_INT_ALL, align 8
  %266 = or i64 %264, %265
  %267 = call i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc* %258, i32 %259, i64 %266)
  %268 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %269 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %268, i32 0, i32 4
  %270 = load %struct.iic_msg*, %struct.iic_msg** %269, align 8
  %271 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = load i32, i32* @IIC_M_RD, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %253
  %277 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %278 = call i32 @bcm_bsc_fill_tx_fifo(%struct.bcm_bsc_softc* %277)
  br label %279

279:                                              ; preds = %276, %253
  br label %280

280:                                              ; preds = %293, %279
  %281 = load i32, i32* %12, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %291

283:                                              ; preds = %280
  %284 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %285 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @BCM_I2C_DONE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  %290 = xor i1 %289, true
  br label %291

291:                                              ; preds = %283, %280
  %292 = phi i1 [ false, %280 ], [ %290, %283 ]
  br i1 %292, label %293, label %299

293:                                              ; preds = %291
  %294 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %295 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %296 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %295, i32 0, i32 3
  %297 = load i32, i32* @hz, align 4
  %298 = call i32 @mtx_sleep(%struct.bcm_bsc_softc* %294, i32* %296, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %297)
  store i32 %298, i32* %12, align 4
  br label %280

299:                                              ; preds = %291
  %300 = load i32, i32* %12, align 4
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %299
  %303 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %304 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @BCM_I2C_ERROR, align 4
  %307 = and i32 %305, %306
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %302
  %310 = load i32, i32* @EIO, align 4
  store i32 %310, i32* %12, align 4
  br label %311

311:                                              ; preds = %309, %302, %299
  br label %312

312:                                              ; preds = %311, %230
  %313 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %314 = load i32, i32* %12, align 4
  %315 = call i32 @DEBUGF(%struct.bcm_bsc_softc* %313, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %314)
  %316 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %317 = call i32 (%struct.bcm_bsc_softc*, i32, i8*, ...) @DEVICE_DEBUGF(%struct.bcm_bsc_softc* %316, i32 2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %318 = load i32, i32* %12, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %312
  br label %322

321:                                              ; preds = %312
  br label %51

322:                                              ; preds = %320, %51
  %323 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %324 = call i32 @bcm_bsc_reset(%struct.bcm_bsc_softc* %323)
  %325 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %326 = getelementptr inbounds %struct.bcm_bsc_softc, %struct.bcm_bsc_softc* %325, i32 0, i32 0
  store i32 0, i32* %326, align 8
  %327 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %4, align 8
  %328 = call i32 @wakeup(%struct.bcm_bsc_softc* %327)
  %329 = load %struct.bcm_bsc_softc*, %struct.bcm_bsc_softc** %7, align 8
  %330 = call i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc* %329)
  %331 = load i32, i32* %12, align 4
  ret i32 %331
}

declare dso_local %struct.bcm_bsc_softc* @device_get_softc(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_LOCK(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @mtx_sleep(%struct.bcm_bsc_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @DEVICE_DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, ...) #1

declare dso_local i32 @bcm_bsc_reset(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_WRITE(%struct.bcm_bsc_softc*, i32, i64) #1

declare dso_local i64 @BCM_BSC_READ(%struct.bcm_bsc_softc*, i32) #1

declare dso_local i32 @bcm_bsc_fill_tx_fifo(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @DEBUGF(%struct.bcm_bsc_softc*, i32, i8*, i32) #1

declare dso_local i32 @wakeup(%struct.bcm_bsc_softc*) #1

declare dso_local i32 @BCM_BSC_UNLOCK(%struct.bcm_bsc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
