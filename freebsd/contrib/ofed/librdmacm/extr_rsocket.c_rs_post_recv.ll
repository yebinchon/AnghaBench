; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_post_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_post_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ibv_recv_wr = type { i32, %struct.ibv_sge*, i8*, i32* }
%struct.ibv_sge = type { i32, i32, i64 }

@RS_OPT_MSG_SEND = common dso_local global i32 0, align 4
@RS_MSG_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @rs_post_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_post_recv(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.ibv_recv_wr, align 8
  %4 = alloca %struct.ibv_recv_wr*, align 8
  %5 = alloca %struct.ibv_sge, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %6 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %8 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @RS_OPT_MSG_SEND, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = call i8* @rs_recv_wr_id(i32 0)
  %15 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 2
  store i8* %14, i8** %15, align 8
  %16 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 1
  store %struct.ibv_sge* null, %struct.ibv_sge** %16, align 8
  %17 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 0
  store i32 0, i32* %17, align 8
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %20 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @rs_recv_wr_id(i32 %21)
  %23 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %25 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %28 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %26, %29
  %31 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %32 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @RS_MSG_SIZE, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add i64 %30, %36
  %38 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 2
  store i64 %37, i64* %38, align 8
  %39 = load i32, i32* @RS_MSG_SIZE, align 4
  %40 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 0
  store i32 %39, i32* %40, align 8
  %41 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %42 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %41, i32 0, i32 4
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.ibv_sge, %struct.ibv_sge* %5, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 1
  store %struct.ibv_sge* %5, %struct.ibv_sge** %47, align 8
  %48 = getelementptr inbounds %struct.ibv_recv_wr, %struct.ibv_recv_wr* %3, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %50 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %54 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %18
  %58 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %59 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %18
  br label %61

61:                                               ; preds = %60, %13
  %62 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %63 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ibv_post_recv(i32 %66, %struct.ibv_recv_wr* %3, %struct.ibv_recv_wr** %4)
  %68 = call i32 @rdma_seterrno(i32 %67)
  ret i32 %68
}

declare dso_local i8* @rs_recv_wr_id(i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_post_recv(i32, %struct.ibv_recv_wr*, %struct.ibv_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
