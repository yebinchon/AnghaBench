; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_asus.c_acpi_asus_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_asus.c_acpi_asus_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_asus_softc = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"L3H\00", align 1
@ACPI_TYPE_INTEGER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_asus_softc*, i32)* @acpi_asus_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_asus_sysctl_init(%struct.acpi_asus_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_asus_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__, align 8
  %8 = alloca [2 x %struct.TYPE_11__], align 16
  %9 = alloca %struct.TYPE_11__, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  store %struct.acpi_asus_softc* %0, %struct.acpi_asus_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %267 [
    i32 133, label %12
    i32 130, label %79
    i32 129, label %106
    i32 132, label %186
    i32 131, label %213
    i32 128, label %240
  ]

12:                                               ; preds = %2
  %13 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %13, i32 0, i32 6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %23, i32 0, i32 6
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %28, i32 0, i32 0
  %30 = call i32 @acpi_GetInteger(i32 %22, i32 %27, i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ACPI_SUCCESS(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %3, align 4
  br label %269

36:                                               ; preds = %19
  br label %77

37:                                               ; preds = %12
  %38 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %39 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %38, i32 0, i32 6
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %48, i32 0, i32 6
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @AcpiEvaluateObject(i32 %47, i32 %52, %struct.TYPE_10__* null, %struct.TYPE_12__* null)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @ACPI_FAILURE(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %44
  %58 = load i32, i32* @FALSE, align 4
  store i32 %58, i32* %3, align 4
  br label %269

59:                                               ; preds = %44
  %60 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %61 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %63, i32 0, i32 6
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @AcpiEvaluateObject(i32 %62, i32 %67, %struct.TYPE_10__* null, %struct.TYPE_12__* null)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @ACPI_FAILURE(i32 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* @FALSE, align 4
  store i32 %73, i32* %3, align 4
  br label %269

74:                                               ; preds = %59
  %75 = load i32, i32* @TRUE, align 4
  store i32 %75, i32* %3, align 4
  br label %269

76:                                               ; preds = %37
  br label %77

77:                                               ; preds = %76, %36
  %78 = load i32, i32* @FALSE, align 4
  store i32 %78, i32* %3, align 4
  br label %269

79:                                               ; preds = %2
  %80 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %80, i32 0, i32 6
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %79
  %87 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %88 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %91 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %90, i32 0, i32 6
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %96 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %95, i32 0, i32 1
  %97 = call i32 @acpi_GetInteger(i32 %89, i32 %94, i32* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 @ACPI_SUCCESS(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i32, i32* @TRUE, align 4
  store i32 %102, i32* %3, align 4
  br label %269

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %79
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %3, align 4
  br label %269

106:                                              ; preds = %2
  %107 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %108 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %107, i32 0, i32 6
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %184

113:                                              ; preds = %106
  %114 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %115 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %114, i32 0, i32 6
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @strncmp(i32 %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %165

121:                                              ; preds = %113
  %122 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %123 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 16
  %125 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  store i32 2, i32* %127, align 8
  %128 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %129 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %8, i64 0, i64 1
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 16
  %131 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %8, i64 0, i64 1
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 0
  store i32 3, i32* %133, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 2, i32* %134, align 8
  %135 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %8, i64 0, i64 0
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store %struct.TYPE_11__* %135, %struct.TYPE_11__** %136, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  store i32 16, i32* %137, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %138, align 8
  %139 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %140 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %143 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %142, i32 0, i32 6
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @AcpiEvaluateObject(i32 %141, i32 %146, %struct.TYPE_10__* %10, %struct.TYPE_12__* %7)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = call i32 @ACPI_SUCCESS(i32 %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %164

151:                                              ; preds = %121
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = load i8*, i8** @ACPI_TYPE_INTEGER, align 8
  %155 = icmp eq i8* %153, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = ashr i32 %159, 8
  %161 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %162 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @TRUE, align 4
  store i32 %163, i32* %3, align 4
  br label %269

164:                                              ; preds = %151, %121
  br label %183

165:                                              ; preds = %113
  %166 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %167 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %170 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %169, i32 0, i32 6
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %175 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %174, i32 0, i32 2
  %176 = call i32 @acpi_GetInteger(i32 %168, i32 %173, i32* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = call i32 @ACPI_SUCCESS(i32 %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %165
  %181 = load i32, i32* @TRUE, align 4
  store i32 %181, i32* %3, align 4
  br label %269

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %164
  br label %184

184:                                              ; preds = %183, %106
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %3, align 4
  br label %269

186:                                              ; preds = %2
  %187 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %188 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %187, i32 0, i32 6
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %211

193:                                              ; preds = %186
  %194 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %195 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %198 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %197, i32 0, i32 6
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %203 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %202, i32 0, i32 3
  %204 = call i32 @acpi_GetInteger(i32 %196, i32 %201, i32* %203)
  store i32 %204, i32* %6, align 4
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @ACPI_SUCCESS(i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %193
  %209 = load i32, i32* @TRUE, align 4
  store i32 %209, i32* %3, align 4
  br label %269

210:                                              ; preds = %193
  br label %211

211:                                              ; preds = %210, %186
  %212 = load i32, i32* @FALSE, align 4
  store i32 %212, i32* %3, align 4
  br label %269

213:                                              ; preds = %2
  %214 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %215 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %214, i32 0, i32 6
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %238

220:                                              ; preds = %213
  %221 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %222 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %221, i32 0, i32 7
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %225 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %224, i32 0, i32 6
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %230 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %229, i32 0, i32 4
  %231 = call i32 @acpi_GetInteger(i32 %223, i32 %228, i32* %230)
  store i32 %231, i32* %6, align 4
  %232 = load i32, i32* %6, align 4
  %233 = call i32 @ACPI_SUCCESS(i32 %232)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %220
  %236 = load i32, i32* @TRUE, align 4
  store i32 %236, i32* %3, align 4
  br label %269

237:                                              ; preds = %220
  br label %238

238:                                              ; preds = %237, %213
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %3, align 4
  br label %269

240:                                              ; preds = %2
  %241 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %242 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %241, i32 0, i32 6
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %265

247:                                              ; preds = %240
  %248 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %249 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %248, i32 0, i32 7
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %252 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %251, i32 0, i32 6
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.acpi_asus_softc*, %struct.acpi_asus_softc** %4, align 8
  %257 = getelementptr inbounds %struct.acpi_asus_softc, %struct.acpi_asus_softc* %256, i32 0, i32 5
  %258 = call i32 @acpi_GetInteger(i32 %250, i32 %255, i32* %257)
  store i32 %258, i32* %6, align 4
  %259 = load i32, i32* %6, align 4
  %260 = call i32 @ACPI_SUCCESS(i32 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %264

262:                                              ; preds = %247
  %263 = load i32, i32* @TRUE, align 4
  store i32 %263, i32* %3, align 4
  br label %269

264:                                              ; preds = %247
  br label %265

265:                                              ; preds = %264, %240
  %266 = load i32, i32* @FALSE, align 4
  store i32 %266, i32* %3, align 4
  br label %269

267:                                              ; preds = %2
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %3, align 4
  br label %269

269:                                              ; preds = %267, %265, %262, %238, %235, %211, %208, %184, %180, %156, %104, %101, %77, %74, %72, %57, %34
  %270 = load i32, i32* %3, align 4
  ret i32 %270
}

declare dso_local i32 @acpi_GetInteger(i32, i32, i32*) #1

declare dso_local i32 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i32, %struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
