; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_pd = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ibv_qp = type { %struct.TYPE_9__*, i32, i32 }
%struct.ibv_qp_init_attr = type { %struct.TYPE_10__, %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ibv_create_qp = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_create_qp_resp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ibv_create_qp_resp_v4 = type { i32 }
%struct.ibv_create_qp_resp_v3 = type { i32 }

@CREATE_QP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@abi_ver = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_create_qp(%struct.ibv_pd* %0, %struct.ibv_qp* %1, %struct.ibv_qp_init_attr* %2, %struct.ibv_create_qp* %3, i64 %4, %struct.ibv_create_qp_resp* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_pd*, align 8
  %10 = alloca %struct.ibv_qp*, align 8
  %11 = alloca %struct.ibv_qp_init_attr*, align 8
  %12 = alloca %struct.ibv_create_qp*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ibv_create_qp_resp*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.ibv_create_qp_resp_v4*, align 8
  %17 = alloca %struct.ibv_create_qp_resp_v3*, align 8
  store %struct.ibv_pd* %0, %struct.ibv_pd** %9, align 8
  store %struct.ibv_qp* %1, %struct.ibv_qp** %10, align 8
  store %struct.ibv_qp_init_attr* %2, %struct.ibv_qp_init_attr** %11, align 8
  store %struct.ibv_create_qp* %3, %struct.ibv_create_qp** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.ibv_create_qp_resp* %5, %struct.ibv_create_qp_resp** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32, i32* @CREATE_QP, align 4
  %21 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %22 = load i64, i64* %15, align 8
  %23 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_qp* %18, i64 %19, i32 %20, %struct.ibv_create_qp_resp* %21, i64 %22)
  %24 = load %struct.ibv_qp*, %struct.ibv_qp** %10, align 8
  %25 = ptrtoint %struct.ibv_qp* %24 to i64
  %26 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %27 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %29 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %32 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %34 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %33, i32 0, i32 5
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %39 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %38, i32 0, i32 12
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %41 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %40, i32 0, i32 4
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %46 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %45, i32 0, i32 11
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %48 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %7
  %52 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %53 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  br label %58

57:                                               ; preds = %7
  br label %58

58:                                               ; preds = %57, %51
  %59 = phi i32 [ %56, %51 ], [ 0, %57 ]
  %60 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %61 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %60, i32 0, i32 10
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %63 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %67 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %69 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %73 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 4
  %74 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %75 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %79 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %78, i32 0, i32 7
  store i32 %77, i32* %79, align 8
  %80 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %81 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %85 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %84, i32 0, i32 6
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %87 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %91 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %93 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %96 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %98 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %101 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 8
  %102 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %103 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %102, i32 0, i32 1
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %103, align 8
  %105 = icmp ne %struct.TYPE_8__* %104, null
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %110 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 8
  %111 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %112 = getelementptr inbounds %struct.ibv_create_qp, %struct.ibv_create_qp* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %114 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %113, i32 0, i32 0
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ibv_create_qp*, %struct.ibv_create_qp** %12, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i64 @write(i32 %117, %struct.ibv_create_qp* %118, i64 %119)
  %121 = load i64, i64* %13, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %58
  %124 = load i32, i32* @errno, align 4
  store i32 %124, i32* %8, align 4
  br label %209

125:                                              ; preds = %58
  %126 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %127 = load i64, i64* %15, align 8
  %128 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_qp_resp* %126, i64 %127)
  %129 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %130 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %129, i32 0, i32 6
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ibv_qp*, %struct.ibv_qp** %10, align 8
  %133 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %135 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ibv_qp*, %struct.ibv_qp** %10, align 8
  %138 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ibv_pd*, %struct.ibv_pd** %9, align 8
  %140 = getelementptr inbounds %struct.ibv_pd, %struct.ibv_pd* %139, i32 0, i32 0
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %140, align 8
  %142 = load %struct.ibv_qp*, %struct.ibv_qp** %10, align 8
  %143 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %142, i32 0, i32 0
  store %struct.TYPE_9__* %141, %struct.TYPE_9__** %143, align 8
  %144 = load i32, i32* @abi_ver, align 4
  %145 = icmp sgt i32 %144, 3
  br i1 %145, label %146, label %177

146:                                              ; preds = %125
  %147 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %148 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %151 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 4
  store i32 %149, i32* %152, align 8
  %153 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %154 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %157 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 3
  store i32 %155, i32* %158, align 4
  %159 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %160 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %163 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 2
  store i32 %161, i32* %164, align 8
  %165 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %166 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %169 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 4
  %171 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %172 = getelementptr inbounds %struct.ibv_create_qp_resp, %struct.ibv_create_qp_resp* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %175 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32 %173, i32* %176, align 8
  br label %177

177:                                              ; preds = %146, %125
  %178 = load i32, i32* @abi_ver, align 4
  %179 = icmp eq i32 %178, 4
  br i1 %179, label %180, label %192

180:                                              ; preds = %177
  %181 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %182 = bitcast %struct.ibv_create_qp_resp* %181 to %struct.ibv_create_qp_resp_v4*
  store %struct.ibv_create_qp_resp_v4* %182, %struct.ibv_create_qp_resp_v4** %16, align 8
  %183 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %184 = bitcast %struct.ibv_create_qp_resp* %183 to i8*
  %185 = getelementptr i8, i8* %184, i64 28
  %186 = load %struct.ibv_create_qp_resp_v4*, %struct.ibv_create_qp_resp_v4** %16, align 8
  %187 = bitcast %struct.ibv_create_qp_resp_v4* %186 to i8*
  %188 = getelementptr i8, i8* %187, i64 4
  %189 = load i64, i64* %15, align 8
  %190 = sub i64 %189, 28
  %191 = call i32 @memmove(i8* %185, i8* %188, i64 %190)
  br label %208

192:                                              ; preds = %177
  %193 = load i32, i32* @abi_ver, align 4
  %194 = icmp sle i32 %193, 3
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %197 = bitcast %struct.ibv_create_qp_resp* %196 to %struct.ibv_create_qp_resp_v3*
  store %struct.ibv_create_qp_resp_v3* %197, %struct.ibv_create_qp_resp_v3** %17, align 8
  %198 = load %struct.ibv_create_qp_resp*, %struct.ibv_create_qp_resp** %14, align 8
  %199 = bitcast %struct.ibv_create_qp_resp* %198 to i8*
  %200 = getelementptr i8, i8* %199, i64 28
  %201 = load %struct.ibv_create_qp_resp_v3*, %struct.ibv_create_qp_resp_v3** %17, align 8
  %202 = bitcast %struct.ibv_create_qp_resp_v3* %201 to i8*
  %203 = getelementptr i8, i8* %202, i64 4
  %204 = load i64, i64* %15, align 8
  %205 = sub i64 %204, 28
  %206 = call i32 @memmove(i8* %200, i8* %203, i64 %205)
  br label %207

207:                                              ; preds = %195, %192
  br label %208

208:                                              ; preds = %207, %180
  store i32 0, i32* %8, align 4
  br label %209

209:                                              ; preds = %208, %123
  %210 = load i32, i32* %8, align 4
  ret i32 %210
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_create_qp*, i64, i32, %struct.ibv_create_qp_resp*, i64) #1

declare dso_local i64 @write(i32, %struct.ibv_create_qp*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_create_qp_resp*, i64) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
