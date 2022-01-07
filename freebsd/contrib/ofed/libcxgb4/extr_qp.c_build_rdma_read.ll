; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libcxgb4/extr_qp.c_build_rdma_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t4_wr = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.ibv_send_wr = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t4_wr*, %struct.ibv_send_wr*, i32*)* @build_rdma_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_read(%union.t4_wr* %0, %struct.ibv_send_wr* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.t4_wr*, align 8
  %6 = alloca %struct.ibv_send_wr*, align 8
  %7 = alloca i32*, align 8
  store %union.t4_wr* %0, %union.t4_wr** %5, align 8
  store %struct.ibv_send_wr* %1, %struct.ibv_send_wr** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %9 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp sgt i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %123

15:                                               ; preds = %3
  %16 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %17 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %90

20:                                               ; preds = %15
  %21 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %22 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i8* @htobe32(i32 %25)
  %27 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %28 = bitcast %union.t4_wr* %27 to %struct.TYPE_8__*
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 8
  store i8* %26, i8** %29, align 8
  %30 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %31 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = ashr i32 %34, 32
  %36 = call i8* @htobe32(i32 %35)
  %37 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %38 = bitcast %union.t4_wr* %37 to %struct.TYPE_8__*
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 7
  store i8* %36, i8** %39, align 8
  %40 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %41 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @htobe32(i32 %44)
  %46 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %47 = bitcast %union.t4_wr* %46 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  store i8* %45, i8** %48, align 8
  %49 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %50 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htobe32(i32 %54)
  %56 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %57 = bitcast %union.t4_wr* %56 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i8* %55, i8** %58, align 8
  %59 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %60 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %59, i32 0, i32 1
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i64 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @htobe32(i32 %64)
  %66 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %67 = bitcast %union.t4_wr* %66 to %struct.TYPE_8__*
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  store i8* %65, i8** %68, align 8
  %69 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %70 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = ashr i32 %74, 32
  %76 = call i8* @htobe32(i32 %75)
  %77 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %78 = bitcast %union.t4_wr* %77 to %struct.TYPE_8__*
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  store i8* %76, i8** %79, align 8
  %80 = load %struct.ibv_send_wr*, %struct.ibv_send_wr** %6, align 8
  %81 = getelementptr inbounds %struct.ibv_send_wr, %struct.ibv_send_wr* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i64 0
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @htobe32(i32 %85)
  %87 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %88 = bitcast %union.t4_wr* %87 to %struct.TYPE_8__*
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i8* %86, i8** %89, align 8
  br label %114

90:                                               ; preds = %15
  %91 = call i8* @htobe32(i32 2)
  %92 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %93 = bitcast %union.t4_wr* %92 to %struct.TYPE_8__*
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 8
  store i8* %91, i8** %94, align 8
  %95 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %96 = bitcast %union.t4_wr* %95 to %struct.TYPE_8__*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 7
  store i8* null, i8** %97, align 8
  %98 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %99 = bitcast %union.t4_wr* %98 to %struct.TYPE_8__*
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 6
  store i8* null, i8** %100, align 8
  %101 = call i8* @htobe32(i32 2)
  %102 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %103 = bitcast %union.t4_wr* %102 to %struct.TYPE_8__*
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 5
  store i8* %101, i8** %104, align 8
  %105 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %106 = bitcast %union.t4_wr* %105 to %struct.TYPE_8__*
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  store i8* null, i8** %107, align 8
  %108 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %109 = bitcast %union.t4_wr* %108 to %struct.TYPE_8__*
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  store i8* null, i8** %110, align 8
  %111 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %112 = bitcast %union.t4_wr* %111 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  store i8* null, i8** %113, align 8
  br label %114

114:                                              ; preds = %90, %20
  %115 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %116 = bitcast %union.t4_wr* %115 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  store i64 0, i64* %117, align 8
  %118 = load %union.t4_wr*, %union.t4_wr** %5, align 8
  %119 = bitcast %union.t4_wr* %118 to %struct.TYPE_8__*
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = call i32 @DIV_ROUND_UP(i32 72, i32 16)
  %122 = load i32*, i32** %7, align 8
  store i32 %121, i32* %122, align 4
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %114, %12
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
