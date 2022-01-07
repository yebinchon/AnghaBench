; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_set_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_acm.c_ucma_ib_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32, i32, %struct.sockaddr*, %struct.sockaddr*, i32, i64 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_ib = type { i32, i8*, i32, i8* }
%struct.ibv_path_record = type { i32, i32, i32, i32 }
%struct.ibv_path_data = type { %struct.ibv_path_record }

@ENOMEM = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_addrinfo*, %struct.rdma_addrinfo*)* @ucma_ib_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_ib_set_addr(%struct.rdma_addrinfo* %0, %struct.rdma_addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_addrinfo*, align 8
  %5 = alloca %struct.rdma_addrinfo*, align 8
  %6 = alloca %struct.sockaddr_ib*, align 8
  %7 = alloca %struct.sockaddr_ib*, align 8
  %8 = alloca %struct.ibv_path_record*, align 8
  store %struct.rdma_addrinfo* %0, %struct.rdma_addrinfo** %4, align 8
  store %struct.rdma_addrinfo* %1, %struct.rdma_addrinfo** %5, align 8
  %9 = call %struct.sockaddr_ib* @calloc(i32 1, i32 32)
  store %struct.sockaddr_ib* %9, %struct.sockaddr_ib** %6, align 8
  %10 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %11 = icmp ne %struct.sockaddr_ib* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = call i32 @ERR(i32 %13)
  store i32 %14, i32* %3, align 4
  br label %100

15:                                               ; preds = %2
  %16 = call %struct.sockaddr_ib* @calloc(i32 1, i32 32)
  store %struct.sockaddr_ib* %16, %struct.sockaddr_ib** %7, align 8
  %17 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %18 = icmp ne %struct.sockaddr_ib* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %21 = call i32 @free(%struct.sockaddr_ib* %20)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @ERR(i32 %22)
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %15
  %25 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %26 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %25, i32 0, i32 5
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.ibv_path_data*
  %29 = getelementptr inbounds %struct.ibv_path_data, %struct.ibv_path_data* %28, i32 0, i32 0
  store %struct.ibv_path_record* %29, %struct.ibv_path_record** %8, align 8
  %30 = load i8*, i8** @AF_IB, align 8
  %31 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %34 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %37 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %39 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32toh(i32 %40)
  %42 = ashr i32 %41, 8
  %43 = call i8* @htobe32(i32 %42)
  %44 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %45 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %47 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %46, i32 0, i32 0
  %48 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %49 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %48, i32 0, i32 3
  %50 = call i32 @memcpy(i32* %47, i32* %49, i32 16)
  %51 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %52 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %55 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %54, i32 0, i32 3
  %56 = load %struct.sockaddr*, %struct.sockaddr** %55, align 8
  %57 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %58 = call i32 @ucma_set_sid(i32 %53, %struct.sockaddr* %56, %struct.sockaddr_ib* %57)
  %59 = load i8*, i8** @AF_IB, align 8
  %60 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %61 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %60, i32 0, i32 3
  store i8* %59, i8** %61, align 8
  %62 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %63 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %66 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %68 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be32toh(i32 %69)
  %71 = ashr i32 %70, 8
  %72 = call i8* @htobe32(i32 %71)
  %73 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %74 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %76 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %75, i32 0, i32 0
  %77 = load %struct.ibv_path_record*, %struct.ibv_path_record** %8, align 8
  %78 = getelementptr inbounds %struct.ibv_path_record, %struct.ibv_path_record* %77, i32 0, i32 0
  %79 = call i32 @memcpy(i32* %76, i32* %78, i32 16)
  %80 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %81 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %5, align 8
  %84 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %83, i32 0, i32 2
  %85 = load %struct.sockaddr*, %struct.sockaddr** %84, align 8
  %86 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %87 = call i32 @ucma_set_sid(i32 %82, %struct.sockaddr* %85, %struct.sockaddr_ib* %86)
  %88 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %89 = bitcast %struct.sockaddr_ib* %88 to %struct.sockaddr*
  %90 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %91 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %90, i32 0, i32 3
  store %struct.sockaddr* %89, %struct.sockaddr** %91, align 8
  %92 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %93 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %92, i32 0, i32 0
  store i32 32, i32* %93, align 8
  %94 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %7, align 8
  %95 = bitcast %struct.sockaddr_ib* %94 to %struct.sockaddr*
  %96 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %97 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %96, i32 0, i32 2
  store %struct.sockaddr* %95, %struct.sockaddr** %97, align 8
  %98 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %4, align 8
  %99 = getelementptr inbounds %struct.rdma_addrinfo, %struct.rdma_addrinfo* %98, i32 0, i32 1
  store i32 32, i32* %99, align 4
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %24, %19, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.sockaddr_ib* @calloc(i32, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @free(%struct.sockaddr_ib*) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ucma_set_sid(i32, %struct.sockaddr*, %struct.sockaddr_ib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
