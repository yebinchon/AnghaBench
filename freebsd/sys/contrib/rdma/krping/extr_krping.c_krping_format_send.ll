; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_format_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/rdma/krping/extr_krping.c_krping_format_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.krping_cb = type { i32, i32, i64, i64, i64, i32, %struct.krping_rdma_info }
%struct.krping_rdma_info = type { i8*, i8*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"RDMA addr %llx rkey %x len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.krping_cb*, i64)* @krping_format_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @krping_format_send(%struct.krping_cb* %0, i64 %1) #0 {
  %3 = alloca %struct.krping_cb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.krping_rdma_info*, align 8
  %6 = alloca i32, align 4
  store %struct.krping_cb* %0, %struct.krping_cb** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %8 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %7, i32 0, i32 6
  store %struct.krping_rdma_info* %8, %struct.krping_rdma_info** %5, align 8
  %9 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %10 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %15 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %13
  %19 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %20 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %25 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %58

28:                                               ; preds = %23, %18, %13, %2
  %29 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %32 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @krping_rdma_rkey(%struct.krping_cb* %29, i64 %30, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @htonll(i64 %38)
  %40 = load %struct.krping_rdma_info*, %struct.krping_rdma_info** %5, align 8
  %41 = getelementptr inbounds %struct.krping_rdma_info, %struct.krping_rdma_info* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.krping_rdma_info*, %struct.krping_rdma_info** %5, align 8
  %45 = getelementptr inbounds %struct.krping_rdma_info, %struct.krping_rdma_info* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %47 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i8* @htonl(i32 %48)
  %50 = load %struct.krping_rdma_info*, %struct.krping_rdma_info** %5, align 8
  %51 = getelementptr inbounds %struct.krping_rdma_info, %struct.krping_rdma_info* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.krping_cb*, %struct.krping_cb** %3, align 8
  %55 = getelementptr inbounds %struct.krping_cb, %struct.krping_cb* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %52, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %28, %23
  ret void
}

declare dso_local i32 @krping_rdma_rkey(%struct.krping_cb*, i64, i32) #1

declare dso_local i32 @htonll(i64) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @DEBUG_LOG(i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
