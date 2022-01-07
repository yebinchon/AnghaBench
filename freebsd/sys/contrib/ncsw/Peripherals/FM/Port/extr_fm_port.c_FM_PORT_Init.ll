; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Port/extr_fm_port.c_FM_PORT_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_34__ = type { %struct.TYPE_43__, i32, i32, i64, %struct.TYPE_40__, i64, i32, i64, i32, i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_40__ = type { i64, i64 }
%struct.TYPE_36__ = type { i64, i32, %struct.TYPE_32__, %struct.TYPE_48__*, i32, i32, %struct.TYPE_44__, i32, %struct.TYPE_34__*, i64, %struct.TYPE_33__, %struct.TYPE_42__, %struct.TYPE_41__, i32, %struct.TYPE_39__, i32*, %struct.TYPE_38__, i32, i32 }
%struct.TYPE_32__ = type { i64 }
%struct.TYPE_48__ = type { %struct.TYPE_47__, %struct.TYPE_46__ }
%struct.TYPE_47__ = type { i32, i32 }
%struct.TYPE_46__ = type { i32, i32 }
%struct.TYPE_44__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_42__ = type { i64, i64 }
%struct.TYPE_41__ = type { i64, i64 }
%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { i32, i32, i32, i32, %struct.TYPE_45__, i32, i32, i32, i64, i32, i8*, i8*, i8*, i8*, i64, i32, i64, i8*, %struct.fman_port_qmi_regs*, %union.fman_port_bmi_regs*, i32 }
%struct.TYPE_45__ = type { i64, i64 }
%struct.fman_port_qmi_regs = type { i32 }
%union.fman_port_bmi_regs = type { i32 }
%struct.TYPE_35__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i8* null, align 8
@CheckInitParameters = common dso_local global i32 0, align 4
@BMI_PORT_REGS_OFFSET = common dso_local global i64 0, align 8
@QMI_PORT_REGS_OFFSET = common dso_local global i64 0, align 8
@PRS_PORT_REGS_OFFSET = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX_10G = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_RX = common dso_local global i64 0, align 8
@MIN_EXT_BUF_SIZE = common dso_local global i64 0, align 8
@E_INVALID_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [131 x i8] c"bufMargins.startMargins (%d) + minimum buf size (64) + bufMargins.endMargins (%d) is larger than maximum external buffer size (%d)\00", align 1
@e_FM_PORT_TYPE_OH_OFFLINE_PARSING = common dso_local global i64 0, align 8
@e_FM_PORT_TYPE_OH_HOST_COMMAND = common dso_local global i64 0, align 8
@BMI_FIFO_UNITS = common dso_local global i32 0, align 4
@FM_CTL_PARAMS_PAGE_ALWAYS_ON = common dso_local global i32 0, align 4
@FM_CTL_PARAMS_PAGE_OP_FIX_EN = common dso_local global i32 0, align 4
@FM_PORT_FRM_ERR_PHYSICAL = common dso_local global i32 0, align 4
@KILOBYTE = common dso_local global i32 0, align 4
@e_FM_PORT_GPR_MURAM_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PORT_Init(%struct.TYPE_34__* %0) #0 {
  %2 = alloca %struct.TYPE_34__*, align 8
  %3 = alloca %struct.TYPE_36__*, align 8
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_38__, align 8
  %7 = alloca %struct.TYPE_35__, align 4
  store %struct.TYPE_34__* %0, %struct.TYPE_34__** %2, align 8
  %8 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %9 = bitcast %struct.TYPE_34__* %8 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %9, %struct.TYPE_36__** %3, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %2, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_34__* %10, i32 %11)
  %13 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %13, i32 0, i32 8
  %15 = load %struct.TYPE_34__*, %struct.TYPE_34__** %14, align 8
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_34__* %15, i32 %16)
  %18 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %18, i32 0, i32 8
  %20 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %20, i32 0, i32 9
  %22 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %22, i32 0, i32 8
  %24 = load %struct.TYPE_34__*, %struct.TYPE_34__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %24, i32 0, i32 8
  %26 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %26, i32 0, i32 8
  %28 = load %struct.TYPE_34__*, %struct.TYPE_34__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %30, i32 0, i32 18
  %32 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %32, i32 0, i32 17
  %34 = call i64 @FmSpBuildBufferStructure(i32* %21, i32* %25, %struct.TYPE_40__* %29, i32* %31, i32* %33)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @E_OK, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %1
  %39 = load i32, i32* @MAJOR, align 4
  %40 = load i64, i64* %5, align 8
  %41 = load i8*, i8** @NO_MSG, align 8
  %42 = call i32 @RETURN_ERROR(i32 %39, i64 %40, i8* %41)
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %45 = load i32, i32* @CheckInitParameters, align 4
  %46 = call i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_36__* %44, i32 %45)
  %47 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_34__*, %struct.TYPE_34__** %48, align 8
  store %struct.TYPE_34__* %49, %struct.TYPE_34__** %4, align 8
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 16
  %52 = call i32 @memset(%struct.TYPE_38__* %51, i32 0, i32 4)
  %53 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %57, i32 0, i32 16
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @FM_GetRevision(i32 %62, %struct.TYPE_35__* %7)
  %64 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %66, i32 0, i32 16
  %68 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %67, i32 0, i32 1
  store i32 %65, i32* %68, align 4
  %69 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %71, i32 0, i32 16
  %73 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %72, i32 0, i32 20
  store i32 %70, i32* %73, align 8
  %74 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @BMI_PORT_REGS_OFFSET, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @UINT_TO_PTR(i64 %78)
  %80 = inttoptr i64 %79 to %union.fman_port_bmi_regs*
  %81 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %81, i32 0, i32 16
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 19
  store %union.fman_port_bmi_regs* %80, %union.fman_port_bmi_regs** %83, align 8
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %84, i32 0, i32 5
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @QMI_PORT_REGS_OFFSET, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i64 @UINT_TO_PTR(i64 %88)
  %90 = inttoptr i64 %89 to %struct.fman_port_qmi_regs*
  %91 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %91, i32 0, i32 16
  %93 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %92, i32 0, i32 18
  store %struct.fman_port_qmi_regs* %90, %struct.fman_port_qmi_regs** %93, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 4
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i32 4, i32 8
  %99 = sext i32 %98 to i64
  %100 = inttoptr i64 %99 to i8*
  %101 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %101, i32 0, i32 16
  %103 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %102, i32 0, i32 17
  store i8* %100, i8** %103, align 8
  %104 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %104, i32 0, i32 9
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %107, i32 0, i32 16
  %109 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %108, i32 0, i32 16
  store i64 %106, i64* %109, align 8
  %110 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PRS_PORT_REGS_OFFSET, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i64 @UINT_TO_PTR(i64 %114)
  %116 = inttoptr i64 %115 to i32*
  %117 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %117, i32 0, i32 15
  store i32* %116, i32** %118, align 8
  %119 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @e_FM_PORT_TYPE_RX_10G, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %43
  %125 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @e_FM_PORT_TYPE_RX, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %180

130:                                              ; preds = %124, %43
  %131 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %131, i32 0, i32 9
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %180, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %137 = call i64 @SetExtBufferPools(%struct.TYPE_36__* %136)
  store i64 %137, i64* %5, align 8
  %138 = load i64, i64* %5, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i32, i32* @MAJOR, align 4
  %142 = load i64, i64* %5, align 8
  %143 = load i8*, i8** @NO_MSG, align 8
  %144 = call i32 @RETURN_ERROR(i32 %141, i64 %142, i8* %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @MIN_EXT_BUF_SIZE, align 8
  %151 = add nsw i64 %149, %150
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = add nsw i64 %151, %155
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %157, i32 0, i32 14
  %159 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %156, %160
  br i1 %161, label %162, label %179

162:                                              ; preds = %145
  %163 = load i32, i32* @MAJOR, align 4
  %164 = load i64, i64* @E_INVALID_VALUE, align 8
  %165 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %173, i32 0, i32 14
  %175 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i8*
  %178 = call i32 @RETURN_ERROR(i32 %163, i64 %164, i8* %177)
  br label %179

179:                                              ; preds = %162, %145
  br label %180

180:                                              ; preds = %179, %130, %124
  %181 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %180
  %187 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %188 = call i64 @SetExtBufferPools(%struct.TYPE_36__* %187)
  store i64 %188, i64* %5, align 8
  %189 = load i64, i64* %5, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32, i32* @MAJOR, align 4
  %193 = load i64, i64* %5, align 8
  %194 = load i8*, i8** @NO_MSG, align 8
  %195 = call i32 @RETURN_ERROR(i32 %192, i64 %193, i8* %194)
  br label %196

196:                                              ; preds = %191, %186
  br label %197

197:                                              ; preds = %196, %180
  %198 = call i32 @memset(%struct.TYPE_38__* %6, i32 0, i32 152)
  %199 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 13
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 15
  store i32 %201, i32* %202, align 8
  %203 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 14
  store i64 %205, i64* %206, align 8
  %207 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 12
  %209 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = inttoptr i64 %210 to i8*
  %212 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 13
  store i8* %211, i8** %212, align 8
  %213 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 12
  %215 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = inttoptr i64 %216 to i8*
  %218 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 12
  store i8* %217, i8** %218, align 8
  %219 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %219, i32 0, i32 11
  %221 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = inttoptr i64 %222 to i8*
  %224 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 11
  store i8* %223, i8** %224, align 8
  %225 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %225, i32 0, i32 11
  %227 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = inttoptr i64 %228 to i8*
  %230 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 10
  store i8* %229, i8** %230, align 8
  %231 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %231, i32 0, i32 10
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %248

236:                                              ; preds = %197
  %237 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %238 = call i64 @VerifySizeOfFifo(%struct.TYPE_36__* %237)
  store i64 %238, i64* %5, align 8
  %239 = load i64, i64* %5, align 8
  %240 = load i64, i64* @E_OK, align 8
  %241 = icmp ne i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %236
  %243 = load i32, i32* @MAJOR, align 4
  %244 = load i64, i64* %5, align 8
  %245 = load i8*, i8** @NO_MSG, align 8
  %246 = call i32 @RETURN_ERROR(i32 %243, i64 %244, i8* %245)
  br label %247

247:                                              ; preds = %242, %236
  br label %248

248:                                              ; preds = %247, %197
  %249 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %249, i32 0, i32 10
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 2
  store i32 %252, i32* %253, align 8
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %254, i32 0, i32 10
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 9
  store i32 %257, i32* %258, align 8
  %259 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %259, i32 0, i32 9
  %261 = load i64, i64* %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 8
  store i64 %261, i64* %262, align 8
  %263 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 7
  store i32 %265, i32* %266, align 8
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 6
  store i32 %269, i32* %270, align 4
  %271 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %271, i32 0, i32 8
  %273 = load %struct.TYPE_34__*, %struct.TYPE_34__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 3
  store i32 %276, i32* %277, align 4
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %278, i32 0, i32 7
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 5
  store i32 %280, i32* %281, align 8
  %282 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %283 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @e_FM_PORT_TYPE_OH_OFFLINE_PARSING, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %248
  %288 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %289 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @e_FM_PORT_TYPE_OH_HOST_COMMAND, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %308

293:                                              ; preds = %287, %248
  %294 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %294, i32 0, i32 6
  %296 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = icmp eq i32 %297, 4
  br i1 %298, label %307, label %299

299:                                              ; preds = %293
  %300 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %300, i32 0, i32 6
  %302 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = icmp sge i32 %303, 6
  br i1 %304, label %307, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 3
  store i32 2, i32* %306, align 4
  br label %307

307:                                              ; preds = %305, %299, %293
  br label %308

308:                                              ; preds = %307, %287
  %309 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = call i64 @FmGetSetPortParams(i32 %311, %struct.TYPE_38__* %6)
  store i64 %312, i64* %5, align 8
  %313 = load i64, i64* %5, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %308
  %316 = load i32, i32* @MAJOR, align 4
  %317 = load i64, i64* %5, align 8
  %318 = load i8*, i8** @NO_MSG, align 8
  %319 = call i32 @RETURN_ERROR(i32 %316, i64 %317, i8* %318)
  br label %320

320:                                              ; preds = %315, %308
  %321 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = trunc i64 %323 to i32
  %325 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %6, i32 0, i32 4
  %326 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = shl i32 %328, 32
  %330 = or i32 %324, %329
  %331 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %332 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  %333 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %333, i32 0, i32 4
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @FmGetMuramHandle(i32 %335)
  %337 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %337, i32 0, i32 5
  store i32 %336, i32* %338, align 4
  %339 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %340 = call i64 @InitLowLevelDriver(%struct.TYPE_36__* %339)
  store i64 %340, i64* %5, align 8
  %341 = load i64, i64* %5, align 8
  %342 = load i64, i64* @E_OK, align 8
  %343 = icmp ne i64 %341, %342
  br i1 %343, label %344, label %349

344:                                              ; preds = %320
  %345 = load i32, i32* @MAJOR, align 4
  %346 = load i64, i64* %5, align 8
  %347 = load i8*, i8** @NO_MSG, align 8
  %348 = call i32 @RETURN_ERROR(i32 %345, i64 %346, i8* %347)
  br label %349

349:                                              ; preds = %344, %320
  %350 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %351 = call i32 @FmPortDriverParamFree(%struct.TYPE_36__* %350)
  %352 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %360

357:                                              ; preds = %349
  %358 = load %struct.TYPE_36__*, %struct.TYPE_36__** %3, align 8
  %359 = call i32 @FmPortConfigAutoResForDeepSleepSupport1(%struct.TYPE_36__* %358)
  br label %360

360:                                              ; preds = %357, %349
  %361 = load i64, i64* @E_OK, align 8
  ret i64 %361
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_34__*, i32) #1

declare dso_local i64 @FmSpBuildBufferStructure(i32*, i32*, %struct.TYPE_40__*, i32*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i8*) #1

declare dso_local i32 @CHECK_INIT_PARAMETERS(%struct.TYPE_36__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_38__*, i32, i32) #1

declare dso_local i32 @FM_GetRevision(i32, %struct.TYPE_35__*) #1

declare dso_local i64 @UINT_TO_PTR(i64) #1

declare dso_local i64 @SetExtBufferPools(%struct.TYPE_36__*) #1

declare dso_local i64 @VerifySizeOfFifo(%struct.TYPE_36__*) #1

declare dso_local i64 @FmGetSetPortParams(i32, %struct.TYPE_38__*) #1

declare dso_local i32 @FmGetMuramHandle(i32) #1

declare dso_local i64 @InitLowLevelDriver(%struct.TYPE_36__*) #1

declare dso_local i32 @FmPortDriverParamFree(%struct.TYPE_36__*) #1

declare dso_local i32 @FmPortConfigAutoResForDeepSleepSupport1(%struct.TYPE_36__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
