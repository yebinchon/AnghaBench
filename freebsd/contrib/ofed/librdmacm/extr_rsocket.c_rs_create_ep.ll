; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_create_ep.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_create_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.rsocket* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32 }

@IBV_TRANSPORT_IWARP = common dso_local global i64 0, align 8
@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@IBV_QPT_RC = common dso_local global i32 0, align 4
@RS_MSG_SIZE = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_create_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_create_ep(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.ibv_qp_init_attr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %8 = call i32 @rs_set_qp_size(%struct.rsocket* %7)
  %9 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 3
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IBV_TRANSPORT_IWARP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %22 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %23 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %28 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %29 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = call i32 @rs_create_cq(%struct.rsocket* %27, %struct.TYPE_9__* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %129

36:                                               ; preds = %26
  %37 = call i32 @memset(%struct.ibv_qp_init_attr* %4, i32 0, i32 64)
  %38 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %39 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 5
  store %struct.rsocket* %38, %struct.rsocket** %39, align 8
  %40 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %41 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %40, i32 0, i32 3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 4
  store i32 %44, i32* %45, align 8
  %46 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %47 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 3
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* @IBV_QPT_RC, align 4
  %53 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 2
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %56 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %61 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 2, i32* %66, align 4
  %67 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  store i32 1, i32* %68, align 8
  %69 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %70 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i64 %71, i64* %73, align 8
  %74 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %75 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = call i32 @rdma_create_qp(%struct.TYPE_9__* %76, i32* null, %struct.ibv_qp_init_attr* %4)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %36
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %129

82:                                               ; preds = %36
  %83 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %4, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %87 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %89 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %82
  %95 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %96 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @RS_MSG_SIZE, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @ENOTSUP, align 4
  %102 = call i32 @ERR(i32 %101)
  store i32 %102, i32* %2, align 4
  br label %129

103:                                              ; preds = %94, %82
  %104 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %105 = call i32 @rs_init_bufs(%struct.rsocket* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %129

110:                                              ; preds = %103
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %125, %110
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %114 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %111
  %118 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %119 = call i32 @rs_post_recv(%struct.rsocket* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %129

124:                                              ; preds = %117
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %5, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %5, align 4
  br label %111

128:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %122, %108, %100, %80, %34
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @rs_set_qp_size(%struct.rsocket*) #1

declare dso_local i32 @rs_create_cq(%struct.rsocket*, %struct.TYPE_9__*) #1

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_9__*, i32*, %struct.ibv_qp_init_attr*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rs_init_bufs(%struct.rsocket*) #1

declare dso_local i32 @rs_post_recv(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
