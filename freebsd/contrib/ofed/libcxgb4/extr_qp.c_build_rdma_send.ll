; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i32 }
%union.t4_wr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i64, i64, i64, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }
%struct.ibv_send_wr = type { i32, i32, i32 }

@T4_MAX_SEND_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBV_SEND_SOLICITED = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_SE = common dso_local global i32 0, align 4
@FW_RI_SEND = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@T4_MAX_SEND_INLINE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %union.t4_wr*, %struct.ibv_send_wr*, i32*)* @build_rdma_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_send(%struct.t4_sq* %0, %union.t4_wr* %1, %struct.ibv_send_wr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.t4_sq*, align 8
  %7 = alloca %union.t4_wr*, align 8
  %8 = alloca %struct.ibv_send_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.t4_sq* %0, %struct.t4_sq** %6, align 8
  store %union.t4_wr* %1, %union.t4_wr** %7, align 8
  store %struct.ibv_send_wr* %2, %struct.ibv_send_wr** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %14 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @T4_MAX_SEND_SGE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %147

21:                                               ; preds = %4
  %22 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IBV_SEND_SOLICITED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* @FW_RI_SEND_WITH_SE, align 4
  %30 = call i32 @FW_RI_SEND_WR_SENDOP_V(i32 %29)
  %31 = call i8* @htobe32(i32 %30)
  %32 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %33 = bitcast %union.t4_wr* %32 to %struct.TYPE_5__*
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i8* %31, i8** %34, align 8
  br label %42

35:                                               ; preds = %21
  %36 = load i32, i32* @FW_RI_SEND, align 4
  %37 = call i32 @FW_RI_SEND_WR_SENDOP_V(i32 %36)
  %38 = call i8* @htobe32(i32 %37)
  %39 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %40 = bitcast %union.t4_wr* %39 to %struct.TYPE_5__*
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 5
  store i8* %38, i8** %41, align 8
  br label %42

42:                                               ; preds = %35, %28
  %43 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %44 = bitcast %union.t4_wr* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %47 = bitcast %union.t4_wr* %46 to %struct.TYPE_5__*
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  store i64 0, i64* %48, align 8
  %49 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %50 = bitcast %union.t4_wr* %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  store i32 0, i32* %10, align 4
  %52 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %53 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %108

56:                                               ; preds = %42
  %57 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %58 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IBV_SEND_INLINE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %82

63:                                               ; preds = %56
  %64 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %65 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %66 = bitcast %union.t4_wr* %65 to %struct.TYPE_5__*
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %71 = load i32, i32* @T4_MAX_SEND_INLINE, align 4
  %72 = call i32 @build_immd(%struct.t4_sq* %64, %struct.TYPE_6__* %69, %struct.ibv_send_wr* %70, i32 %71, i32* %10)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %147

77:                                               ; preds = %63
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 60, %79
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  br label %107

82:                                               ; preds = %56
  %83 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %84 = bitcast %union.t4_wr* %83 to %struct.TYPE_5__*
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %89 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %92 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @build_isgl(i32 %87, i32 %90, i32 %93, i32* %10)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %82
  %98 = load i32, i32* %12, align 4
  store i32 %98, i32* %5, align 4
  br label %147

99:                                               ; preds = %82
  %100 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %101 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = sext i32 %102 to i64
  %104 = mul i64 %103, 4
  %105 = add i64 60, %104
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %99, %77
  br label %138

108:                                              ; preds = %42
  %109 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %110 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %111 = bitcast %union.t4_wr* %110 to %struct.TYPE_5__*
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  store i32 %109, i32* %116, align 8
  %117 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %118 = bitcast %union.t4_wr* %117 to %struct.TYPE_5__*
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i64 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %125 = bitcast %union.t4_wr* %124 to %struct.TYPE_5__*
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 0
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i64 0, i64* %130, align 8
  %131 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %132 = bitcast %union.t4_wr* %131 to %struct.TYPE_5__*
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  store i64 0, i64* %137, align 8
  store i32 60, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %108, %107
  %139 = load i32, i32* %11, align 4
  %140 = call i32 @DIV_ROUND_UP(i32 %139, i32 16)
  %141 = load i32*, i32** %9, align 8
  store i32 %140, i32* %141, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i8* @htobe32(i32 %142)
  %144 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %145 = bitcast %union.t4_wr* %144 to %struct.TYPE_5__*
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i8* %143, i8** %146, align 8
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %138, %97, %75, %18
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @FW_RI_SEND_WR_SENDOP_V(i32) #1

declare dso_local i32 @build_immd(%struct.t4_sq*, %struct.TYPE_6__*, %struct.ibv_send_wr*, i32, i32*) #1

declare dso_local i32 @build_isgl(i32, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
