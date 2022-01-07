; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_unmappedaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_unmappedaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.sockaddr_in = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unmappedaddr(%struct.sockaddr_in6* %0) #0 {
  %2 = alloca %struct.sockaddr_in6*, align 8
  %3 = alloca %struct.sockaddr_in*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %2, align 8
  %6 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %7 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @AF_INET6, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %13 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %12, i32 0, i32 2
  %14 = call i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_4__* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %11, %1
  br label %43

17:                                               ; preds = %11
  %18 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %19 = bitcast %struct.sockaddr_in6* %18 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %19, %struct.sockaddr_in** %3, align 8
  %20 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 12
  %25 = call i32 @memcpy(i32* %4, i32* %24, i32 4)
  %26 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %27 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %30 = call i32 @memset(%struct.sockaddr_in* %29, i32 0, i32 16)
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @AF_INET, align 4
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %3, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 1
  store i32 16, i32* %42, align 4
  br label %43

43:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
