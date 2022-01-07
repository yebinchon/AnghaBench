; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_post_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.ibv_send_wr = type { i32, i32, %struct.ibv_send_wr*, i32, %struct.TYPE_20__, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.ibv_post_send = type { i32, i32, i32, i32 }
%struct.ibv_post_send_resp = type { i32 }
%struct.ibv_kern_send_wr = type { i32, i32, %struct.TYPE_18__, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.ibv_sge = type { i32 }

@POST_SEND = common dso_local global i32 0, align 4
@IBV_QPT_UD = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_post_send(%struct.ibv_qp* %0, %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %2) #0 {
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %struct.ibv_send_wr*, align 8
  %6 = alloca %struct.ibv_send_wr**, align 8
  %7 = alloca %struct.ibv_post_send*, align 8
  %8 = alloca %struct.ibv_post_send_resp, align 4
  %9 = alloca %struct.ibv_send_wr*, align 8
  %10 = alloca %struct.ibv_kern_send_wr*, align 8
  %11 = alloca %struct.ibv_kern_send_wr*, align 8
  %12 = alloca %struct.ibv_sge*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %4, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %5, align 8
  store %struct.ibv_send_wr** %2, %struct.ibv_send_wr*** %6, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %5, align 8
  store %struct.ibv_send_wr* %17, %struct.ibv_send_wr** %9, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %20 = icmp ne %struct.ibv_send_wr* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = load i32, i32* %13, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %25 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %14, align 4
  %28 = add i32 %27, %26
  store i32 %28, i32* %14, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %31 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %30, i32 0, i32 2
  %32 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %31, align 8
  store %struct.ibv_send_wr* %32, %struct.ibv_send_wr** %9, align 8
  br label %18

33:                                               ; preds = %18
  %34 = load i32, i32* %13, align 4
  %35 = zext i32 %34 to i64
  %36 = mul i64 %35, 56
  %37 = add i64 16, %36
  %38 = load i32, i32* %14, align 4
  %39 = zext i32 %38 to i64
  %40 = mul i64 %39, 4
  %41 = add i64 %37, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = call %struct.ibv_post_send* @alloca(i32 %43)
  store %struct.ibv_post_send* %44, %struct.ibv_post_send** %7, align 8
  %45 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* @POST_SEND, align 4
  %48 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_post_send* %45, i32 %46, i32 %47, %struct.ibv_post_send_resp* %8, i32 4)
  %49 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %50 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %53 = getelementptr inbounds %struct.ibv_post_send, %struct.ibv_post_send* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %56 = getelementptr inbounds %struct.ibv_post_send, %struct.ibv_post_send* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %59 = getelementptr inbounds %struct.ibv_post_send, %struct.ibv_post_send* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %61 = getelementptr inbounds %struct.ibv_post_send, %struct.ibv_post_send* %60, i32 0, i32 2
  store i32 56, i32* %61, align 4
  %62 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %63 = bitcast %struct.ibv_post_send* %62 to i8*
  %64 = getelementptr i8, i8* %63, i64 16
  %65 = bitcast i8* %64 to %struct.ibv_kern_send_wr*
  store %struct.ibv_kern_send_wr* %65, %struct.ibv_kern_send_wr** %10, align 8
  %66 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %10, align 8
  %67 = load i32, i32* %13, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %66, i64 %68
  %70 = bitcast %struct.ibv_kern_send_wr* %69 to %struct.ibv_sge*
  store %struct.ibv_sge* %70, %struct.ibv_sge** %12, align 8
  %71 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %10, align 8
  store %struct.ibv_kern_send_wr* %71, %struct.ibv_kern_send_wr** %11, align 8
  %72 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %5, align 8
  store %struct.ibv_send_wr* %72, %struct.ibv_send_wr** %9, align 8
  br label %73

73:                                               ; preds = %225, %33
  %74 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %75 = icmp ne %struct.ibv_send_wr* %74, null
  br i1 %75, label %76, label %229

76:                                               ; preds = %73
  %77 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %78 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %81 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %83 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %86 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %88 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %91 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %93 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %96 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %98 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %101 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %103 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @IBV_QPT_UD, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %76
  %108 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %109 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %116 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  store i32 %114, i32* %118, align 4
  %119 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %120 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %125 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %129 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %134 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  br label %199

137:                                              ; preds = %76
  %138 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %139 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  switch i32 %140, label %197 [
    i32 129, label %141
    i32 128, label %141
    i32 130, label %141
    i32 132, label %160
    i32 131, label %160
  ]

141:                                              ; preds = %137, %137, %137
  %142 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %143 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %148 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  store i32 %146, i32* %150, align 4
  %151 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %152 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %157 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  store i32 %155, i32* %159, align 4
  br label %198

160:                                              ; preds = %137, %137
  %161 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %162 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %167 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 3
  store i32 %165, i32* %169, align 4
  %170 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %171 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %176 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 2
  store i32 %174, i32* %178, align 4
  %179 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %180 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %185 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %189 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %194 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 0
  store i32 %192, i32* %196, align 4
  br label %198

197:                                              ; preds = %137
  br label %198

198:                                              ; preds = %197, %160, %141
  br label %199

199:                                              ; preds = %198, %107
  %200 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %201 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %222

204:                                              ; preds = %199
  %205 = load %struct.ibv_sge*, %struct.ibv_sge** %12, align 8
  %206 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %207 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %210 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = mul i64 %212, 4
  %214 = trunc i64 %213 to i32
  %215 = call i32 @memcpy(%struct.ibv_sge* %205, i32 %208, i32 %214)
  %216 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %217 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ibv_sge*, %struct.ibv_sge** %12, align 8
  %220 = sext i32 %218 to i64
  %221 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %219, i64 %220
  store %struct.ibv_sge* %221, %struct.ibv_sge** %12, align 8
  br label %222

222:                                              ; preds = %204, %199
  %223 = load %struct.ibv_kern_send_wr*, %struct.ibv_kern_send_wr** %11, align 8
  %224 = getelementptr inbounds %struct.ibv_kern_send_wr, %struct.ibv_kern_send_wr* %223, i32 1
  store %struct.ibv_kern_send_wr* %224, %struct.ibv_kern_send_wr** %11, align 8
  br label %225

225:                                              ; preds = %222
  %226 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %227 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %226, i32 0, i32 2
  %228 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %227, align 8
  store %struct.ibv_send_wr* %228, %struct.ibv_send_wr** %9, align 8
  br label %73

229:                                              ; preds = %73
  %230 = getelementptr inbounds %struct.ibv_post_send_resp, %struct.ibv_post_send_resp* %8, i32 0, i32 0
  store i32 0, i32* %230, align 4
  %231 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %232 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %231, i32 0, i32 1
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.ibv_post_send*, %struct.ibv_post_send** %7, align 8
  %237 = load i32, i32* %15, align 4
  %238 = call i32 @write(i32 %235, %struct.ibv_post_send* %236, i32 %237)
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %229
  %242 = load i32, i32* @errno, align 4
  store i32 %242, i32* %16, align 4
  br label %243

243:                                              ; preds = %241, %229
  %244 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_post_send_resp* %8, i32 4)
  %245 = getelementptr inbounds %struct.ibv_post_send_resp, %struct.ibv_post_send_resp* %8, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  store i32 %246, i32* %13, align 4
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %262

249:                                              ; preds = %243
  %250 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %5, align 8
  store %struct.ibv_send_wr* %250, %struct.ibv_send_wr** %9, align 8
  br label %251

251:                                              ; preds = %255, %249
  %252 = load i32, i32* %13, align 4
  %253 = add i32 %252, -1
  store i32 %253, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %251
  %256 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %257 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %256, i32 0, i32 2
  %258 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %257, align 8
  store %struct.ibv_send_wr* %258, %struct.ibv_send_wr** %9, align 8
  br label %251

259:                                              ; preds = %251
  %260 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %9, align 8
  %261 = load %struct.ibv_send_wr**, %struct.ibv_send_wr*** %6, align 8
  store %struct.ibv_send_wr* %260, %struct.ibv_send_wr** %261, align 8
  br label %269

262:                                              ; preds = %243
  %263 = load i32, i32* %16, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %5, align 8
  %267 = load %struct.ibv_send_wr**, %struct.ibv_send_wr*** %6, align 8
  store %struct.ibv_send_wr* %266, %struct.ibv_send_wr** %267, align 8
  br label %268

268:                                              ; preds = %265, %262
  br label %269

269:                                              ; preds = %268, %259
  %270 = load i32, i32* %16, align 4
  ret i32 %270
}

declare dso_local %struct.ibv_post_send* @alloca(i32) #1

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_post_send*, i32, i32, %struct.ibv_post_send_resp*, i32) #1

declare dso_local i32 @memcpy(%struct.ibv_sge*, i32, i32) #1

declare dso_local i32 @write(i32, %struct.ibv_post_send*, i32) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_post_send_resp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
