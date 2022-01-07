; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_copy_modify_qp_fields.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_copy_modify_qp_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ibv_modify_qp_common = type { i32, i64*, i32, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_CUR_STATE = common dso_local global i32 0, align 4
@IBV_QP_EN_SQD_ASYNC_NOTIFY = common dso_local global i32 0, align 4
@IBV_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IBV_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@IBV_QP_QKEY = common dso_local global i32 0, align 4
@IBV_QP_AV = common dso_local global i32 0, align 4
@IBV_QP_PATH_MTU = common dso_local global i32 0, align 4
@IBV_QP_TIMEOUT = common dso_local global i32 0, align 4
@IBV_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IBV_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IBV_QP_RQ_PSN = common dso_local global i32 0, align 4
@IBV_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@IBV_QP_ALT_PATH = common dso_local global i32 0, align 4
@IBV_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@IBV_QP_SQ_PSN = common dso_local global i32 0, align 4
@IBV_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IBV_QP_PATH_MIG_STATE = common dso_local global i32 0, align 4
@IBV_QP_DEST_QPN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_modify_qp_common*)* @copy_modify_qp_fields to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_modify_qp_fields(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_modify_qp_common* %3) #0 {
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_modify_qp_common*, align 8
  store %struct.ibv_qp* %0, %struct.ibv_qp** %5, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ibv_modify_qp_common* %3, %struct.ibv_modify_qp_common** %8, align 8
  %9 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %13 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %12, i32 0, i32 25
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %16 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @IBV_QP_STATE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %23 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %22, i32 0, i32 22
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %26 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %25, i32 0, i32 24
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %21, %4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IBV_QP_CUR_STATE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %33, i32 0, i32 21
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %37 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %27
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @IBV_QP_EN_SQD_ASYNC_NOTIFY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %44, i32 0, i32 20
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %48 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %47, i32 0, i32 22
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @IBV_QP_ACCESS_FLAGS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %56 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %55, i32 0, i32 19
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %59 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %58, i32 0, i32 21
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %49
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @IBV_QP_PKEY_INDEX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %67 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %66, i32 0, i32 18
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %70 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %69, i32 0, i32 20
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %65, %60
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @IBV_QP_PORT, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %78 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %77, i32 0, i32 17
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %81 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %80, i32 0, i32 19
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @IBV_QP_QKEY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %89 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %88, i32 0, i32 16
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %92 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %91, i32 0, i32 18
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @IBV_QP_AV, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %187

98:                                               ; preds = %93
  %99 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %100 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %99, i32 0, i32 17
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 11
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %104 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %102, i32 %108, i32 16)
  %110 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %111 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 5
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %116 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %115, i32 0, i32 17
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 10
  store i32 %114, i32* %117, align 4
  %118 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %119 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %123 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %122, i32 0, i32 17
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 9
  store i32 %121, i32* %124, align 8
  %125 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %126 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %125, i32 0, i32 17
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 8
  store i64 0, i64* %127, align 8
  %128 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %129 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %134 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %133, i32 0, i32 17
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 7
  store i32 %132, i32* %135, align 4
  %136 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %137 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %136, i32 0, i32 15
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %142 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %141, i32 0, i32 17
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 6
  store i32 %140, i32* %143, align 8
  %144 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %145 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %144, i32 0, i32 15
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %150 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %149, i32 0, i32 17
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 5
  store i32 %148, i32* %151, align 4
  %152 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %153 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %152, i32 0, i32 15
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %157 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %156, i32 0, i32 17
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 4
  store i32 %155, i32* %158, align 8
  %159 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %160 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %164 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %163, i32 0, i32 17
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 3
  store i32 %162, i32* %165, align 4
  %166 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %167 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %166, i32 0, i32 15
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %171 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %170, i32 0, i32 17
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  store i32 %169, i32* %172, align 8
  %173 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %174 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %178 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %177, i32 0, i32 17
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %181 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %185 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %184, i32 0, i32 17
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 8
  br label %187

187:                                              ; preds = %98, %93
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @IBV_QP_PATH_MTU, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %187
  %193 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %194 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %193, i32 0, i32 14
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %197 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %196, i32 0, i32 16
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %192, %187
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @IBV_QP_TIMEOUT, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %198
  %204 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %205 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %204, i32 0, i32 13
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %208 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %207, i32 0, i32 15
  store i32 %206, i32* %208, align 4
  br label %209

209:                                              ; preds = %203, %198
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* @IBV_QP_RETRY_CNT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %209
  %215 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %216 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %215, i32 0, i32 12
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %219 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %218, i32 0, i32 14
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %214, %209
  %221 = load i32, i32* %7, align 4
  %222 = load i32, i32* @IBV_QP_RNR_RETRY, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %220
  %226 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %227 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %226, i32 0, i32 11
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %230 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %229, i32 0, i32 13
  store i32 %228, i32* %230, align 4
  br label %231

231:                                              ; preds = %225, %220
  %232 = load i32, i32* %7, align 4
  %233 = load i32, i32* @IBV_QP_RQ_PSN, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %242

236:                                              ; preds = %231
  %237 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %238 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %237, i32 0, i32 10
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %241 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %240, i32 0, i32 12
  store i32 %239, i32* %241, align 8
  br label %242

242:                                              ; preds = %236, %231
  %243 = load i32, i32* %7, align 4
  %244 = load i32, i32* @IBV_QP_MAX_QP_RD_ATOMIC, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %242
  %248 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %249 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %248, i32 0, i32 9
  %250 = load i32, i32* %249, align 4
  %251 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %252 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %251, i32 0, i32 11
  store i32 %250, i32* %252, align 4
  br label %253

253:                                              ; preds = %247, %242
  %254 = load i32, i32* %7, align 4
  %255 = load i32, i32* @IBV_QP_ALT_PATH, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %362

258:                                              ; preds = %253
  %259 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %260 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %259, i32 0, i32 8
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %263 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %262, i32 0, i32 10
  store i32 %261, i32* %263, align 8
  %264 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %265 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %264, i32 0, i32 7
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %268 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %267, i32 0, i32 9
  store i32 %266, i32* %268, align 4
  %269 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %270 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %269, i32 0, i32 6
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %273 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %272, i32 0, i32 8
  store i32 %271, i32* %273, align 8
  %274 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %275 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 11
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %279 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %278, i32 0, i32 5
  %280 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %279, i32 0, i32 5
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 4
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @memcpy(i32 %277, i32 %283, i32 16)
  %285 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %286 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %285, i32 0, i32 5
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 5
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %291 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 10
  store i32 %289, i32* %292, align 4
  %293 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %294 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %293, i32 0, i32 5
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %298 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 9
  store i32 %296, i32* %299, align 8
  %300 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %301 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %300, i32 0, i32 7
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i32 0, i32 8
  store i64 0, i64* %302, align 8
  %303 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %304 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %303, i32 0, i32 5
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 5
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 2
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %309 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %308, i32 0, i32 7
  %310 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %309, i32 0, i32 7
  store i32 %307, i32* %310, align 4
  %311 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %312 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %312, i32 0, i32 5
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %317 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %316, i32 0, i32 7
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 6
  store i32 %315, i32* %318, align 8
  %319 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %320 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %319, i32 0, i32 5
  %321 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %325 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %324, i32 0, i32 7
  %326 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i32 0, i32 5
  store i32 %323, i32* %326, align 4
  %327 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %328 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %327, i32 0, i32 5
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %332 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 4
  store i32 %330, i32* %333, align 8
  %334 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %335 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %339 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %338, i32 0, i32 7
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 3
  store i32 %337, i32* %340, align 4
  %341 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %342 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %346 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %345, i32 0, i32 7
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 2
  store i32 %344, i32* %347, align 8
  %348 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %349 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %348, i32 0, i32 5
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %353 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %353, i32 0, i32 1
  store i32 %351, i32* %354, align 4
  %355 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %356 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %355, i32 0, i32 5
  %357 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %360 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %359, i32 0, i32 7
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  store i32 %358, i32* %361, align 8
  br label %362

362:                                              ; preds = %258, %253
  %363 = load i32, i32* %7, align 4
  %364 = load i32, i32* @IBV_QP_MIN_RNR_TIMER, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %373

367:                                              ; preds = %362
  %368 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %369 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %372 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %371, i32 0, i32 6
  store i32 %370, i32* %372, align 8
  br label %373

373:                                              ; preds = %367, %362
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %376 = and i32 %374, %375
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %373
  %379 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %380 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %379, i32 0, i32 3
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %383 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %382, i32 0, i32 5
  store i32 %381, i32* %383, align 4
  br label %384

384:                                              ; preds = %378, %373
  %385 = load i32, i32* %7, align 4
  %386 = load i32, i32* @IBV_QP_MAX_DEST_RD_ATOMIC, align 4
  %387 = and i32 %385, %386
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %395

389:                                              ; preds = %384
  %390 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %391 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %390, i32 0, i32 2
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %394 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %393, i32 0, i32 4
  store i32 %392, i32* %394, align 8
  br label %395

395:                                              ; preds = %389, %384
  %396 = load i32, i32* %7, align 4
  %397 = load i32, i32* @IBV_QP_PATH_MIG_STATE, align 4
  %398 = and i32 %396, %397
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %395
  %401 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %402 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %405 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %404, i32 0, i32 3
  store i32 %403, i32* %405, align 4
  br label %406

406:                                              ; preds = %400, %395
  %407 = load i32, i32* %7, align 4
  %408 = load i32, i32* @IBV_QP_DEST_QPN, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %417

411:                                              ; preds = %406
  %412 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %6, align 8
  %413 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %416 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  br label %417

417:                                              ; preds = %411, %406
  %418 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %419 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %418, i32 0, i32 1
  %420 = load i64*, i64** %419, align 8
  %421 = getelementptr inbounds i64, i64* %420, i64 1
  store i64 0, i64* %421, align 8
  %422 = load %struct.ibv_modify_qp_common*, %struct.ibv_modify_qp_common** %8, align 8
  %423 = getelementptr inbounds %struct.ibv_modify_qp_common, %struct.ibv_modify_qp_common* %422, i32 0, i32 1
  %424 = load i64*, i64** %423, align 8
  %425 = getelementptr inbounds i64, i64* %424, i64 0
  store i64 0, i64* %425, align 8
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
