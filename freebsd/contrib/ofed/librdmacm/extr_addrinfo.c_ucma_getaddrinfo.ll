; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_getaddrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_addrinfo.c_ucma_getaddrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_addrinfo = type { i32 }
%struct.addrinfo = type { i32 }

@nohints = common dso_local global %struct.rdma_addrinfo zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, %struct.rdma_addrinfo*, %struct.rdma_addrinfo*)* @ucma_getaddrinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_getaddrinfo(i8* %0, i8* %1, %struct.rdma_addrinfo* %2, %struct.rdma_addrinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rdma_addrinfo*, align 8
  %9 = alloca %struct.rdma_addrinfo*, align 8
  %10 = alloca %struct.addrinfo, align 4
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.rdma_addrinfo* %2, %struct.rdma_addrinfo** %8, align 8
  store %struct.rdma_addrinfo* %3, %struct.rdma_addrinfo** %9, align 8
  %13 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %14 = icmp ne %struct.rdma_addrinfo* %13, @nohints
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %17 = call i32 @ucma_convert_to_ai(%struct.addrinfo* %10, %struct.rdma_addrinfo* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @getaddrinfo(i8* %18, i8* %19, %struct.addrinfo* %10, %struct.addrinfo** %11)
  store i32 %20, i32* %12, align 4
  br label %25

21:                                               ; preds = %4
  %22 = load i8*, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @getaddrinfo(i8* %22, i8* %23, %struct.addrinfo* null, %struct.addrinfo** %11)
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i32, i32* %12, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* %12, align 4
  store i32 %29, i32* %5, align 4
  br label %38

30:                                               ; preds = %25
  %31 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %9, align 8
  %32 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %8, align 8
  %33 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %34 = call i32 @ucma_convert_to_rai(%struct.rdma_addrinfo* %31, %struct.rdma_addrinfo* %32, %struct.addrinfo* %33)
  store i32 %34, i32* %12, align 4
  %35 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %36 = call i32 @freeaddrinfo(%struct.addrinfo* %35)
  %37 = load i32, i32* %12, align 4
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %30, %28
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

declare dso_local i32 @ucma_convert_to_ai(%struct.addrinfo*, %struct.rdma_addrinfo*) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ucma_convert_to_rai(%struct.rdma_addrinfo*, %struct.rdma_addrinfo*, %struct.addrinfo*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
