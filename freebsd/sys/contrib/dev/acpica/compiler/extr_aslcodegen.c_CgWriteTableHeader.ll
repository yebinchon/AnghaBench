; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgWriteTableHeader.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslcodegen.c_CgWriteTableHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i32, i32, i64, i32, i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i64, i64, %struct.TYPE_19__*, i64, %struct.TYPE_15__, %struct.TYPE_18__*, %struct.TYPE_18__* }
%struct.TYPE_19__ = type { %struct.TYPE_19__*, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@AslGbl_TableHeader = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@AcpiGbl_CaptureComments = common dso_local global i64 0, align 8
@AcpiGbl_TableSig = common dso_local global i32 0, align 4
@ACPI_SIG_XXXX = common dso_local global i64 0, align 8
@AslGbl_RevisionOverride = common dso_local global i64 0, align 8
@ASL_CREATOR_ID = common dso_local global i64 0, align 8
@ACPI_CA_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Calculating comment lengths for %s in write header\0A\00", align 1
@AslGbl_ParseTreeRoot = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"     Length: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Length of standard comment): %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"    Comment string: %s\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"    Length: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Length of inline comment +3: %d\0A\00", align 1
@AslGbl_Files = common dso_local global %struct.TYPE_14__* null, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @CgWriteTableHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CgWriteTableHeader(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %6 = call i32 @memset(%struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 4)
  %7 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  store %struct.TYPE_18__* %10, %struct.TYPE_18__** %3, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 6
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %13, align 8
  store %struct.TYPE_18__* %14, %struct.TYPE_18__** %3, align 8
  %15 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load i32, i32* @AcpiGbl_TableSig, align 4
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @ACPI_COPY_NAMESEG(i32 %18, i64 %23)
  %25 = load i64, i64* @ACPI_SIG_XXXX, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  store i64 %25, i64* %29, align 8
  br label %30

30:                                               ; preds = %17, %1
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 8), align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @ACPI_COPY_NAMESEG(i32 %31, i64 %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %40, align 8
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %3, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 7), align 8
  %47 = load i64, i64* @AslGbl_RevisionOverride, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %30
  %50 = load i64, i64* @AslGbl_RevisionOverride, align 8
  store i64 %50, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 7), align 8
  br label %51

51:                                               ; preds = %49, %30
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %3, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 6), align 4
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i64 @strlen(i64 %66)
  %68 = call i32 @memcpy(i32 %56, i64 %61, i64 %67)
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 6
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %71, align 8
  store %struct.TYPE_18__* %72, %struct.TYPE_18__** %3, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 5), align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @strlen(i64 %83)
  %85 = call i32 @memcpy(i32 %73, i64 %78, i64 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 6
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %88, align 8
  store %struct.TYPE_18__* %89, %struct.TYPE_18__** %3, align 8
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 5
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 4), align 8
  %95 = load i32, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 3), align 4
  %96 = load i64, i64* @ASL_CREATOR_ID, align 8
  %97 = call i32 @ACPI_COPY_NAMESEG(i32 %95, i64 %96)
  %98 = load i32, i32* @ACPI_CA_VERSION, align 4
  store i32 %98, i32* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 2), align 8
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 4, %102
  store i64 %103, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %104 = load i64, i64* @AcpiGbl_CaptureComments, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %217

106:                                              ; preds = %51
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 4
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %110)
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AslGbl_ParseTreeRoot, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @strrchr(i64 %115, i8 signext 46)
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AslGbl_ParseTreeRoot, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %116, %120
  %122 = add nsw i64 %121, 1
  %123 = add nsw i64 %122, 3
  %124 = add nsw i64 %123, 3
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AslGbl_ParseTreeRoot, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @strlen(i64 %130)
  %132 = add nsw i64 %131, 3
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %132
  store i64 %137, i64* %135, align 8
  %138 = load %struct.TYPE_13__*, %struct.TYPE_13__** @AslGbl_ParseTreeRoot, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @strlen(i64 %141)
  %143 = add nsw i64 %142, 3
  %144 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %143)
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 3
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %147, align 8
  %149 = icmp ne %struct.TYPE_19__* %148, null
  br i1 %149, label %150, label %185

150:                                              ; preds = %106
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 3
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  store %struct.TYPE_19__* %154, %struct.TYPE_19__** %5, align 8
  br label %155

155:                                              ; preds = %158, %150
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = icmp ne %struct.TYPE_19__* %156, null
  br i1 %157, label %158, label %184

158:                                              ; preds = %155
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = call i64 @strlen(i64 %161)
  %163 = add nsw i64 %162, 3
  store i64 %163, i64* %4, align 8
  %164 = load i64, i64* %4, align 8
  %165 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %164)
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %168)
  %170 = load i64, i64* %4, align 8
  %171 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %172 = add nsw i64 %171, %170
  store i64 %172, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %173 = load i64, i64* %4, align 8
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, %173
  store i64 %178, i64* %176, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %180, align 8
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %5, align 8
  %182 = load i64, i64* %4, align 8
  %183 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %182)
  br label %155

184:                                              ; preds = %155
  br label %185

185:                                              ; preds = %184, %106
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = call i64 @strlen(i64 %195)
  %197 = add nsw i64 %196, 3
  store i64 %197, i64* %4, align 8
  %198 = load i64, i64* %4, align 8
  %199 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i64 %198)
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %203)
  %205 = load i64, i64* %4, align 8
  %206 = load i64, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %207 = add nsw i64 %206, %205
  store i64 %207, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 1), align 8
  %208 = load i64, i64* %4, align 8
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %210 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = add nsw i64 %212, %208
  store i64 %213, i64* %211, align 8
  %214 = load i64, i64* %4, align 8
  %215 = call i32 @CvDbgPrint(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i64 %214)
  br label %216

216:                                              ; preds = %191, %185
  br label %217

217:                                              ; preds = %216, %51
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 0), align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** @AslGbl_Files, align 8
  %219 = load i64, i64* @ASL_FILE_AML_OUTPUT, align 8
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ftell(i32 %222)
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  store i32 %223, i32* %226, align 8
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %228 = call i32 @CgLocalWriteAmlData(%struct.TYPE_18__* %227, %struct.TYPE_20__* @AslGbl_TableHeader, i32 4)
  %229 = call i32 @memset(%struct.TYPE_20__* @AslGbl_TableHeader, i32 0, i32 4)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ACPI_COPY_NAMESEG(i32, i64) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i64 @strlen(i64) #1

declare dso_local i32 @CvDbgPrint(i8*, i64) #1

declare dso_local i64 @strrchr(i64, i8 signext) #1

declare dso_local i32 @ftell(i32) #1

declare dso_local i32 @CgLocalWriteAmlData(%struct.TYPE_18__*, %struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
