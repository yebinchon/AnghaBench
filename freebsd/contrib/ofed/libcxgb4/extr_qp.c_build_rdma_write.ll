; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i32 }
%union.t4_wr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, i32, i8*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32 }
%struct.ibv_send_wr = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@T4_MAX_SEND_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBV_SEND_INLINE = common dso_local global i32 0, align 4
@T4_MAX_WRITE_INLINE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %union.t4_wr*, %struct.ibv_send_wr*, i32*)* @build_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_write(%struct.t4_sq* %0, %union.t4_wr* %1, %struct.ibv_send_wr* %2, i32* %3) #0 {
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
  br label %138

21:                                               ; preds = %4
  %22 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %23 = bitcast %union.t4_wr* %22 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %26 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @htobe32(i32 %29)
  %31 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %32 = bitcast %union.t4_wr* %31 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %35 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @htobe64(i32 %38)
  %40 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %41 = bitcast %union.t4_wr* %40 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %44 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %99

47:                                               ; preds = %21
  %48 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %49 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IBV_SEND_INLINE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %56 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %57 = bitcast %union.t4_wr* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %62 = load i32, i32* @T4_MAX_WRITE_INLINE, align 4
  %63 = call i32 @build_immd(%struct.t4_sq* %55, %struct.TYPE_10__* %60, %struct.ibv_send_wr* %61, i32 %62, i32* %10)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %138

68:                                               ; preds = %54
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 52, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  br label %98

73:                                               ; preds = %47
  %74 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %75 = bitcast %union.t4_wr* %74 to %struct.TYPE_9__*
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %80 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %83 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @build_isgl(i32 %78, i32 %81, i32 %84, i32* %10)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %5, align 4
  br label %138

90:                                               ; preds = %73
  %91 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %8, align 8
  %92 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = mul i64 %94, 4
  %96 = add i64 52, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %90, %68
  br label %129

99:                                               ; preds = %21
  %100 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %101 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %102 = bitcast %union.t4_wr* %101 to %struct.TYPE_9__*
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  store i32 %100, i32* %107, align 8
  %108 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %109 = bitcast %union.t4_wr* %108 to %struct.TYPE_9__*
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  store i64 0, i64* %114, align 8
  %115 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %116 = bitcast %union.t4_wr* %115 to %struct.TYPE_9__*
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i64 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %123 = bitcast %union.t4_wr* %122 to %struct.TYPE_9__*
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i64 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  store i32 52, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %129

129:                                              ; preds = %99, %98
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @DIV_ROUND_UP(i32 %130, i32 16)
  %132 = load i32*, i32** %9, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = call i8* @htobe32(i32 %133)
  %135 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %136 = bitcast %union.t4_wr* %135 to %struct.TYPE_9__*
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  store i8* %134, i8** %137, align 8
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %129, %88, %66, %18
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @htobe64(i32) #1

declare dso_local i32 @build_immd(%struct.t4_sq*, %struct.TYPE_10__*, %struct.ibv_send_wr*, i32, i32*) #1

declare dso_local i32 @build_isgl(i32, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
