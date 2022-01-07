; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pinctrl.c_aml8726_pinctrl_configure_pins.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_pinctrl.c_aml8726_pinctrl_configure_pins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_pinctrl_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_pkg_pin* }
%struct.aml8726_pinctrl_function = type { i8*, %struct.aml8726_pinctrl_pin* }
%struct.aml8726_pinctrl_pin = type { i8*, i32, i32, i32* }
%struct.aml8726_pinctrl_pkg_pin = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"amlogic,function\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"missing amlogic,function attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"unknown function attribute %.*s in FDT\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"amlogic,pull\00", align 1
@aml8726_unknown_pm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"unknown pull attribute %.*s in FDT\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"SoC doesn't support setting pull direction.\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"amlogic,pins\00", align 1
@.str.11 = private unnamed_addr constant [39 x i8] c"missing amlogic,pins attribute in FDT\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"unknown pin attribute %.*s in FDT\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"missing entry for package pin %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"missing pull info for package pin %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @aml8726_pinctrl_configure_pins to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_pinctrl_configure_pins(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.aml8726_pinctrl_softc*, align 8
  %7 = alloca %struct.aml8726_pinctrl_function*, align 8
  %8 = alloca %struct.aml8726_pinctrl_function*, align 8
  %9 = alloca %struct.aml8726_pinctrl_pkg_pin*, align 8
  %10 = alloca %struct.aml8726_pinctrl_pin*, align 8
  %11 = alloca %struct.aml8726_pinctrl_pin*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.aml8726_pinctrl_softc* @device_get_softc(i32 %20)
  store %struct.aml8726_pinctrl_softc* %21, %struct.aml8726_pinctrl_softc** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @OF_node_from_xref(i32 %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %17, align 4
  %25 = call i64 @OF_getprop_alloc(i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %13)
  store i64 %25, i64* %18, align 8
  %26 = load i64, i64* %18, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %3, align 4
  br label %525

32:                                               ; preds = %2
  %33 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %34 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %35, align 8
  store %struct.aml8726_pinctrl_function* %36, %struct.aml8726_pinctrl_function** %8, align 8
  br label %37

37:                                               ; preds = %52, %32
  %38 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %8, align 8
  %39 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %37
  %43 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %8, align 8
  %44 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = load i64, i64* %18, align 8
  %48 = call i64 @strncmp(i8* %45, i8* %46, i64 %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %8, align 8
  %54 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %53, i32 1
  store %struct.aml8726_pinctrl_function* %54, %struct.aml8726_pinctrl_function** %8, align 8
  br label %37

55:                                               ; preds = %50, %37
  %56 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %8, align 8
  %57 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load i32, i32* %4, align 4
  %62 = load i64, i64* %18, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %62, i8* %63)
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @OF_prop_free(i8* %65)
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %3, align 4
  br label %525

68:                                               ; preds = %55
  %69 = load i8*, i8** %13, align 8
  %70 = call i32 @OF_prop_free(i8* %69)
  %71 = load i32, i32* %17, align 4
  %72 = call i64 @OF_getprop_alloc(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %16)
  store i64 %72, i64* %18, align 8
  %73 = load i32, i32* @aml8726_unknown_pm, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i64, i64* %18, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %68
  %77 = load i8*, i8** %16, align 8
  %78 = load i64, i64* %18, align 8
  %79 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 129, i32* %12, align 4
  br label %111

82:                                               ; preds = %76
  %83 = load i8*, i8** %16, align 8
  %84 = load i64, i64* %18, align 8
  %85 = call i64 @strncmp(i8* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 131, i32* %12, align 4
  br label %110

88:                                               ; preds = %82
  %89 = load i8*, i8** %16, align 8
  %90 = load i64, i64* %18, align 8
  %91 = call i64 @strncmp(i8* %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i64 %90)
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 130, i32* %12, align 4
  br label %109

94:                                               ; preds = %88
  %95 = load i8*, i8** %16, align 8
  %96 = load i64, i64* %18, align 8
  %97 = call i64 @strncmp(i8* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i64 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 128, i32* %12, align 4
  br label %108

100:                                              ; preds = %94
  %101 = load i32, i32* %4, align 4
  %102 = load i64, i64* %18, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i64 %102, i8* %103)
  %105 = load i8*, i8** %16, align 8
  %106 = call i32 @OF_prop_free(i8* %105)
  %107 = load i32, i32* @ENXIO, align 4
  store i32 %107, i32* %3, align 4
  br label %525

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %93
  br label %110

110:                                              ; preds = %109, %87
  br label %111

111:                                              ; preds = %110, %81
  br label %112

112:                                              ; preds = %111, %68
  %113 = load i8*, i8** %16, align 8
  %114 = call i32 @OF_prop_free(i8* %113)
  %115 = load i32, i32* %12, align 4
  switch i32 %115, label %127 [
    i32 130, label %116
    i32 128, label %116
  ]

116:                                              ; preds = %112, %112
  %117 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %118 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = call i32 (i32, i8*, ...) @device_printf(i32 %123, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %3, align 4
  br label %525

126:                                              ; preds = %116
  br label %128

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %126
  %129 = load i32, i32* %17, align 4
  %130 = call i64 @OF_getprop_alloc(i32 %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8** %14)
  store i64 %130, i64* %18, align 8
  %131 = load i64, i64* %18, align 8
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* %4, align 4
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %3, align 4
  br label %525

137:                                              ; preds = %128
  %138 = load i8*, i8** %14, align 8
  store i8* %138, i8** %15, align 8
  br label %139

139:                                              ; preds = %519, %248, %233, %203, %137
  %140 = load i64, i64* %18, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %522

142:                                              ; preds = %139
  %143 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %8, align 8
  %144 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %143, i32 0, i32 1
  %145 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %144, align 8
  store %struct.aml8726_pinctrl_pin* %145, %struct.aml8726_pinctrl_pin** %11, align 8
  br label %146

146:                                              ; preds = %161, %142
  %147 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %148 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %151, label %164

151:                                              ; preds = %146
  %152 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %153 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8*, i8** %15, align 8
  %156 = load i64, i64* %18, align 8
  %157 = call i64 @strncmp(i8* %154, i8* %155, i64 %156)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %164

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160
  %162 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %163 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %162, i32 1
  store %struct.aml8726_pinctrl_pin* %163, %struct.aml8726_pinctrl_pin** %11, align 8
  br label %146

164:                                              ; preds = %159, %146
  %165 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %166 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = icmp eq i8* %167, null
  br i1 %168, label %169, label %174

169:                                              ; preds = %164
  %170 = load i32, i32* %4, align 4
  %171 = load i64, i64* %18, align 8
  %172 = load i8*, i8** %15, align 8
  %173 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i64 %171, i8* %172)
  br label %174

174:                                              ; preds = %169, %164
  br label %175

175:                                              ; preds = %185, %174
  %176 = load i8*, i8** %15, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i64, i64* %18, align 8
  %182 = icmp ne i64 %181, 0
  br label %183

183:                                              ; preds = %180, %175
  %184 = phi i1 [ false, %175 ], [ %182, %180 ]
  br i1 %184, label %185, label %190

185:                                              ; preds = %183
  %186 = load i8*, i8** %15, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %15, align 8
  %188 = load i64, i64* %18, align 8
  %189 = add nsw i64 %188, -1
  store i64 %189, i64* %18, align 8
  br label %175

190:                                              ; preds = %183
  %191 = load i64, i64* %18, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load i8*, i8** %15, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %15, align 8
  %196 = load i64, i64* %18, align 8
  %197 = add nsw i64 %196, -1
  store i64 %197, i64* %18, align 8
  br label %198

198:                                              ; preds = %193, %190
  %199 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %200 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %199, i32 0, i32 0
  %201 = load i8*, i8** %200, align 8
  %202 = icmp eq i8* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %198
  br label %139

204:                                              ; preds = %198
  %205 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %206 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 2
  %208 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %207, align 8
  store %struct.aml8726_pinctrl_pkg_pin* %208, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  br label %209

209:                                              ; preds = %225, %204
  %210 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %211 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %210, i32 0, i32 3
  %212 = load i32*, i32** %211, align 8
  %213 = icmp ne i32* %212, null
  br i1 %213, label %214, label %228

214:                                              ; preds = %209
  %215 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %216 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %219 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %218, i32 0, i32 3
  %220 = load i32*, i32** %219, align 8
  %221 = call i64 @strcmp(i32* %217, i32* %220)
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %214
  br label %228

224:                                              ; preds = %214
  br label %225

225:                                              ; preds = %224
  %226 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %227 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %226, i32 1
  store %struct.aml8726_pinctrl_pkg_pin* %227, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  br label %209

228:                                              ; preds = %223, %209
  %229 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %230 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %229, i32 0, i32 3
  %231 = load i32*, i32** %230, align 8
  %232 = icmp eq i32* %231, null
  br i1 %232, label %233, label %239

233:                                              ; preds = %228
  %234 = load i32, i32* %4, align 4
  %235 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %236 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %235, i32 0, i32 3
  %237 = load i32*, i32** %236, align 8
  %238 = call i32 (i32, i8*, ...) @device_printf(i32 %234, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32* %237)
  br label %139

239:                                              ; preds = %228
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* @aml8726_unknown_pm, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %239
  %244 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %245 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = icmp eq i32 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %243
  %249 = load i32, i32* %4, align 4
  %250 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %251 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 (i32, i8*, ...) @device_printf(i32 %249, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i64 0, i64 0), i32* %252)
  br label %139

254:                                              ; preds = %243, %239
  %255 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %256 = call i32 @AML_PINCTRL_LOCK(%struct.aml8726_pinctrl_softc* %255)
  %257 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %258 = getelementptr inbounds %struct.aml8726_pinctrl_softc, %struct.aml8726_pinctrl_softc* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 1
  %260 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %259, align 8
  store %struct.aml8726_pinctrl_function* %260, %struct.aml8726_pinctrl_function** %7, align 8
  br label %261

261:                                              ; preds = %342, %254
  %262 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %7, align 8
  %263 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %262, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = icmp ne i8* %264, null
  br i1 %265, label %266, label %345

266:                                              ; preds = %261
  %267 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %7, align 8
  %268 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %267, i32 0, i32 1
  %269 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %268, align 8
  store %struct.aml8726_pinctrl_pin* %269, %struct.aml8726_pinctrl_pin** %10, align 8
  br label %270

270:                                              ; preds = %338, %266
  %271 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %272 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = icmp ne i8* %273, null
  br i1 %274, label %275, label %341

275:                                              ; preds = %270
  %276 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %277 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %278 = icmp eq %struct.aml8726_pinctrl_pin* %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %275
  br label %338

280:                                              ; preds = %275
  %281 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %282 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %281, i32 0, i32 3
  %283 = load i32*, i32** %282, align 8
  %284 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %285 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %284, i32 0, i32 3
  %286 = load i32*, i32** %285, align 8
  %287 = call i64 @strcmp(i32* %283, i32* %286)
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %338

290:                                              ; preds = %280
  %291 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %292 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %290
  br label %338

296:                                              ; preds = %290
  %297 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %298 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %319

301:                                              ; preds = %296
  %302 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %303 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %304 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @MUX_READ_4(%struct.aml8726_pinctrl_softc* %302, i32 %305)
  store i32 %306, i32* %19, align 4
  %307 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %308 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = xor i32 %309, -1
  %311 = load i32, i32* %19, align 4
  %312 = and i32 %311, %310
  store i32 %312, i32* %19, align 4
  %313 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %314 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %315 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %19, align 4
  %318 = call i32 @MUX_WRITE_4(%struct.aml8726_pinctrl_softc* %313, i32 %316, i32 %317)
  br label %337

319:                                              ; preds = %296
  %320 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %321 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %322 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @AOMUX_READ_4(%struct.aml8726_pinctrl_softc* %320, i32 %323)
  store i32 %324, i32* %19, align 4
  %325 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %326 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = xor i32 %327, -1
  %329 = load i32, i32* %19, align 4
  %330 = and i32 %329, %328
  store i32 %330, i32* %19, align 4
  %331 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %332 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %333 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 4
  %335 = load i32, i32* %19, align 4
  %336 = call i32 @AOMUX_WRITE_4(%struct.aml8726_pinctrl_softc* %331, i32 %334, i32 %335)
  br label %337

337:                                              ; preds = %319, %301
  br label %338

338:                                              ; preds = %337, %295, %289, %279
  %339 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %10, align 8
  %340 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %339, i32 1
  store %struct.aml8726_pinctrl_pin* %340, %struct.aml8726_pinctrl_pin** %10, align 8
  br label %270

341:                                              ; preds = %270
  br label %342

342:                                              ; preds = %341
  %343 = load %struct.aml8726_pinctrl_function*, %struct.aml8726_pinctrl_function** %7, align 8
  %344 = getelementptr inbounds %struct.aml8726_pinctrl_function, %struct.aml8726_pinctrl_function* %343, i32 1
  store %struct.aml8726_pinctrl_function* %344, %struct.aml8726_pinctrl_function** %7, align 8
  br label %261

345:                                              ; preds = %261
  %346 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %347 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %390

350:                                              ; preds = %345
  %351 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %352 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 4
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %355, label %372

355:                                              ; preds = %350
  %356 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %357 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %358 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @MUX_READ_4(%struct.aml8726_pinctrl_softc* %356, i32 %359)
  store i32 %360, i32* %19, align 4
  %361 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %362 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %19, align 4
  %365 = or i32 %364, %363
  store i32 %365, i32* %19, align 4
  %366 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %367 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %368 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %367, i32 0, i32 2
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %19, align 4
  %371 = call i32 @MUX_WRITE_4(%struct.aml8726_pinctrl_softc* %366, i32 %369, i32 %370)
  br label %389

372:                                              ; preds = %350
  %373 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %374 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %375 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @AOMUX_READ_4(%struct.aml8726_pinctrl_softc* %373, i32 %376)
  store i32 %377, i32* %19, align 4
  %378 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %379 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %378, i32 0, i32 1
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* %19, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %19, align 4
  %383 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %384 = load %struct.aml8726_pinctrl_pin*, %struct.aml8726_pinctrl_pin** %11, align 8
  %385 = getelementptr inbounds %struct.aml8726_pinctrl_pin, %struct.aml8726_pinctrl_pin* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* %19, align 4
  %388 = call i32 @AOMUX_WRITE_4(%struct.aml8726_pinctrl_softc* %383, i32 %386, i32 %387)
  br label %389

389:                                              ; preds = %372, %355
  br label %390

390:                                              ; preds = %389, %345
  %391 = load i32, i32* %12, align 4
  switch i32 %391, label %518 [
    i32 130, label %392
    i32 128, label %392
    i32 131, label %456
    i32 129, label %456
  ]

392:                                              ; preds = %390, %390
  %393 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %394 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %393, i32 0, i32 1
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %425

397:                                              ; preds = %392
  %398 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %399 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %400 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @PUD_READ_4(%struct.aml8726_pinctrl_softc* %398, i32 %401)
  store i32 %402, i32* %19, align 4
  %403 = load i32, i32* %12, align 4
  %404 = icmp eq i32 %403, 130
  br i1 %404, label %405, label %412

405:                                              ; preds = %397
  %406 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %407 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %19, align 4
  %411 = and i32 %410, %409
  store i32 %411, i32* %19, align 4
  br label %418

412:                                              ; preds = %397
  %413 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %414 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* %19, align 4
  %417 = or i32 %416, %415
  store i32 %417, i32* %19, align 4
  br label %418

418:                                              ; preds = %412, %405
  %419 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %420 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %421 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %420, i32 0, i32 2
  %422 = load i32, i32* %421, align 8
  %423 = load i32, i32* %19, align 4
  %424 = call i32 @PUD_WRITE_4(%struct.aml8726_pinctrl_softc* %419, i32 %422, i32 %423)
  br label %455

425:                                              ; preds = %392
  %426 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %427 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %428 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = call i32 @AOPUD_READ_4(%struct.aml8726_pinctrl_softc* %426, i32 %429)
  store i32 %430, i32* %19, align 4
  %431 = load i32, i32* %12, align 4
  %432 = icmp eq i32 %431, 130
  br i1 %432, label %433, label %441

433:                                              ; preds = %425
  %434 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %435 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 8
  %437 = shl i32 %436, 16
  %438 = xor i32 %437, -1
  %439 = load i32, i32* %19, align 4
  %440 = and i32 %439, %438
  store i32 %440, i32* %19, align 4
  br label %448

441:                                              ; preds = %425
  %442 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %443 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 8
  %445 = shl i32 %444, 16
  %446 = load i32, i32* %19, align 4
  %447 = or i32 %446, %445
  store i32 %447, i32* %19, align 4
  br label %448

448:                                              ; preds = %441, %433
  %449 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %450 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %451 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* %19, align 4
  %454 = call i32 @AOPUD_WRITE_4(%struct.aml8726_pinctrl_softc* %449, i32 %452, i32 %453)
  br label %455

455:                                              ; preds = %448, %418
  br label %456

456:                                              ; preds = %390, %390, %455
  %457 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %458 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %457, i32 0, i32 1
  %459 = load i32, i32* %458, align 4
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %489

461:                                              ; preds = %456
  %462 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %463 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %464 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @PEN_READ_4(%struct.aml8726_pinctrl_softc* %462, i32 %465)
  store i32 %466, i32* %19, align 4
  %467 = load i32, i32* %12, align 4
  %468 = icmp eq i32 %467, 131
  br i1 %468, label %469, label %476

469:                                              ; preds = %461
  %470 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %471 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %470, i32 0, i32 0
  %472 = load i32, i32* %471, align 8
  %473 = xor i32 %472, -1
  %474 = load i32, i32* %19, align 4
  %475 = and i32 %474, %473
  store i32 %475, i32* %19, align 4
  br label %482

476:                                              ; preds = %461
  %477 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %478 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %477, i32 0, i32 0
  %479 = load i32, i32* %478, align 8
  %480 = load i32, i32* %19, align 4
  %481 = or i32 %480, %479
  store i32 %481, i32* %19, align 4
  br label %482

482:                                              ; preds = %476, %469
  %483 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %484 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %485 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %484, i32 0, i32 2
  %486 = load i32, i32* %485, align 8
  %487 = load i32, i32* %19, align 4
  %488 = call i32 @PEN_WRITE_4(%struct.aml8726_pinctrl_softc* %483, i32 %486, i32 %487)
  br label %517

489:                                              ; preds = %456
  %490 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %491 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %492 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = call i32 @AOPEN_READ_4(%struct.aml8726_pinctrl_softc* %490, i32 %493)
  store i32 %494, i32* %19, align 4
  %495 = load i32, i32* %12, align 4
  %496 = icmp eq i32 %495, 131
  br i1 %496, label %497, label %504

497:                                              ; preds = %489
  %498 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %499 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = xor i32 %500, -1
  %502 = load i32, i32* %19, align 4
  %503 = and i32 %502, %501
  store i32 %503, i32* %19, align 4
  br label %510

504:                                              ; preds = %489
  %505 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %506 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* %19, align 4
  %509 = or i32 %508, %507
  store i32 %509, i32* %19, align 4
  br label %510

510:                                              ; preds = %504, %497
  %511 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %512 = load %struct.aml8726_pinctrl_pkg_pin*, %struct.aml8726_pinctrl_pkg_pin** %9, align 8
  %513 = getelementptr inbounds %struct.aml8726_pinctrl_pkg_pin, %struct.aml8726_pinctrl_pkg_pin* %512, i32 0, i32 2
  %514 = load i32, i32* %513, align 8
  %515 = load i32, i32* %19, align 4
  %516 = call i32 @AOPEN_WRITE_4(%struct.aml8726_pinctrl_softc* %511, i32 %514, i32 %515)
  br label %517

517:                                              ; preds = %510, %482
  br label %519

518:                                              ; preds = %390
  br label %519

519:                                              ; preds = %518, %517
  %520 = load %struct.aml8726_pinctrl_softc*, %struct.aml8726_pinctrl_softc** %6, align 8
  %521 = call i32 @AML_PINCTRL_UNLOCK(%struct.aml8726_pinctrl_softc* %520)
  br label %139

522:                                              ; preds = %139
  %523 = load i8*, i8** %14, align 8
  %524 = call i32 @OF_prop_free(i8* %523)
  store i32 0, i32* %3, align 4
  br label %525

525:                                              ; preds = %522, %133, %122, %100, %60, %28
  %526 = load i32, i32* %3, align 4
  ret i32 %526
}

declare dso_local %struct.aml8726_pinctrl_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_node_from_xref(i32) #1

declare dso_local i64 @OF_getprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i64) #1

declare dso_local i32 @OF_prop_free(i8*) #1

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @AML_PINCTRL_LOCK(%struct.aml8726_pinctrl_softc*) #1

declare dso_local i32 @MUX_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @MUX_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @AOMUX_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @AOMUX_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @PUD_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @PUD_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @AOPUD_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @AOPUD_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @PEN_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @PEN_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @AOPEN_READ_4(%struct.aml8726_pinctrl_softc*, i32) #1

declare dso_local i32 @AOPEN_WRITE_4(%struct.aml8726_pinctrl_softc*, i32, i32) #1

declare dso_local i32 @AML_PINCTRL_UNLOCK(%struct.aml8726_pinctrl_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
