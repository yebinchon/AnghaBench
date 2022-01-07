; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_setIpReassmSchemeParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_setIpReassmSchemeParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_22__, %struct.TYPE_19__, i32, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32, i32, i64, %struct.TYPE_16__*, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_23__, i8* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_21__, i8*, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_15__, %struct.TYPE_20__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i64*, i32 }

@HEADER_TYPE_IPv4 = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@HEADER_TYPE_IPv6 = common dso_local global i8* null, align 8
@FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS = common dso_local global i64 0, align 8
@HEADER_TYPE_USER_DEFINED_SHIM2 = common dso_local global i8* null, align 8
@e_FM_PCD_CC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@e_FM_PCD_EXTRACT_BY_HDR = common dso_local global i8* null, align 8
@e_FM_PCD_EXTRACT_FULL_FIELD = common dso_local global i8* null, align 8
@NET_HEADER_FIELD_IPv4_DST_IP = common dso_local global i32 0, align 4
@NET_HEADER_FIELD_IPv4_SRC_IP = common dso_local global i32 0, align 4
@NET_HEADER_FIELD_IPv4_PROTO = common dso_local global i32 0, align 4
@e_FM_PCD_EXTRACT_FROM_HDR = common dso_local global i8* null, align 8
@NET_HEADER_FIELD_IPv6_DST_IP = common dso_local global i32 0, align 4
@NET_HEADER_FIELD_IPv6_SRC_IP = common dso_local global i32 0, align 4
@FM_PCD_KG_NUM_OF_DEFAULT_GROUPS = common dso_local global i64 0, align 8
@e_FM_PCD_KG_DFLT_GBL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i32, i32, i64)* @setIpReassmSchemeParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setIpReassmSchemeParams(i32* %0, %struct.TYPE_14__* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  store i32 2, i32* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %5
  %19 = load i32*, i32** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @FmPcdGetNetEnvId(i32 %23)
  %25 = load i8*, i8** @HEADER_TYPE_IPv4, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = call i64 @FmPcdNetEnvGetUnitId(i32* %19, i32 %24, i8* %25, i32 %26, i32 0)
  store i64 %27, i64* %12, align 8
  br label %38

28:                                               ; preds = %5
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @FmPcdGetNetEnvId(i32 %33)
  %35 = load i8*, i8** @HEADER_TYPE_IPv6, align 8
  %36 = load i32, i32* @FALSE, align 4
  %37 = call i64 @FmPcdNetEnvGetUnitId(i32* %29, i32 %34, i8* %35, i32 %36, i32 0)
  store i64 %37, i64* %12, align 8
  br label %38

38:                                               ; preds = %28, %18
  %39 = load i64, i64* %12, align 8
  %40 = load i64, i64* @FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS, align 8
  %41 = icmp ne i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT_COND(i32 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  store i64 %44, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @FmPcdGetNetEnvId(i32 %54)
  %56 = load i8*, i8** @HEADER_TYPE_USER_DEFINED_SHIM2, align 8
  %57 = load i32, i32* @FALSE, align 4
  %58 = call i64 @FmPcdNetEnvGetUnitId(i32* %50, i32 %55, i8* %56, i32 %57, i32 0)
  store i64 %58, i64* %12, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @FM_PCD_MAX_NUM_OF_DISTINCTION_UNITS, align 8
  %61 = icmp ne i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT_COND(i32 %62)
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  store i64 %64, i64* %69, align 8
  %70 = load i32, i32* @e_FM_PCD_CC, align 4
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i64 %78, i64* %82, align 8
  %83 = load i32, i32* @TRUE, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @TRUE, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %241

89:                                               ; preds = %38
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %91, i32 0, i32 0
  store i32 4, i32* %92, align 8
  %93 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 5
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  store i8* %93, i8** %99, align 8
  %100 = load i8*, i8** @e_FM_PCD_EXTRACT_FULL_FIELD, align 8
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 5
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %106, i32 0, i32 2
  store i8* %100, i8** %107, align 8
  %108 = load i8*, i8** @HEADER_TYPE_IPv4, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 5
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %114, i32 0, i32 3
  store i8* %108, i8** %115, align 8
  %116 = load i32, i32* @NET_HEADER_FIELD_IPv4_DST_IP, align 4
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 5
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i64 0
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %124, i32 0, i32 1
  store i32 %116, i32* %125, align 4
  %126 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 5
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i64 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  store i8* %126, i8** %132, align 8
  %133 = load i8*, i8** @e_FM_PCD_EXTRACT_FULL_FIELD, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 5
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i64 1
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %139, i32 0, i32 2
  store i8* %133, i8** %140, align 8
  %141 = load i8*, i8** @HEADER_TYPE_IPv4, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %143, i32 0, i32 5
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i64 1
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 3
  store i8* %141, i8** %148, align 8
  %149 = load i32, i32* @NET_HEADER_FIELD_IPv4_SRC_IP, align 4
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 5
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i64 1
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 1
  store i32 %149, i32* %158, align 4
  %159 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 5
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i64 2
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  store i8* %159, i8** %165, align 8
  %166 = load i8*, i8** @e_FM_PCD_EXTRACT_FULL_FIELD, align 8
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i64 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 2
  store i8* %166, i8** %173, align 8
  %174 = load i8*, i8** @HEADER_TYPE_IPv4, align 8
  %175 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 5
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %178, i64 2
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 3
  store i8* %174, i8** %181, align 8
  %182 = load i32, i32* @NET_HEADER_FIELD_IPv4_PROTO, align 4
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 5
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i64 2
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 1
  store i32 %182, i32* %191, align 4
  %192 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i64 3
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  store i8* %192, i8** %198, align 8
  %199 = load i8*, i8** @HEADER_TYPE_IPv4, align 8
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 5
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i64 3
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %205, i32 0, i32 3
  store i8* %199, i8** %206, align 8
  %207 = load i8*, i8** @e_FM_PCD_EXTRACT_FROM_HDR, align 8
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 5
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i64 3
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %213, i32 0, i32 2
  store i8* %207, i8** %214, align 8
  %215 = load i32, i32* @FALSE, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %217, i32 0, i32 5
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i64 3
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %221, i32 0, i32 0
  store i32 %215, i32* %222, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i64 3
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  store i32 2, i32* %231, align 4
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 5
  %235 = load %struct.TYPE_13__*, %struct.TYPE_13__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i64 3
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  store i32 4, i32* %240, align 4
  br label %360

241:                                              ; preds = %38
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 0
  store i32 3, i32* %244, align 8
  %245 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 5
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  store i8* %245, i8** %251, align 8
  %252 = load i8*, i8** @e_FM_PCD_EXTRACT_FULL_FIELD, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 5
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i64 0
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 2
  store i8* %252, i8** %259, align 8
  %260 = load i8*, i8** @HEADER_TYPE_IPv6, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %262, i32 0, i32 5
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i64 0
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %266, i32 0, i32 3
  store i8* %260, i8** %267, align 8
  %268 = load i32, i32* @NET_HEADER_FIELD_IPv6_DST_IP, align 4
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i64 0
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 1
  %276 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 0
  store i32 %268, i32* %277, align 4
  %278 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i64 1
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 1
  store i8* %278, i8** %284, align 8
  %285 = load i8*, i8** @e_FM_PCD_EXTRACT_FULL_FIELD, align 8
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 2
  store i8* %285, i8** %292, align 8
  %293 = load i8*, i8** @HEADER_TYPE_IPv6, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i64 1
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %299, i32 0, i32 3
  store i8* %293, i8** %300, align 8
  %301 = load i32, i32* @NET_HEADER_FIELD_IPv6_SRC_IP, align 4
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 5
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i64 1
  %307 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %309, i32 0, i32 0
  store i32 %301, i32* %310, align 4
  %311 = load i8*, i8** @e_FM_PCD_EXTRACT_BY_HDR, align 8
  %312 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 5
  %315 = load %struct.TYPE_13__*, %struct.TYPE_13__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %315, i64 2
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 1
  store i8* %311, i8** %317, align 8
  %318 = load i8*, i8** @HEADER_TYPE_USER_DEFINED_SHIM2, align 8
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 1
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 5
  %322 = load %struct.TYPE_13__*, %struct.TYPE_13__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %322, i64 2
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 3
  store i8* %318, i8** %325, align 8
  %326 = load i8*, i8** @e_FM_PCD_EXTRACT_FROM_HDR, align 8
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 5
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i64 2
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 2
  store i8* %326, i8** %333, align 8
  %334 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %335, i32 0, i32 5
  %337 = load %struct.TYPE_13__*, %struct.TYPE_13__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %337, i64 2
  %339 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %339, i32 0, i32 1
  %341 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %341, i32 0, i32 0
  store i32 4, i32* %342, align 4
  %343 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %344 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 5
  %346 = load %struct.TYPE_13__*, %struct.TYPE_13__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %346, i64 2
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %350, i32 0, i32 1
  store i32 4, i32* %351, align 4
  %352 = load i32, i32* @TRUE, align 4
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 5
  %356 = load %struct.TYPE_13__*, %struct.TYPE_13__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %356, i64 2
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  store i32 %352, i32* %359, align 8
  br label %360

360:                                              ; preds = %241, %89
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 1
  store i32 16909060, i32* %363, align 4
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %365, i32 0, i32 2
  store i32 286397204, i32* %366, align 8
  %367 = load i64, i64* @FM_PCD_KG_NUM_OF_DEFAULT_GROUPS, align 8
  %368 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %369, i32 0, i32 3
  store i64 %367, i64* %370, align 8
  store i64 0, i64* %11, align 8
  br label %371

371:                                              ; preds = %392, %360
  %372 = load i64, i64* %11, align 8
  %373 = load i64, i64* @FM_PCD_KG_NUM_OF_DEFAULT_GROUPS, align 8
  %374 = icmp ult i64 %372, %373
  br i1 %374, label %375, label %395

375:                                              ; preds = %371
  %376 = load i64, i64* %11, align 8
  %377 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %378 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %378, i32 0, i32 4
  %380 = load %struct.TYPE_16__*, %struct.TYPE_16__** %379, align 8
  %381 = load i64, i64* %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 1
  store i64 %376, i64* %383, align 8
  %384 = load i32, i32* @e_FM_PCD_KG_DFLT_GBL_0, align 4
  %385 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %386 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %386, i32 0, i32 4
  %388 = load %struct.TYPE_16__*, %struct.TYPE_16__** %387, align 8
  %389 = load i64, i64* %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %388, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 0
  store i32 %384, i32* %391, align 8
  br label %392

392:                                              ; preds = %375
  %393 = load i64, i64* %11, align 8
  %394 = add i64 %393, 1
  store i64 %394, i64* %11, align 8
  br label %371

395:                                              ; preds = %371
  ret void
}

declare dso_local i64 @FmPcdNetEnvGetUnitId(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @FmPcdGetNetEnvId(i32) #1

declare dso_local i32 @ASSERT_COND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
