; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_connect_qps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/examples/extr_xsrq_pingpong.c_connect_qps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_9__*, i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.ibv_qp_attr = type { i32, i32, i32, i32, i32, i8*, %struct.TYPE_10__, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@IBV_QPS_RTR = common dso_local global i8* null, align 8
@ctx = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_AV = common dso_local global i32 0, align 4
@IBV_QP_PATH_MTU = common dso_local global i32 0, align 4
@IBV_QP_DEST_QPN = common dso_local global i32 0, align 4
@IBV_QP_RQ_PSN = common dso_local global i32 0, align 4
@IBV_QP_MAX_DEST_RD_ATOMIC = common dso_local global i32 0, align 4
@IBV_QP_MIN_RNR_TIMER = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to modify recv QP[%d] to RTR\0A\00", align 1
@IBV_QPS_RTS = common dso_local global i8* null, align 8
@IBV_QP_TIMEOUT = common dso_local global i32 0, align 4
@IBV_QP_SQ_PSN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to modify recv QP[%d] to RTS\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to modify send QP[%d] to RTR\0A\00", align 1
@IBV_QP_RETRY_CNT = common dso_local global i32 0, align 4
@IBV_QP_RNR_RETRY = common dso_local global i32 0, align 4
@IBV_QP_MAX_QP_RD_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to modify send QP[%d] to RTS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @connect_qps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_qps(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_qp_attr, align 8
  store i32 %0, i32* %3, align 4
  %5 = call i32 @memset(%struct.ibv_qp_attr* %4, i32 0, i32 56)
  %6 = load i8*, i8** @IBV_QPS_RTR, align 8
  %7 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 5
  store i8* %6, i8** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 9
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 4), align 8
  %16 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 8
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 7
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 0
  store i32 12, i32* %24, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 3), align 4
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 2), align 8
  %37 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @set_ah_attr(%struct.TYPE_10__* %49, %struct.TYPE_11__* @ctx, i32 %50)
  br label %52

52:                                               ; preds = %48, %1
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 5), align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IBV_QP_STATE, align 4
  %59 = load i32, i32* @IBV_QP_AV, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @IBV_QP_PATH_MTU, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @IBV_QP_DEST_QPN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @IBV_QP_RQ_PSN, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @IBV_QP_MAX_DEST_RD_ATOMIC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IBV_QP_MIN_RNR_TIMER, align 4
  %70 = or i32 %68, %69
  %71 = call i64 @ibv_modify_qp(i32 %57, %struct.ibv_qp_attr* %4, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %52
  %74 = load i32, i32* @stderr, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @fprintf(i32 %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %75)
  store i32 1, i32* %2, align 4
  br label %210

77:                                               ; preds = %52
  %78 = call i32 @memset(%struct.ibv_qp_attr* %4, i32 0, i32 56)
  %79 = load i8*, i8** @IBV_QPS_RTS, align 8
  %80 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 5
  store i8* %79, i8** %80, align 8
  %81 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 1
  store i32 14, i32* %81, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %83 = load i32, i32* %3, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 4
  store i32 %87, i32* %88, align 8
  %89 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 5), align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @IBV_QP_STATE, align 4
  %95 = load i32, i32* @IBV_QP_TIMEOUT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @ibv_modify_qp(i32 %93, %struct.ibv_qp_attr* %4, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %77
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @fprintf(i32 %102, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 1, i32* %2, align 4
  br label %210

105:                                              ; preds = %77
  %106 = call i32 @memset(%struct.ibv_qp_attr* %4, i32 0, i32 56)
  %107 = load i8*, i8** @IBV_QPS_RTR, align 8
  %108 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 5
  store i8* %107, i8** %108, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 9
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 4), align 8
  %117 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 8
  store i32 %116, i32* %117, align 8
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %119 = load i32, i32* %3, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 7
  store i32 %123, i32* %124, align 4
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 3), align 4
  %134 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 2), align 8
  %137 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %105
  %149 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 6
  %150 = load i32, i32* %3, align 4
  %151 = call i32 @set_ah_attr(%struct.TYPE_10__* %149, %struct.TYPE_11__* @ctx, i32 %150)
  br label %152

152:                                              ; preds = %148, %105
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 0), align 8
  %154 = load i32, i32* %3, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @IBV_QP_STATE, align 4
  %159 = load i32, i32* @IBV_QP_AV, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* @IBV_QP_PATH_MTU, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @IBV_QP_DEST_QPN, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @IBV_QP_RQ_PSN, align 4
  %166 = or i32 %164, %165
  %167 = call i64 @ibv_modify_qp(i32 %157, %struct.ibv_qp_attr* %4, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %152
  %170 = load i32, i32* @stderr, align 4
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @fprintf(i32 %170, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %171)
  store i32 1, i32* %2, align 4
  br label %210

173:                                              ; preds = %152
  %174 = call i32 @memset(%struct.ibv_qp_attr* %4, i32 0, i32 56)
  %175 = load i8*, i8** @IBV_QPS_RTS, align 8
  %176 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 5
  store i8* %175, i8** %176, align 8
  %177 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 1
  store i32 14, i32* %177, align 4
  %178 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 2
  store i32 7, i32* %178, align 8
  %179 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 3
  store i32 7, i32* %179, align 4
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 1), align 8
  %181 = load i32, i32* %3, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 4
  store i32 %185, i32* %186, align 8
  %187 = load i32*, i32** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @ctx, i32 0, i32 0), align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32, i32* %187, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IBV_QP_STATE, align 4
  %193 = load i32, i32* @IBV_QP_TIMEOUT, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @IBV_QP_RETRY_CNT, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @IBV_QP_RNR_RETRY, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @IBV_QP_MAX_QP_RD_ATOMIC, align 4
  %202 = or i32 %200, %201
  %203 = call i64 @ibv_modify_qp(i32 %191, %struct.ibv_qp_attr* %4, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %173
  %206 = load i32, i32* @stderr, align 4
  %207 = load i32, i32* %3, align 4
  %208 = call i32 @fprintf(i32 %206, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %207)
  store i32 1, i32* %2, align 4
  br label %210

209:                                              ; preds = %173
  store i32 0, i32* %2, align 4
  br label %210

210:                                              ; preds = %209, %205, %169, %101, %73
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @memset(%struct.ibv_qp_attr*, i32, i32) #1

declare dso_local i32 @set_ah_attr(%struct.TYPE_10__*, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @ibv_modify_qp(i32, %struct.ibv_qp_attr*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
