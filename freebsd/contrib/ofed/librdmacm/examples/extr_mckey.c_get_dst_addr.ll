; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_get_dst_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_mckey.c_get_dst_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_ib = type { i32, i32 }

@unmapped_addr = common dso_local global i32 0, align 4
@AF_IB = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sockaddr*)* @get_dst_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_dst_addr(i8* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_ib*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %7 = load i32, i32* @unmapped_addr, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %12 = call i32 @get_addr(i8* %10, %struct.sockaddr* %11)
  store i32 %12, i32* %3, align 4
  br label %26

13:                                               ; preds = %2
  %14 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %15 = bitcast %struct.sockaddr* %14 to %struct.sockaddr_ib*
  store %struct.sockaddr_ib* %15, %struct.sockaddr_ib** %6, align 8
  %16 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %17 = call i32 @memset(%struct.sockaddr_ib* %16, i32 0, i32 8)
  %18 = load i32, i32* @AF_IB, align 4
  %19 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @AF_INET6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load %struct.sockaddr_ib*, %struct.sockaddr_ib** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_ib, %struct.sockaddr_ib* %23, i32 0, i32 0
  %25 = call i32 @inet_pton(i32 %21, i8* %22, i32* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %13, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @get_addr(i8*, %struct.sockaddr*) #1

declare dso_local i32 @memset(%struct.sockaddr_ib*, i32, i32) #1

declare dso_local i32 @inet_pton(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
