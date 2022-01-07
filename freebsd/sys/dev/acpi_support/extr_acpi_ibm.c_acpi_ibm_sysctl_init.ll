; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_ibm.c_acpi_ibm_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_ibm.c_acpi_ibm_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_ibm_softc = type { i32, i32, i32, i32, i32, i32, i32, i8*, i32*, i32, i8*, i32*, i32*, i32* }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"MMTS\00", align 1
@FALSE = common dso_local global i32 0, align 4
@IBM_NAME_KEYLIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"\\UCMS\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"\\CMOS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\\CMS\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"\\LGHT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"LEDB\00", align 1
@IBM_NAME_WLAN_BT_GET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"GFAN\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"\\FSPD\00", align 1
@IBM_NAME_THERMAL_GET = common dso_local global i32 0, align 4
@IBM_NAME_THERMAL_UPDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_ibm_softc*, i32)* @acpi_ibm_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ibm_sysctl_init(%struct.acpi_ibm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_ibm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.acpi_ibm_softc* %0, %struct.acpi_ibm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %215 [
    i32 139, label %10
    i32 140, label %12
    i32 134, label %16
    i32 141, label %16
    i32 129, label %16
    i32 132, label %16
    i32 133, label %18
    i32 130, label %36
    i32 142, label %148
    i32 128, label %148
    i32 137, label %160
    i32 138, label %184
    i32 136, label %184
    i32 131, label %193
    i32 135, label %213
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @TRUE, align 4
  store i32 %11, i32* %3, align 4
  br label %217

12:                                               ; preds = %2
  %13 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  br label %217

16:                                               ; preds = %2, %2, %2, %2
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* %3, align 4
  br label %217

18:                                               ; preds = %2
  %19 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %23 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %22, i32 0, i32 13
  %24 = call i32 @AcpiGetHandle(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32** %23)
  %25 = call i8* @ACPI_SUCCESS(i32 %24)
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %29 = call i32 @acpi_ibm_mic_led_set(%struct.acpi_ibm_softc* %28, i32 0)
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %217

31:                                               ; preds = %18
  %32 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %33 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %32, i32 0, i32 13
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %217

36:                                               ; preds = %2
  %37 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %38 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %37, i32 0, i32 12
  store i32* null, i32** %38, align 8
  %39 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IBM_NAME_KEYLIGHT, align 4
  %43 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %43, i32 0, i32 1
  %45 = call i32 @acpi_GetInteger(i32 %41, i32 %42, i32* %44)
  %46 = call i8* @ACPI_SUCCESS(i32 %45)
  %47 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %47, i32 0, i32 10
  store i8* %46, i8** %48, align 8
  %49 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %52, i32 0, i32 11
  %54 = call i32 @AcpiGetHandle(i32 %51, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32** %53)
  %55 = call i8* @ACPI_SUCCESS(i32 %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %36
  %58 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %59 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %61, i32 0, i32 11
  %63 = call i32 @AcpiGetHandle(i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32** %62)
  %64 = call i8* @ACPI_SUCCESS(i32 %63)
  %65 = icmp ne i8* %64, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %57
  %67 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %67, i32 0, i32 9
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %71 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %70, i32 0, i32 11
  %72 = call i32 @AcpiGetHandle(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32** %71)
  %73 = call i8* @ACPI_SUCCESS(i32 %72)
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %96

75:                                               ; preds = %66, %57, %36
  %76 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %77 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %76, i32 0, i32 11
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @AcpiGetType(i32* %78, i32* %7)
  %80 = call i8* @ACPI_SUCCESS(i32 %79)
  %81 = icmp ne i8* %80, null
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @ACPI_TYPE_METHOD, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %96

86:                                               ; preds = %82
  %87 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %88 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %87, i32 0, i32 2
  store i32 12, i32* %88, align 8
  %89 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %90 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %89, i32 0, i32 3
  store i32 13, i32* %90, align 4
  %91 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %92 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %91, i32 0, i32 11
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %94, i32 0, i32 12
  store i32* %93, i32** %95, align 8
  br label %114

96:                                               ; preds = %82, %75, %66
  %97 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %98 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %97, i32 0, i32 9
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %101 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %100, i32 0, i32 11
  %102 = call i32 @AcpiGetHandle(i32 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32** %101)
  %103 = call i8* @ACPI_SUCCESS(i32 %102)
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %96
  %106 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %106, i32 0, i32 2
  store i32 1, i32* %107, align 8
  %108 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %109 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %108, i32 0, i32 3
  store i32 0, i32* %109, align 4
  br label %113

110:                                              ; preds = %96
  %111 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %112 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %111, i32 0, i32 11
  store i32* null, i32** %112, align 8
  br label %113

113:                                              ; preds = %110, %105
  br label %114

114:                                              ; preds = %113, %86
  %115 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %116 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %115, i32 0, i32 11
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %114
  %120 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %121 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @AcpiGetHandle(i32 %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32** %8)
  %124 = call i32 @ACPI_FAILURE(i32 %123)
  %125 = icmp ne i32 %124, 0
  br label %126

126:                                              ; preds = %119, %114
  %127 = phi i1 [ false, %114 ], [ %125, %119 ]
  %128 = zext i1 %127 to i32
  %129 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %130 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %132 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %131, i32 0, i32 10
  %133 = load i8*, i8** %132, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = load i32, i32* @TRUE, align 4
  store i32 %136, i32* %3, align 4
  br label %217

137:                                              ; preds = %126
  %138 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %139 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %144 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %143, i32 0, i32 1
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* @TRUE, align 4
  store i32 %145, i32* %3, align 4
  br label %217

146:                                              ; preds = %137
  %147 = load i32, i32* @FALSE, align 4
  store i32 %147, i32* %3, align 4
  br label %217

148:                                              ; preds = %2, %2
  %149 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %150 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %149, i32 0, i32 9
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @IBM_NAME_WLAN_BT_GET, align 4
  %153 = call i32 @acpi_GetInteger(i32 %151, i32 %152, i32* %6)
  %154 = call i8* @ACPI_SUCCESS(i32 %153)
  %155 = icmp ne i8* %154, null
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %3, align 4
  br label %217

158:                                              ; preds = %148
  %159 = load i32, i32* @FALSE, align 4
  store i32 %159, i32* %3, align 4
  br label %217

160:                                              ; preds = %2
  %161 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %162 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %161, i32 0, i32 9
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %165 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %164, i32 0, i32 8
  %166 = call i32 @AcpiGetHandle(i32 %163, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32** %165)
  %167 = call i8* @ACPI_SUCCESS(i32 %166)
  %168 = icmp ne i8* %167, null
  br i1 %168, label %178, label %169

169:                                              ; preds = %160
  %170 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %171 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %174 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %173, i32 0, i32 8
  %175 = call i32 @AcpiGetHandle(i32 %172, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32** %174)
  %176 = call i8* @ACPI_SUCCESS(i32 %175)
  %177 = icmp ne i8* %176, null
  br label %178

178:                                              ; preds = %169, %160
  %179 = phi i1 [ true, %160 ], [ %177, %169 ]
  %180 = zext i1 %179 to i32
  %181 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %182 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %181, i32 0, i32 5
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* @TRUE, align 4
  store i32 %183, i32* %3, align 4
  br label %217

184:                                              ; preds = %2, %2
  %185 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %186 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %3, align 4
  br label %217

191:                                              ; preds = %184
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %3, align 4
  br label %217

193:                                              ; preds = %2
  %194 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @IBM_NAME_THERMAL_GET, align 4
  %198 = call i32 @acpi_GetInteger(i32 %196, i32 %197, i32* %6)
  %199 = call i8* @ACPI_SUCCESS(i32 %198)
  %200 = icmp ne i8* %199, null
  br i1 %200, label %201, label %211

201:                                              ; preds = %193
  %202 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %203 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @IBM_NAME_THERMAL_UPDT, align 4
  %206 = call i32 @acpi_GetInteger(i32 %204, i32 %205, i32* %6)
  %207 = call i8* @ACPI_SUCCESS(i32 %206)
  %208 = load %struct.acpi_ibm_softc*, %struct.acpi_ibm_softc** %4, align 8
  %209 = getelementptr inbounds %struct.acpi_ibm_softc, %struct.acpi_ibm_softc* %208, i32 0, i32 7
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* @TRUE, align 4
  store i32 %210, i32* %3, align 4
  br label %217

211:                                              ; preds = %193
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %3, align 4
  br label %217

213:                                              ; preds = %2
  %214 = load i32, i32* @TRUE, align 4
  store i32 %214, i32* %3, align 4
  br label %217

215:                                              ; preds = %2
  %216 = load i32, i32* @FALSE, align 4
  store i32 %216, i32* %3, align 4
  br label %217

217:                                              ; preds = %215, %213, %211, %201, %191, %189, %178, %158, %156, %146, %142, %135, %34, %27, %16, %12, %10
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

declare dso_local i8* @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiGetHandle(i32, i8*, i32**) #1

declare dso_local i32 @acpi_ibm_mic_led_set(%struct.acpi_ibm_softc*, i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i32 @AcpiGetType(i32*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
