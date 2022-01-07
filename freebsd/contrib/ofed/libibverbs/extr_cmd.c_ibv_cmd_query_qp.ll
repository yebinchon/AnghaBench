; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_cmd.c_ibv_cmd_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32, i32, i32, i32, i32, %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.ibv_qp_attr = type { %struct.TYPE_16__, %struct.TYPE_12__, %struct.TYPE_20__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32, i32, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i32 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_18__, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.ibv_query_qp = type { i32, i32 }
%struct.ibv_query_qp_resp = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IBV_QP_DEST_QPN = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@QUERY_QP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibv_cmd_query_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr* %3, %struct.ibv_query_qp* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_qp*, align 8
  %9 = alloca %struct.ibv_qp_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ibv_qp_init_attr*, align 8
  %12 = alloca %struct.ibv_query_qp*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.ibv_query_qp_resp, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %8, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.ibv_qp_init_attr* %3, %struct.ibv_qp_init_attr** %11, align 8
  store %struct.ibv_query_qp* %4, %struct.ibv_query_qp** %12, align 8
  store i64 %5, i64* %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @IBV_QP_DEST_QPN, align 4
  %17 = shl i32 %16, 1
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %23, i32* %7, align 4
  br label %362

24:                                               ; preds = %6
  %25 = load %struct.ibv_query_qp*, %struct.ibv_query_qp** %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* @QUERY_QP, align 4
  %28 = call i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_qp* %25, i64 %26, i32 %27, %struct.ibv_query_qp_resp* %14, i32 196)
  %29 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %30 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ibv_query_qp*, %struct.ibv_query_qp** %12, align 8
  %33 = getelementptr inbounds %struct.ibv_query_qp, %struct.ibv_query_qp* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.ibv_query_qp*, %struct.ibv_query_qp** %12, align 8
  %36 = getelementptr inbounds %struct.ibv_query_qp, %struct.ibv_query_qp* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %38 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %37, i32 0, i32 5
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_query_qp*, %struct.ibv_query_qp** %12, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @write(i32 %41, %struct.ibv_query_qp* %42, i64 %43)
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %24
  %48 = load i32, i32* @errno, align 4
  store i32 %48, i32* %7, align 4
  br label %362

49:                                               ; preds = %24
  %50 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_qp_resp* %14, i32 196)
  %51 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 28
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %54 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %53, i32 0, i32 23
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 27
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %58 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %57, i32 0, i32 22
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 26
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %62 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %61, i32 0, i32 21
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %66 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %65, i32 0, i32 20
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 24
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %70 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %69, i32 0, i32 19
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %74 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %73, i32 0, i32 18
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 22
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %78 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %77, i32 0, i32 17
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 21
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %82 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %81, i32 0, i32 16
  store i32 %80, i32* %82, align 4
  %83 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 20
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %86 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %85, i32 0, i32 15
  store i32 %84, i32* %86, align 4
  %87 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 19
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %90 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %89, i32 0, i32 14
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 18
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %94 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %93, i32 0, i32 13
  store i32 %92, i32* %94, align 4
  %95 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 17
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %98 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %97, i32 0, i32 12
  store i32 %96, i32* %98, align 4
  %99 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 16
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %102 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 15
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %106 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %105, i32 0, i32 10
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 14
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %110 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 13
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %114 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %113, i32 0, i32 8
  store i32 %112, i32* %114, align 4
  %115 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %118 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %117, i32 0, i32 7
  store i32 %116, i32* %118, align 4
  %119 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 11
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %122 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 4
  %123 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 10
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %126 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 9
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %130 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %134 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %138 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 4
  store i32 %136, i32* %139, align 4
  %140 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %143 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %143, i32 0, i32 3
  store i32 %141, i32* %144, align 4
  %145 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %148 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %148, i32 0, i32 2
  store i32 %146, i32* %149, align 4
  %150 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %153 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  store i32 %151, i32* %154, align 4
  %155 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %158 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %158, i32 0, i32 0
  store i32 %156, i32* %159, align 4
  %160 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %161 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 5
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @memcpy(i32 %165, i32 %168, i32 16)
  %170 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %174 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %175, i32 0, i32 3
  store i32 %172, i32* %176, align 4
  %177 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %181 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 6
  store i32 %179, i32* %182, align 4
  %183 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %187 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  store i32 %185, i32* %189, align 4
  %190 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %194 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 5
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 1
  store i32 %192, i32* %196, align 4
  %197 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %201 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  store i32 %199, i32* %203, align 4
  %204 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %208 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 4
  store i32 %206, i32* %209, align 4
  %210 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %214 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 3
  store i32 %212, i32* %215, align 4
  %216 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %220 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 2
  store i32 %218, i32* %221, align 4
  %222 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %226 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  %228 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 7
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %232 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  store i32 %230, i32* %233, align 4
  %234 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %235 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 5
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %240, i32 0, i32 10
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @memcpy(i32 %239, i32 %242, i32 16)
  %244 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %245 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %244, i32 0, i32 9
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %248 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 5
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 3
  store i32 %246, i32* %250, align 4
  %251 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 8
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %255 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i32 0, i32 6
  store i32 %253, i32* %256, align 4
  %257 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %258 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %261 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 5
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 2
  store i32 %259, i32* %263, align 4
  %264 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %265 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %268 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %268, i32 0, i32 5
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 1
  store i32 %266, i32* %270, align 4
  %271 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %272 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %275 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 0
  store i32 %273, i32* %277, align 4
  %278 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 4
  %280 = load i32, i32* %279, align 4
  %281 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %282 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %282, i32 0, i32 4
  store i32 %280, i32* %283, align 4
  %284 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %288 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 3
  store i32 %286, i32* %289, align 4
  %290 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %291 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %294 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %294, i32 0, i32 2
  store i32 %292, i32* %295, align 4
  %296 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %300 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 1
  store i32 %298, i32* %301, align 4
  %302 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 6
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %9, align 8
  %306 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %306, i32 0, i32 0
  store i32 %304, i32* %307, align 4
  %308 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %309 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %312 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %311, i32 0, i32 6
  store i32 %310, i32* %312, align 4
  %313 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %314 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %313, i32 0, i32 3
  %315 = load i32, i32* %314, align 4
  %316 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %317 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %316, i32 0, i32 5
  store i32 %315, i32* %317, align 4
  %318 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %319 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %322 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 4
  %323 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %324 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %327 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %326, i32 0, i32 3
  store i32 %325, i32* %327, align 4
  %328 = load %struct.ibv_qp*, %struct.ibv_qp** %8, align 8
  %329 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %332 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %331, i32 0, i32 2
  store i32 %330, i32* %332, align 4
  %333 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %336 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %336, i32 0, i32 4
  store i32 %334, i32* %337, align 4
  %338 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %341 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %341, i32 0, i32 3
  store i32 %339, i32* %342, align 4
  %343 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 3
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %346 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %346, i32 0, i32 2
  store i32 %344, i32* %347, align 4
  %348 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %351 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %351, i32 0, i32 1
  store i32 %349, i32* %352, align 4
  %353 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %356 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  store i32 %354, i32* %357, align 4
  %358 = getelementptr inbounds %struct.ibv_query_qp_resp, %struct.ibv_query_qp_resp* %14, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %11, align 8
  %361 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 4
  store i32 0, i32* %7, align 4
  br label %362

362:                                              ; preds = %49, %47, %22
  %363 = load i32, i32* %7, align 4
  ret i32 %363
}

declare dso_local i32 @IBV_INIT_CMD_RESP(%struct.ibv_query_qp*, i64, i32, %struct.ibv_query_qp_resp*, i32) #1

declare dso_local i64 @write(i32, %struct.ibv_query_qp*, i64) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.ibv_query_qp_resp*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
