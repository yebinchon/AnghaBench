; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslexternal.c_ExMoveExternals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslexternal.c_ExMoveExternals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i8*, i64, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i64, i64, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i64, i32 }

@AslGbl_ExternalsListHead = common dso_local global %struct.TYPE_11__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@PARSEOP_NAMESEG = common dso_local global i64 0, align 8
@PARSEOP_NAMESTRING = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Could not internalize namestring\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@OP_VISITED = common dso_local global i32 0, align 4
@PARSEOP_IF = common dso_local global i64 0, align 8
@AML_IF_OP = common dso_local global i32 0, align 4
@OP_AML_PACKAGE = common dso_local global i32 0, align 4
@PARSEOP_ZERO = common dso_local global i32 0, align 4
@AML_ZERO_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @ExMoveExternals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExMoveExternals(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %14 = icmp ne %struct.TYPE_11__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %364

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %6, align 8
  br label %18

18:                                               ; preds = %187, %16
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = icmp ne %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %192

21:                                               ; preds = %18
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 6
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %4, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @TRUE, align 4
  %31 = call i8* @AcpiNsGetNormalizedPathname(i32 %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 7
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %8, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 8
  store i64 0, i64* %52, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 7
  store i64 0, i64* %55, align 8
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PARSEOP_NAMESEG, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %21
  %63 = load i64, i64* @PARSEOP_NAMESTRING, align 8
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  store i64 %63, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %21
  %68 = load i8*, i8** %9, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  store i8* %68, i8** %71, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = call i32 @UtInternalizeName(i8* %72, i32* %76)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i64 @ACPI_FAILURE(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %67
  %82 = load i32, i32* @ASL_ERROR, align 4
  %83 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = call i32 @AslError(i32 %82, i32 %83, %struct.TYPE_11__* %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %364

86:                                               ; preds = %67
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 10
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @strlen(i32 %91)
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 11
  store i32 %92, i32* %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 5
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %98, align 8
  store %struct.TYPE_11__* %99, %struct.TYPE_11__** %8, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 7
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 5
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %108, align 8
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %8, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 8
  store i64 0, i64* %112, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 7
  store i64 0, i64* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %8, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 8
  store i64 0, i64* %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 7
  store i64 0, i64* %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %128, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %3, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 6
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %133, %struct.TYPE_11__** %7, align 8
  br label %134

134:                                              ; preds = %138, %86
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %137 = icmp ne %struct.TYPE_11__* %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %139, %struct.TYPE_11__** %7, align 8
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %142, align 8
  store %struct.TYPE_11__* %143, %struct.TYPE_11__** %8, align 8
  br label %134

144:                                              ; preds = %134
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = icmp eq %struct.TYPE_11__* %145, %146
  br i1 %147, label %148, label %156

148:                                              ; preds = %144
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 5
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 6
  store %struct.TYPE_11__* %152, %struct.TYPE_11__** %155, align 8
  br label %156

156:                                              ; preds = %148, %144
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 5
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %159, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 5
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %163, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %166, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 4
  store %struct.TYPE_11__* %167, %struct.TYPE_11__** %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 5
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = icmp ne %struct.TYPE_11__* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %156
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 5
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 6
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %182, align 8
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 5
  store %struct.TYPE_11__* %183, %struct.TYPE_11__** %186, align 8
  br label %187

187:                                              ; preds = %176, %156
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 5
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  store %struct.TYPE_11__* %191, %struct.TYPE_11__** %6, align 8
  br label %18

192:                                              ; preds = %18
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 6
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %195, align 8
  store %struct.TYPE_11__* %196, %struct.TYPE_11__** %7, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %197, %struct.TYPE_11__** %8, align 8
  br label %198

198:                                              ; preds = %259, %244, %228, %192
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %200 = icmp ne %struct.TYPE_11__* %199, null
  br i1 %200, label %201, label %265

201:                                              ; preds = %198
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 6
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 5
  %208 = load %struct.TYPE_11__*, %struct.TYPE_11__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 10
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  store i64 %212, i64* %10, align 8
  %213 = load i64, i64* %10, align 8
  %214 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %259

216:                                              ; preds = %201
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @OP_VISITED, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %259, label %224

224:                                              ; preds = %216
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %227 = icmp eq %struct.TYPE_11__* %225, %226
  br i1 %227, label %228, label %244

228:                                              ; preds = %224
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 5
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %231, align 8
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 6
  store %struct.TYPE_11__* %232, %struct.TYPE_11__** %235, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %237, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %238, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 6
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %241, align 8
  store %struct.TYPE_11__* %242, %struct.TYPE_11__** %7, align 8
  %243 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %243, %struct.TYPE_11__** %8, align 8
  br label %198

244:                                              ; preds = %224
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %247, align 8
  %249 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 5
  store %struct.TYPE_11__* %248, %struct.TYPE_11__** %251, align 8
  %252 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %254, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 5
  %258 = load %struct.TYPE_11__*, %struct.TYPE_11__** %257, align 8
  store %struct.TYPE_11__* %258, %struct.TYPE_11__** %8, align 8
  br label %198

259:                                              ; preds = %216, %201
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %260, %struct.TYPE_11__** %7, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %263, align 8
  store %struct.TYPE_11__* %264, %struct.TYPE_11__** %8, align 8
  br label %198

265:                                              ; preds = %198
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 6
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %268, align 8
  %270 = icmp ne %struct.TYPE_11__* %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %265
  br label %364

272:                                              ; preds = %265
  %273 = load i64, i64* @PARSEOP_IF, align 8
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %275 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 2
  store i64 %273, i64* %276, align 8
  %277 = load i32, i32* @AML_IF_OP, align 4
  %278 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %279 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 9
  store i32 %277, i32* %280, align 8
  %281 = load i32, i32* @OP_AML_PACKAGE, align 4
  %282 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 3
  store i32 %281, i32* %284, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %286 = call i32 @UtSetParseOpName(%struct.TYPE_11__* %285)
  %287 = load i32, i32* @PARSEOP_ZERO, align 4
  %288 = call %struct.TYPE_11__* @TrAllocateOp(i32 %287)
  store %struct.TYPE_11__* %288, %struct.TYPE_11__** %5, align 8
  %289 = load i32, i32* @AML_ZERO_OP, align 4
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 9
  store i32 %289, i32* %292, align 8
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 4
  store %struct.TYPE_11__* %293, %struct.TYPE_11__** %296, align 8
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 6
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %299, align 8
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i32 0, i32 6
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %302, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 5
  store %struct.TYPE_11__* %303, %struct.TYPE_11__** %306, align 8
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 6
  store %struct.TYPE_11__* %307, %struct.TYPE_11__** %310, align 8
  %311 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %312 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 8
  store i64 0, i64* %313, align 8
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %315 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 7
  store i64 0, i64* %316, align 8
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %318, i32 0, i32 8
  store i64 0, i64* %319, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %321, i32 0, i32 7
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %324, i32 0, i32 6
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  store %struct.TYPE_11__* %326, %struct.TYPE_11__** %7, align 8
  %327 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %327, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %12, align 4
  br label %328

328:                                              ; preds = %337, %272
  %329 = load i32, i32* %12, align 4
  %330 = icmp slt i32 %329, 6
  br i1 %330, label %331, label %340

331:                                              ; preds = %328
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %332, %struct.TYPE_11__** %7, align 8
  %333 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %334, i32 0, i32 5
  %336 = load %struct.TYPE_11__*, %struct.TYPE_11__** %335, align 8
  store %struct.TYPE_11__* %336, %struct.TYPE_11__** %8, align 8
  br label %337

337:                                              ; preds = %331
  %338 = load i32, i32* %12, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %12, align 4
  br label %328

340:                                              ; preds = %328
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %342 = icmp ne %struct.TYPE_11__* %341, null
  br i1 %342, label %343, label %348

343:                                              ; preds = %340
  %344 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %346, i32 0, i32 5
  store %struct.TYPE_11__* %344, %struct.TYPE_11__** %347, align 8
  br label %352

348:                                              ; preds = %340
  %349 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 5
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %351, align 8
  br label %352

352:                                              ; preds = %348, %343
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 5
  store %struct.TYPE_11__* %353, %struct.TYPE_11__** %356, align 8
  %357 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %358, i32 0, i32 4
  %360 = load %struct.TYPE_11__*, %struct.TYPE_11__** %359, align 8
  %361 = load %struct.TYPE_11__*, %struct.TYPE_11__** @AslGbl_ExternalsListHead, align 8
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %362, i32 0, i32 4
  store %struct.TYPE_11__* %360, %struct.TYPE_11__** %363, align 8
  br label %364

364:                                              ; preds = %352, %271, %81, %15
  ret void
}

declare dso_local i8* @AcpiNsGetNormalizedPathname(i32, i32) #1

declare dso_local i32 @UtInternalizeName(i8*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @UtSetParseOpName(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @TrAllocateOp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
