; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_const_v4.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_const_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32*, i32 }
%struct.sockaddr_in = type { i32, %struct.in_addr, i32 }
%struct.in_addr = type { i32 }

@PF_INET = common dso_local global i32 0, align 4
@EAI_MEMORY = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i8*, i32)* @const_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @const_v4(%struct.addrinfo* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca %struct.in_addr*, align 8
  store %struct.addrinfo* %0, %struct.addrinfo** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.in_addr*
  store %struct.in_addr* %11, %struct.in_addr** %9, align 8
  %12 = load i32, i32* @PF_INET, align 4
  %13 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  store i32 12, i32* %16, align 8
  %17 = call i32* @malloc(i32 12)
  %18 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 1
  store i32* %17, i32** %19, align 8
  %20 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @EAI_MEMORY, align 4
  store i32 %25, i32* %4, align 4
  br label %44

26:                                               ; preds = %3
  %27 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %30, %struct.sockaddr_in** %8, align 8
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %32 = call i32 @memset(%struct.sockaddr_in* %31, i32 0, i32 12)
  %33 = load i32, i32* @AF_INET, align 4
  %34 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 1
  %41 = load %struct.in_addr*, %struct.in_addr** %9, align 8
  %42 = bitcast %struct.in_addr* %40 to i8*
  %43 = bitcast %struct.in_addr* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %26, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
