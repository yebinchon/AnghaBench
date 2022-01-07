; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_inet6.c_ifconfig_inet6_get_addrinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libifconfig/extr_libifconfig_inet6.c_ifconfig_inet6_get_addrinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32, i64, i64, i64, i64 }
%struct.ifconfig_inet6_addr = type { i32, i32, %struct.sockaddr_in6*, i32, i32, %struct.sockaddr_in6* }
%struct.sockaddr_in6 = type { i32 }
%struct.in6_ifreq = type { %struct.TYPE_2__, %struct.sockaddr_in6, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.if_data = type { i32 }

@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@SIOCGIFAFLAG_IN6 = common dso_local global i32 0, align 4
@SIOCGIFALIFETIME_IN6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifconfig_inet6_get_addrinfo(i32* %0, i8* %1, %struct.ifaddrs* %2, %struct.ifconfig_inet6_addr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ifaddrs*, align 8
  %9 = alloca %struct.ifconfig_inet6_addr*, align 8
  %10 = alloca %struct.sockaddr_in6*, align 8
  %11 = alloca %struct.in6_ifreq, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.ifaddrs* %2, %struct.ifaddrs** %8, align 8
  store %struct.ifconfig_inet6_addr* %3, %struct.ifconfig_inet6_addr** %9, align 8
  %12 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %13 = call i32 @bzero(%struct.ifconfig_inet6_addr* %12, i32 32)
  %14 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %15 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.sockaddr_in6*
  %18 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %19 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %18, i32 0, i32 2
  store %struct.sockaddr_in6* %17, %struct.sockaddr_in6** %19, align 8
  %20 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %21 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_POINTOPOINT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %28 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.sockaddr_in6*
  %31 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %32 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %31, i32 0, i32 5
  store %struct.sockaddr_in6* %30, %struct.sockaddr_in6** %32, align 8
  br label %33

33:                                               ; preds = %26, %4
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %35 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %37, %struct.sockaddr_in6** %10, align 8
  %38 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %10, align 8
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 0
  %40 = call i32 @inet6_prefixlen(i32* %39)
  %41 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %42 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @strlcpy(i32 %44, i8* %45, i32 4)
  %47 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 1
  %48 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %49 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %48, i32 0, i32 2
  %50 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %49, align 8
  %51 = bitcast %struct.sockaddr_in6* %47 to i8*
  %52 = bitcast %struct.sockaddr_in6* %50 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %51, i8* align 4 %52, i64 4, i1 false)
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* @AF_INET6, align 4
  %55 = load i32, i32* @SIOCGIFAFLAG_IN6, align 4
  %56 = call i64 @ifconfig_ioctlwrap(i32* %53, i32 %54, i32 %55, %struct.in6_ifreq* %11)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %33
  store i32 -1, i32* %5, align 4
  br label %105

59:                                               ; preds = %33
  %60 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %64 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %66 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %65, i32 0, i32 1
  %67 = call i32 @memset(i32* %66, i32 0, i32 4)
  %68 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 1
  %69 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %70 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %69, i32 0, i32 2
  %71 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %70, align 8
  %72 = bitcast %struct.sockaddr_in6* %68 to i8*
  %73 = bitcast %struct.sockaddr_in6* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %72, i8* align 4 %73, i64 4, i1 false)
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* @AF_INET6, align 4
  %76 = load i32, i32* @SIOCGIFALIFETIME_IN6, align 4
  %77 = call i64 @ifconfig_ioctlwrap(i32* %74, i32 %75, i32 %76, %struct.in6_ifreq* %11)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %59
  store i32 -1, i32* %5, align 4
  br label %105

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.in6_ifreq, %struct.in6_ifreq* %11, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %85 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %87 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %104

90:                                               ; preds = %80
  %91 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %92 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.ifaddrs*, %struct.ifaddrs** %8, align 8
  %97 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to %struct.if_data*
  %100 = getelementptr inbounds %struct.if_data, %struct.if_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ifconfig_inet6_addr*, %struct.ifconfig_inet6_addr** %9, align 8
  %103 = getelementptr inbounds %struct.ifconfig_inet6_addr, %struct.ifconfig_inet6_addr* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %95, %90, %80
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %104, %79, %58
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @bzero(%struct.ifconfig_inet6_addr*, i32) #1

declare dso_local i32 @inet6_prefixlen(i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ifconfig_ioctlwrap(i32*, i32, i32, %struct.in6_ifreq*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
