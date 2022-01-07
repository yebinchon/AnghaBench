; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_valid_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_valid_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds_qp = type { i64 }
%struct.ibv_wc = type { i64, i32 }
%struct.ds_header = type { i32, i64 }

@DS_IPV4_HDR_LEN = common dso_local global i64 0, align 8
@DS_IPV6_HDR_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ds_qp*, %struct.ibv_wc*)* @ds_valid_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_valid_recv(%struct.ds_qp* %0, %struct.ibv_wc* %1) #0 {
  %3 = alloca %struct.ds_qp*, align 8
  %4 = alloca %struct.ibv_wc*, align 8
  %5 = alloca %struct.ds_header*, align 8
  store %struct.ds_qp* %0, %struct.ds_qp** %3, align 8
  store %struct.ibv_wc* %1, %struct.ibv_wc** %4, align 8
  %6 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %7 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ibv_wc*, %struct.ibv_wc** %4, align 8
  %10 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @rs_wr_data(i32 %11)
  %13 = add nsw i64 %8, %12
  %14 = inttoptr i64 %13 to %struct.ds_header*
  store %struct.ds_header* %14, %struct.ds_header** %5, align 8
  %15 = load %struct.ibv_wc*, %struct.ibv_wc** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DS_IPV4_HDR_LEN, align 8
  %19 = add i64 4, %18
  %20 = icmp uge i64 %17, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %2
  %22 = load %struct.ds_header*, %struct.ds_header** %5, align 8
  %23 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.ds_header*, %struct.ds_header** %5, align 8
  %28 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @DS_IPV4_HDR_LEN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %45, label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.ds_header*, %struct.ds_header** %5, align 8
  %34 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 6
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.ds_header*, %struct.ds_header** %5, align 8
  %39 = getelementptr inbounds %struct.ds_header, %struct.ds_header* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DS_IPV6_HDR_LEN, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %32
  %44 = phi i1 [ false, %32 ], [ %42, %37 ]
  br label %45

45:                                               ; preds = %43, %26
  %46 = phi i1 [ true, %26 ], [ %44, %43 ]
  br label %47

47:                                               ; preds = %45, %2
  %48 = phi i1 [ false, %2 ], [ %46, %45 ]
  %49 = zext i1 %48 to i32
  ret i32 %49
}

declare dso_local i64 @rs_wr_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
