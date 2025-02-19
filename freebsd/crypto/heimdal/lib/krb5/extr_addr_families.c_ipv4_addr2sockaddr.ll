; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_ipv4_addr2sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_addr_families.c_ipv4_addr2sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sockaddr_in* }
%struct.sockaddr_in = type { i32, %struct.sockaddr, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, %struct.sockaddr*, i32*, i32)* @ipv4_addr2sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv4_addr2sockaddr(%struct.TYPE_5__* %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.sockaddr_in* %9, i32 0, i32 12)
  %11 = load i32, i32* @AF_INET, align 4
  %12 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.sockaddr_in*, %struct.sockaddr_in** %16, align 8
  %18 = call i32 @memcpy(%struct.sockaddr* %13, %struct.sockaddr_in* %17, i32 4)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %9, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @min(i32 12, i32 %23)
  %25 = call i32 @memcpy(%struct.sockaddr* %21, %struct.sockaddr_in* %9, i32 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 12, i32* %26, align 4
  ret void
}

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @memcpy(%struct.sockaddr*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
