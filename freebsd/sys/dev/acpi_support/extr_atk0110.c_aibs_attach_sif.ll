; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach_sif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_atk0110.c_aibs_attach_sif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aibs_softc = type { i32, %struct.aibs_sensor*, %struct.aibs_sensor*, %struct.aibs_sensor*, i32, %struct.sysctl_oid*, %struct.sysctl_oid*, %struct.sysctl_oid* }
%struct.aibs_sensor = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32 }

@__const.aibs_attach_sif.name = private unnamed_addr constant [5 x i8] c"?SIF\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"volt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Unsupported sensor type %d\00", align 1
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"%s not found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"%s[0]: invalid type\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: invalid package\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"%s: malformed package: %i/%i, assume %i\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"%s: no members in the package\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aibs_softc*, i32)* @aibs_attach_sif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aibs_attach_sif(%struct.aibs_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aibs_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.aibs_sensor*, align 8
  %13 = alloca %struct.sysctl_oid**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.aibs_softc* %0, %struct.aibs_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = bitcast [5 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.aibs_attach_sif.name, i32 0, i32 0), i64 5, i1 false)
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %33 [
    i32 128, label %21
    i32 129, label %25
    i32 130, label %29
  ]

21:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %22 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 86, i8* %22, align 1
  %23 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %24 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %23, i32 0, i32 7
  store %struct.sysctl_oid** %24, %struct.sysctl_oid*** %13, align 8
  br label %36

25:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %26 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 84, i8* %26, align 1
  %27 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %28 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %27, i32 0, i32 6
  store %struct.sysctl_oid** %28, %struct.sysctl_oid*** %13, align 8
  br label %36

29:                                               ; preds = %2
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %30 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  store i8 70, i8* %30, align 1
  %31 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %32 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %31, i32 0, i32 5
  store %struct.sysctl_oid** %32, %struct.sysctl_oid*** %13, align 8
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %33, %29, %25, %21
  %37 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  store i32 %37, i32* %38, align 8
  %39 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %40 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %43 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %44 = call i32 @AcpiEvaluateObjectTyped(i32 %41, i8* %42, i32* null, %struct.TYPE_11__* %8, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @ACPI_FAILURE(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %36
  %49 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %50 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %53 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %3, align 4
  br label %213

55:                                               ; preds = %36
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %9, align 8
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  store %struct.TYPE_10__* %61, %struct.TYPE_10__** %10, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %70 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %73 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %72)
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @AcpiOsFree(%struct.TYPE_10__* %75)
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %3, align 4
  br label %213

78:                                               ; preds = %55
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %15, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sub nsw i32 %87, 1
  %89 = load i32, i32* %15, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %78
  %92 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %93 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %96 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = call i32 @AcpiOsFree(%struct.TYPE_10__* %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %3, align 4
  br label %213

101:                                              ; preds = %78
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  %107 = load i32, i32* %15, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %101
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %17, align 4
  %111 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %112 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 1
  %121 = load i32, i32* %15, align 4
  %122 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %114, i32 %115, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %109, %101
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %15, align 4
  %126 = icmp slt i32 %125, 1
  br i1 %126, label %127, label %137

127:                                              ; preds = %124
  %128 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %129 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds [5 x i8], [5 x i8]* %6, i64 0, i64 0
  %132 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %130, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %131)
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = call i32 @AcpiOsFree(%struct.TYPE_10__* %134)
  %136 = load i32, i32* @ENXIO, align 4
  store i32 %136, i32* %3, align 4
  br label %213

137:                                              ; preds = %124
  %138 = load i32, i32* %15, align 4
  %139 = sext i32 %138 to i64
  %140 = mul i64 4, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @M_DEVBUF, align 4
  %143 = load i32, i32* @M_WAITOK, align 4
  %144 = load i32, i32* @M_ZERO, align 4
  %145 = or i32 %143, %144
  %146 = call %struct.aibs_sensor* @malloc(i32 %141, i32 %142, i32 %145)
  store %struct.aibs_sensor* %146, %struct.aibs_sensor** %12, align 8
  %147 = load i32, i32* %5, align 4
  switch i32 %147, label %160 [
    i32 128, label %148
    i32 129, label %152
    i32 130, label %156
  ]

148:                                              ; preds = %137
  %149 = load %struct.aibs_sensor*, %struct.aibs_sensor** %12, align 8
  %150 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %151 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %150, i32 0, i32 3
  store %struct.aibs_sensor* %149, %struct.aibs_sensor** %151, align 8
  br label %160

152:                                              ; preds = %137
  %153 = load %struct.aibs_sensor*, %struct.aibs_sensor** %12, align 8
  %154 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %155 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %154, i32 0, i32 2
  store %struct.aibs_sensor* %153, %struct.aibs_sensor** %155, align 8
  br label %160

156:                                              ; preds = %137
  %157 = load %struct.aibs_sensor*, %struct.aibs_sensor** %12, align 8
  %158 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %159 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %158, i32 0, i32 1
  store %struct.aibs_sensor* %157, %struct.aibs_sensor** %159, align 8
  br label %160

160:                                              ; preds = %137, %156, %152, %148
  %161 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %162 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @device_get_sysctl_ctx(i32 %163)
  %165 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %166 = getelementptr inbounds %struct.aibs_softc, %struct.aibs_softc* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @device_get_sysctl_tree(i32 %167)
  %169 = call i32 @SYSCTL_CHILDREN(i32 %168)
  %170 = load i32, i32* %5, align 4
  %171 = load i8*, i8** %11, align 8
  %172 = load i32, i32* @CTLFLAG_RD, align 4
  %173 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32 %164, i32 %169, i32 %170, i8* %171, i32 %172, i32* null, i32* null)
  %174 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %13, align 8
  store %struct.sysctl_oid* %173, %struct.sysctl_oid** %174, align 8
  store i32 0, i32* %14, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 1
  store %struct.TYPE_10__* %176, %struct.TYPE_10__** %10, align 8
  br label %177

177:                                              ; preds = %204, %160
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %209

181:                                              ; preds = %177
  %182 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %184 = load %struct.aibs_sensor*, %struct.aibs_sensor** %12, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %184, i64 %186
  %188 = call i32 @aibs_add_sensor(%struct.aibs_softc* %182, %struct.TYPE_10__* %183, %struct.aibs_sensor* %187, i8** %18)
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %16, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %203

191:                                              ; preds = %181
  %192 = load %struct.aibs_softc*, %struct.aibs_softc** %4, align 8
  %193 = load %struct.sysctl_oid**, %struct.sysctl_oid*** %13, align 8
  %194 = load %struct.sysctl_oid*, %struct.sysctl_oid** %193, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i32, i32* %14, align 4
  %197 = load %struct.aibs_sensor*, %struct.aibs_sensor** %12, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.aibs_sensor, %struct.aibs_sensor* %197, i64 %199
  %201 = load i8*, i8** %18, align 8
  %202 = call i32 @aibs_sensor_added(%struct.aibs_softc* %192, %struct.sysctl_oid* %194, i8* %195, i32 %196, %struct.aibs_sensor* %200, i8* %201)
  br label %203

203:                                              ; preds = %191, %181
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %14, align 4
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 1
  store %struct.TYPE_10__* %208, %struct.TYPE_10__** %10, align 8
  br label %177

209:                                              ; preds = %177
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = call i32 @AcpiOsFree(%struct.TYPE_10__* %211)
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %209, %127, %91, %68, %48
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @panic(i8*, i32) #2

declare dso_local i32 @AcpiEvaluateObjectTyped(i32, i8*, i32*, %struct.TYPE_11__*, i32) #2

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #2

declare dso_local i32 @AcpiOsFree(%struct.TYPE_10__*) #2

declare dso_local %struct.aibs_sensor* @malloc(i32, i32, i32) #2

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32, i32, i32, i8*, i32, i32*, i32*) #2

declare dso_local i32 @device_get_sysctl_ctx(i32) #2

declare dso_local i32 @SYSCTL_CHILDREN(i32) #2

declare dso_local i32 @device_get_sysctl_tree(i32) #2

declare dso_local i32 @aibs_add_sensor(%struct.aibs_softc*, %struct.TYPE_10__*, %struct.aibs_sensor*, i8**) #2

declare dso_local i32 @aibs_sensor_added(%struct.aibs_softc*, %struct.sysctl_oid*, i8*, i32, %struct.aibs_sensor*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
