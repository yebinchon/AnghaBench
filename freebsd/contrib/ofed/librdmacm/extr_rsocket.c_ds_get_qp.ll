; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { %struct.ds_qp* }
%struct.ds_qp = type { i32 }
%union.socket_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*, %union.socket_addr*, i32, %struct.ds_qp**)* @ds_get_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_get_qp(%struct.rsocket* %0, %union.socket_addr* %1, i32 %2, %struct.ds_qp** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rsocket*, align 8
  %7 = alloca %union.socket_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ds_qp**, align 8
  store %struct.rsocket* %0, %struct.rsocket** %6, align 8
  store %union.socket_addr* %1, %union.socket_addr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ds_qp** %3, %struct.ds_qp*** %9, align 8
  %10 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %11 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %10, i32 0, i32 0
  %12 = load %struct.ds_qp*, %struct.ds_qp** %11, align 8
  %13 = icmp ne %struct.ds_qp* %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %4
  %15 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 0
  %17 = load %struct.ds_qp*, %struct.ds_qp** %16, align 8
  %18 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  store %struct.ds_qp* %17, %struct.ds_qp** %18, align 8
  br label %19

19:                                               ; preds = %34, %14
  %20 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  %21 = load %struct.ds_qp*, %struct.ds_qp** %20, align 8
  %22 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rdma_get_local_addr(i32 %23)
  %25 = load %union.socket_addr*, %union.socket_addr** %7, align 8
  %26 = call i32 @ds_compare_addr(i32 %24, %union.socket_addr* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %48

29:                                               ; preds = %19
  %30 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  %31 = load %struct.ds_qp*, %struct.ds_qp** %30, align 8
  %32 = call %struct.ds_qp* @ds_next_qp(%struct.ds_qp* %31)
  %33 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  store %struct.ds_qp* %32, %struct.ds_qp** %33, align 8
  br label %34

34:                                               ; preds = %29
  %35 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  %36 = load %struct.ds_qp*, %struct.ds_qp** %35, align 8
  %37 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %38 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %37, i32 0, i32 0
  %39 = load %struct.ds_qp*, %struct.ds_qp** %38, align 8
  %40 = icmp ne %struct.ds_qp* %36, %39
  br i1 %40, label %19, label %41

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.rsocket*, %struct.rsocket** %6, align 8
  %44 = load %union.socket_addr*, %union.socket_addr** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ds_qp**, %struct.ds_qp*** %9, align 8
  %47 = call i32 @ds_create_qp(%struct.rsocket* %43, %union.socket_addr* %44, i32 %45, %struct.ds_qp** %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %42, %28
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ds_compare_addr(i32, %union.socket_addr*) #1

declare dso_local i32 @rdma_get_local_addr(i32) #1

declare dso_local %struct.ds_qp* @ds_next_qp(%struct.ds_qp*) #1

declare dso_local i32 @ds_create_qp(%struct.rsocket*, %union.socket_addr*, i32, %struct.ds_qp**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
