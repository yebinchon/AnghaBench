; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_add_qp_dest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_add_qp_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_qp = type { %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.ds_qp* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%union.socket_addr = type { i32 }
%struct.ibv_port_attr = type { i32 }
%struct.ibv_ah_attr = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ds_compare_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_qp*, %union.socket_addr*, i32)* @ds_add_qp_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_add_qp_dest(%struct.ds_qp* %0, %union.socket_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ds_qp*, align 8
  %6 = alloca %union.socket_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ibv_port_attr, align 4
  %9 = alloca %struct.ibv_ah_attr, align 4
  %10 = alloca i32, align 4
  store %struct.ds_qp* %0, %struct.ds_qp** %5, align 8
  store %union.socket_addr* %1, %union.socket_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %12 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %union.socket_addr*, %union.socket_addr** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @memcpy(i32* %13, %union.socket_addr* %14, i32 %15)
  %17 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %18 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %19 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 3
  store %struct.ds_qp* %17, %struct.ds_qp** %20, align 8
  %21 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %22 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %29 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 8
  %31 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %32 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ibv_query_port(i32 %35, i32 %40, %struct.ibv_port_attr* %8)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %84

46:                                               ; preds = %3
  %47 = call i32 @memset(%struct.ibv_ah_attr* %9, i32 0, i32 8)
  %48 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %9, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %52 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.ibv_ah_attr, %struct.ibv_ah_attr* %9, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %58 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %57, i32 0, i32 2
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ibv_create_ah(i32 %61, %struct.ibv_ah_attr* %9)
  %63 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  %66 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %67 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %46
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = call i32 @ERR(i32 %72)
  store i32 %73, i32* %4, align 4
  br label %84

74:                                               ; preds = %46
  %75 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %76 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %79 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* @ds_compare_addr, align 4
  %83 = call i32 @tsearch(i32* %77, i32* %81, i32 %82)
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %74, %71, %44
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @memcpy(i32*, %union.socket_addr*, i32) #1

declare dso_local i32 @ibv_query_port(i32, i32, %struct.ibv_port_attr*) #1

declare dso_local i32 @memset(%struct.ibv_ah_attr*, i32, i32) #1

declare dso_local i32 @ibv_create_ah(i32, %struct.ibv_ah_attr*) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @tsearch(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
