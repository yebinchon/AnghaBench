; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, i32 }
%union.socket_addr = type { i32 }
%struct.ds_qp = type { %struct.TYPE_11__*, i32, %struct.rsocket* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_8__, i32, i32, i32, %struct.ds_qp* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.epoll_event = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.ds_qp* }

@ENOMEM = common dso_local global i32 0, align 4
@RDMA_PS_UDP = common dso_local global i32 0, align 4
@IBV_QPT_UD = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@RS_SNDLOWAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %union.socket_addr*, i32, %struct.ds_qp**)* @ds_create_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_create_qp(%struct.rsocket* %0, %union.socket_addr* %1, i32 %2, %struct.ds_qp** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca %union.socket_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ds_qp**, align 8
  %10 = alloca %struct.ds_qp*, align 8
  %11 = alloca %struct.ibv_qp_init_attr, align 8
  %12 = alloca %struct.epoll_event, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %6, align 8
  store %union.socket_addr* %1, %union.socket_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ds_qp** %3, %struct.ds_qp*** %9, align 8
  %15 = call %struct.ds_qp* @calloc(i32 1, i32 24)
  store %struct.ds_qp* %15, %struct.ds_qp** %10, align 8
  %16 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %17 = icmp ne %struct.ds_qp* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = call i32 @ERR(i32 %19)
  store i32 %20, i32* %5, align 4
  br label %172

21:                                               ; preds = %4
  %22 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %23 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %24 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %23, i32 0, i32 2
  store %struct.rsocket* %22, %struct.rsocket** %24, align 8
  %25 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %26 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %25, i32 0, i32 0
  %27 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %28 = load i32, i32* @RDMA_PS_UDP, align 4
  %29 = call i32 @rdma_create_id(i32* null, %struct.TYPE_11__** %26, %struct.ds_qp* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %168

33:                                               ; preds = %21
  %34 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %35 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %34, i32 0, i32 1
  %36 = load %union.socket_addr*, %union.socket_addr** %7, align 8
  %37 = call i32 @ds_format_hdr(i32* %35, %union.socket_addr* %36)
  %38 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %39 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %38, i32 0, i32 0
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = load %union.socket_addr*, %union.socket_addr** %7, align 8
  %42 = bitcast %union.socket_addr* %41 to i32*
  %43 = call i32 @rdma_bind_addr(%struct.TYPE_11__* %40, i32* %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %168

47:                                               ; preds = %33
  %48 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %49 = call i32 @ds_init_bufs(%struct.ds_qp* %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %168

53:                                               ; preds = %47
  %54 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %55 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %56 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @rs_create_cq(%struct.rsocket* %54, %struct.TYPE_11__* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %168

62:                                               ; preds = %53
  %63 = call i32 @memset(%struct.ibv_qp_init_attr* %11, i32 0, i32 48)
  %64 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %65 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 5
  store %struct.ds_qp* %64, %struct.ds_qp** %65, align 8
  %66 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %67 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %66, i32 0, i32 0
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 4
  store i32 %70, i32* %71, align 8
  %72 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %73 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %72, i32 0, i32 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 3
  store i32 %76, i32* %77, align 4
  %78 = load i32, i32* @IBV_QPT_UD, align 4
  %79 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %82 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  %86 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %87 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  store i32 2, i32* %94, align 4
  %95 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %96 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %101 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %100, i32 0, i32 0
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = call i32 @rdma_create_qp(%struct.TYPE_11__* %102, i32* null, %struct.ibv_qp_init_attr* %11)
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %62
  br label %168

107:                                              ; preds = %62
  %108 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %11, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %112 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %114 = load %union.socket_addr*, %union.socket_addr** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @ds_add_qp_dest(%struct.ds_qp* %113, %union.socket_addr* %114, i32 %115)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %168

120:                                              ; preds = %107
  %121 = load i32, i32* @EPOLLIN, align 4
  %122 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 1
  store i32 %121, i32* %122, align 8
  %123 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %124 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %12, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store %struct.ds_qp* %123, %struct.ds_qp** %125, align 8
  %126 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %127 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %130 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %131 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @epoll_ctl(i32 %128, i32 %129, i32 %136, %struct.epoll_event* %12)
  store i32 %137, i32* %14, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %120
  br label %168

141:                                              ; preds = %120
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %159, %141
  %143 = load i32, i32* %13, align 4
  %144 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %145 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp slt i32 %143, %146
  br i1 %147, label %148, label %162

148:                                              ; preds = %142
  %149 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %150 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i32, i32* @RS_SNDLOWAT, align 4
  %153 = mul nsw i32 %151, %152
  %154 = call i32 @ds_post_recv(%struct.rsocket* %149, %struct.ds_qp* %150, i32 %153)
  store i32 %154, i32* %14, align 4
  %155 = load i32, i32* %14, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  br label %168

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %142

162:                                              ; preds = %142
  %163 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %164 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %165 = call i32 @ds_insert_qp(%struct.rsocket* %163, %struct.ds_qp* %164)
  %166 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %167 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  store %struct.ds_qp* %166, %struct.ds_qp** %167, align 8
  store i32 0, i32* %5, align 4
  br label %172

168:                                              ; preds = %157, %140, %119, %106, %61, %52, %46, %32
  %169 = load %struct.ds_qp*, %struct.ds_qp** %10, align 8
  %170 = call i32 @ds_free_qp(%struct.ds_qp* %169)
  %171 = load i32, i32* %14, align 4
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %162, %18
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.ds_qp* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rdma_create_id(i32*, %struct.TYPE_11__**, %struct.ds_qp*, i32) #1

declare dso_local i32 @ds_format_hdr(i32*, %union.socket_addr*) #1

declare dso_local i32 @rdma_bind_addr(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @ds_init_bufs(%struct.ds_qp*) #1

declare dso_local i32 @rs_create_cq(%struct.rsocket*, %struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_qp(%struct.TYPE_11__*, i32*, %struct.ibv_qp_init_attr*) #1

declare dso_local i32 @ds_add_qp_dest(%struct.ds_qp*, %union.socket_addr*, i32) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

declare dso_local i32 @ds_post_recv(%struct.rsocket*, %struct.ds_qp*, i32) #1

declare dso_local i32 @ds_insert_qp(%struct.rsocket*, %struct.ds_qp*) #1

declare dso_local i32 @ds_free_qp(%struct.ds_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
