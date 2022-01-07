; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_pcd.c_FM_PCD_Config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i64, i32, i8*, i64, i64, i32*, i32, i32, i32, i64, i32, i32, i8*, i32*, i32*, i32*, i32, i32, %struct.TYPE_23__*, i32, %struct.TYPE_22__*, i64, %struct.TYPE_23__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, i64, i64, i64, i32, i64, i32 }
%struct.TYPE_24__ = type { i64, i64 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@E_NO_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"FM PCD\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"FM PCD Driver Param\00", align 1
@FM_MAX_NUM_OF_PORTS = common dso_local global i64 0, align 8
@ILLEGAL_CLS_PLAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"FM PCD HC\00", align 1
@NCSW_MASTER_ID = common dso_local global i64 0, align 8
@E_INVALID_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"No Host Command defined for a guest partition.\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"FM PCD Keygen\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"FM PCD Policer\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"FM PCD Parser\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"FM PCD spinlock\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"FM PCD shadow spinlock\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @FM_PCD_Config(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_23__*, align 8
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_23__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %4, align 8
  %8 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %9 = load i32, i32* @E_INVALID_HANDLE, align 4
  %10 = call i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__* %8, i32 %9, i32* null)
  %11 = call i64 @XX_Malloc(i32 160)
  %12 = inttoptr i64 %11 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %12, %struct.TYPE_23__** %4, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %14 = icmp ne %struct.TYPE_23__* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @MAJOR, align 4
  %17 = load i32, i32* @E_NO_MEMORY, align 4
  %18 = call i32 @REPORT_ERROR(i32 %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

19:                                               ; preds = %1
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = call i32 @memset(%struct.TYPE_23__* %20, i32 0, i32 160)
  %22 = call i64 @XX_Malloc(i32 160)
  %23 = inttoptr i64 %22 to %struct.TYPE_23__*
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 22
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %25, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 22
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %27, align 8
  %29 = icmp ne %struct.TYPE_23__* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %19
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %32 = call i32 @XX_Free(%struct.TYPE_23__* %31)
  %33 = load i32, i32* @MAJOR, align 4
  %34 = load i32, i32* @E_NO_MEMORY, align 4
  %35 = call i32 @REPORT_ERROR(i32 %33, i32 %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

36:                                               ; preds = %19
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 22
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %38, align 8
  %40 = call i32 @memset(%struct.TYPE_23__* %39, i32 0, i32 160)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 19
  store i32 %43, i32* %45, align 8
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %46, i32 0, i32 19
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @FmGetGuestId(i32 %48)
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 19
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @FmGetMuramHandle(i32 %54)
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 21
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 21
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %36
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @FmGetPhysicalMuramBase(i32 %65, %struct.TYPE_24__* %5)
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = shl i32 %72, 32
  %74 = or i32 %69, %73
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %62, %36
  store i64 0, i64* %6, align 8
  br label %78

78:                                               ; preds = %90, %77
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* @FM_MAX_NUM_OF_PORTS, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %78
  %83 = load i32, i32* @ILLEGAL_CLS_PLAN, align 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 20
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %85, align 8
  %87 = load i64, i64* %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 %83, i32* %89, align 4
  br label %90

90:                                               ; preds = %82
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %126

98:                                               ; preds = %93
  %99 = call i32 @memset(%struct.TYPE_23__* %7, i32 0, i32 160)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 19
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 19
  store i32 %102, i32* %103, align 8
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 18
  store %struct.TYPE_23__* %104, %struct.TYPE_23__** %105, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %7, i32 0, i32 17
  %107 = bitcast i32* %106 to i64*
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 6
  %110 = bitcast i32* %109 to i64*
  %111 = call i32 @memcpy(i64* %107, i64* %110, i32 4)
  %112 = call i32 @FmHcConfigAndInit(%struct.TYPE_23__* %7)
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 16
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 16
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %98
  %120 = load i32, i32* @MAJOR, align 4
  %121 = load i32, i32* @E_NO_MEMORY, align 4
  %122 = call i32 @REPORT_ERROR(i32 %120, i32 %121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %124 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %123)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

125:                                              ; preds = %98
  br label %137

126:                                              ; preds = %93
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @NCSW_MASTER_ID, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @MAJOR, align 4
  %134 = load i32, i32* @E_INVALID_STATE, align 4
  %135 = call i32 @REPORT_ERROR(i32 %133, i32 %134, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  br label %136

136:                                              ; preds = %132, %126
  br label %137

137:                                              ; preds = %136, %125
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %160

142:                                              ; preds = %137
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %144 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %145 = call i64 @KgConfig(%struct.TYPE_23__* %143, %struct.TYPE_25__* %144)
  %146 = inttoptr i64 %145 to i32*
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 15
  store i32* %146, i32** %148, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %149, i32 0, i32 15
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %159, label %153

153:                                              ; preds = %142
  %154 = load i32, i32* @MAJOR, align 4
  %155 = load i32, i32* @E_NO_MEMORY, align 4
  %156 = call i32 @REPORT_ERROR(i32 %154, i32 %155, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %158 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %157)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

159:                                              ; preds = %142
  br label %160

160:                                              ; preds = %159, %137
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %160
  %166 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %168 = call i64 @PlcrConfig(%struct.TYPE_23__* %166, %struct.TYPE_25__* %167)
  %169 = inttoptr i64 %168 to i32*
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 14
  store i32* %169, i32** %171, align 8
  %172 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 14
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %182, label %176

176:                                              ; preds = %165
  %177 = load i32, i32* @MAJOR, align 4
  %178 = load i32, i32* @E_NO_MEMORY, align 4
  %179 = call i32 @REPORT_ERROR(i32 %177, i32 %178, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %181 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %180)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %160
  %184 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %191 = call i64 @PrsConfig(%struct.TYPE_23__* %189, %struct.TYPE_25__* %190)
  %192 = inttoptr i64 %191 to i32*
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 13
  store i32* %192, i32** %194, align 8
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 13
  %197 = load i32*, i32** %196, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %205, label %199

199:                                              ; preds = %188
  %200 = load i32, i32* @MAJOR, align 4
  %201 = load i32, i32* @E_NO_MEMORY, align 4
  %202 = call i32 @REPORT_ERROR(i32 %200, i32 %201, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %204 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %203)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

205:                                              ; preds = %188
  br label %206

206:                                              ; preds = %205, %183
  %207 = call i8* (...) @XX_InitSpinlock()
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 12
  store i8* %207, i8** %209, align 8
  %210 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %210, i32 0, i32 12
  %212 = load i8*, i8** %211, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %220, label %214

214:                                              ; preds = %206
  %215 = load i32, i32* @MAJOR, align 4
  %216 = load i32, i32* @E_NO_MEMORY, align 4
  %217 = call i32 @REPORT_ERROR(i32 %215, i32 %216, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %219 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %218)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

220:                                              ; preds = %206
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 11
  %223 = call i32 @INIT_LIST(i32* %222)
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %224, i32 0, i32 10
  %226 = call i32 @INIT_LIST(i32* %225)
  %227 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %227, i32 0, i32 9
  store i64 0, i64* %228, align 8
  %229 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %232, i32 0, i32 8
  store i32 %231, i32* %233, align 8
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 7
  store i32 %236, i32* %238, align 4
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  %244 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %245 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %244, i32 0, i32 5
  store i32* null, i32** %245, align 8
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %247 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %246, i32 0, i32 4
  store i64 0, i64* %247, align 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 3
  store i64 0, i64* %249, align 8
  %250 = call i8* (...) @XX_InitSpinlock()
  %251 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 2
  store i8* %250, i8** %252, align 8
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 2
  %255 = load i8*, i8** %254, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %263, label %257

257:                                              ; preds = %220
  %258 = load i32, i32* @MAJOR, align 4
  %259 = load i32, i32* @E_NO_MEMORY, align 4
  %260 = call i32 @REPORT_ERROR(i32 %258, i32 %259, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %261 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %262 = call i32 @FM_PCD_Free(%struct.TYPE_23__* %261)
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %2, align 8
  br label %265

263:                                              ; preds = %220
  %264 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  store %struct.TYPE_23__* %264, %struct.TYPE_23__** %2, align 8
  br label %265

265:                                              ; preds = %263, %257, %214, %199, %176, %153, %119, %30, %15
  %266 = load %struct.TYPE_23__*, %struct.TYPE_23__** %2, align 8
  ret %struct.TYPE_23__* %266
}

declare dso_local i32 @SANITY_CHECK_RETURN_VALUE(%struct.TYPE_25__*, i32, i32*) #1

declare dso_local i64 @XX_Malloc(i32) #1

declare dso_local i32 @REPORT_ERROR(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @XX_Free(%struct.TYPE_23__*) #1

declare dso_local i64 @FmGetGuestId(i32) #1

declare dso_local i64 @FmGetMuramHandle(i32) #1

declare dso_local i32 @FmGetPhysicalMuramBase(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @FmHcConfigAndInit(%struct.TYPE_23__*) #1

declare dso_local i32 @FM_PCD_Free(%struct.TYPE_23__*) #1

declare dso_local i64 @KgConfig(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i64 @PlcrConfig(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i64 @PrsConfig(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i8* @XX_InitSpinlock(...) #1

declare dso_local i32 @INIT_LIST(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
