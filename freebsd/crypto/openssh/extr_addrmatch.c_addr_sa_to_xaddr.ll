; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_sa_to_xaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_addrmatch.c_addr_sa_to_xaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.xaddr = type { i32, i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, i32, %struct.xaddr*)* @addr_sa_to_xaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_sa_to_xaddr(%struct.sockaddr* %0, i32 %1, %struct.xaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xaddr*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.xaddr* %2, %struct.xaddr** %7, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %11 = bitcast %struct.sockaddr* %10 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %11, %struct.sockaddr_in** %8, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %13 = bitcast %struct.sockaddr* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %9, align 8
  %14 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %15 = call i32 @memset(%struct.xaddr* %14, i8 signext 0, i32 16)
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %43 [
    i32 129, label %19
    i32 128, label %31
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 -1, i32* %4, align 4
  br label %45

23:                                               ; preds = %19
  %24 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %25 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %24, i32 0, i32 0
  store i32 129, i32* %25, align 4
  %26 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %27 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %26, i32 0, i32 3
  %28 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %28, i32 0, i32 0
  %30 = call i32 @memcpy(i32* %27, i32* %29, i32 4)
  br label %44

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 8
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  br label %45

35:                                               ; preds = %31
  %36 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %37 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  %38 = load %struct.xaddr*, %struct.xaddr** %7, align 8
  %39 = getelementptr inbounds %struct.xaddr, %struct.xaddr* %38, i32 0, i32 2
  %40 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %40, i32 0, i32 1
  %42 = call i32 @memcpy(i32* %39, i32* %41, i32 4)
  br label %44

43:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %45

44:                                               ; preds = %35, %23
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %43, %34, %22
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.xaddr*, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
