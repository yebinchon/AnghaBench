; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_bcast.c___rpc_getbroadifs.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/rpc/extr_clnt_bcast.c___rpc_getbroadifs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadif = type { i32, i32 }
%struct.ifaddrs = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, %struct.ifaddrs* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.addrinfo = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"sunrpc\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@RPCB_MULTICAST_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__rpc_getbroadifs(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.broadif*, align 8
  %12 = alloca %struct.ifaddrs*, align 8
  %13 = alloca %struct.ifaddrs*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.addrinfo, align 8
  %16 = alloca %struct.addrinfo*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = call i64 @getifaddrs(%struct.ifaddrs** %13)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %123

20:                                               ; preds = %4
  %21 = call i32 @memset(%struct.addrinfo* %15, i32 0, i32 24)
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 2
  store i32 %26, i32* %27, align 8
  %28 = call i64 @getaddrinfo(i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %15, %struct.addrinfo** %16)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %32 = call i32 @freeifaddrs(%struct.ifaddrs* %31)
  store i32 0, i32* %5, align 4
  br label %123

33:                                               ; preds = %20
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  store %struct.ifaddrs* %34, %struct.ifaddrs** %12, align 8
  br label %35

35:                                               ; preds = %113, %33
  %36 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %37 = icmp ne %struct.ifaddrs* %36, null
  br i1 %37, label %38, label %117

38:                                               ; preds = %35
  %39 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %40 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %48 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @IFF_UP, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46, %38
  br label %113

54:                                               ; preds = %46
  %55 = call i64 @malloc(i32 8)
  %56 = inttoptr i64 %55 to %struct.broadif*
  store %struct.broadif* %56, %struct.broadif** %11, align 8
  %57 = load %struct.broadif*, %struct.broadif** %11, align 8
  %58 = icmp eq %struct.broadif* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %117

60:                                               ; preds = %54
  %61 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %62 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @if_nametoindex(i32 %63)
  %65 = load %struct.broadif*, %struct.broadif** %11, align 8
  %66 = getelementptr inbounds %struct.broadif, %struct.broadif* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %68 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IFF_BROADCAST, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %103

73:                                               ; preds = %60
  %74 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %75 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = icmp ne %struct.TYPE_4__* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %73
  %79 = load %struct.broadif*, %struct.broadif** %11, align 8
  %80 = getelementptr inbounds %struct.broadif, %struct.broadif* %79, i32 0, i32 1
  %81 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %82 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %85 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @memcpy(i32* %80, %struct.TYPE_4__* %83, i64 %88)
  %90 = load %struct.broadif*, %struct.broadif** %11, align 8
  %91 = getelementptr inbounds %struct.broadif, %struct.broadif* %90, i32 0, i32 1
  %92 = bitcast i32* %91 to i8*
  %93 = bitcast i8* %92 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %93, %struct.sockaddr_in** %14, align 8
  %94 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %95 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = bitcast i8* %97 to %struct.sockaddr_in*
  %99 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %102 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 4
  br label %106

103:                                              ; preds = %73, %60
  %104 = load %struct.broadif*, %struct.broadif** %11, align 8
  %105 = call i32 @free(%struct.broadif* %104)
  br label %113

106:                                              ; preds = %78
  %107 = load i32*, i32** %9, align 8
  %108 = load %struct.broadif*, %struct.broadif** %11, align 8
  %109 = load i32, i32* @link, align 4
  %110 = call i32 @TAILQ_INSERT_TAIL(i32* %107, %struct.broadif* %108, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %113

113:                                              ; preds = %106, %103, %53
  %114 = load %struct.ifaddrs*, %struct.ifaddrs** %12, align 8
  %115 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %114, i32 0, i32 4
  %116 = load %struct.ifaddrs*, %struct.ifaddrs** %115, align 8
  store %struct.ifaddrs* %116, %struct.ifaddrs** %12, align 8
  br label %35

117:                                              ; preds = %59, %35
  %118 = load %struct.ifaddrs*, %struct.ifaddrs** %13, align 8
  %119 = call i32 @freeifaddrs(%struct.ifaddrs* %118)
  %120 = load %struct.addrinfo*, %struct.addrinfo** %16, align 8
  %121 = call i32 @freeaddrinfo(%struct.addrinfo* %120)
  %122 = load i32, i32* %10, align 4
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %117, %30, %19
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i32*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @if_nametoindex(i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i64) #1

declare dso_local i32 @free(%struct.broadif*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.broadif*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
