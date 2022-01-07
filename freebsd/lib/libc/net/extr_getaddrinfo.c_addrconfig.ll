; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_addrconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_addrconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32 }
%struct.ifaddrs = type { i32, i32, %struct.TYPE_4__*, %struct.ifaddrs* }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@IFT_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*)* @addrconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrconfig(%struct.addrinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.addrinfo*, align 8
  %4 = alloca %struct.ifaddrs*, align 8
  %5 = alloca %struct.ifaddrs*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = call i64 @getifaddrs(%struct.ifaddrs** %4)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %83

12:                                               ; preds = %1
  %13 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  store %struct.ifaddrs* %13, %struct.ifaddrs** %5, align 8
  br label %14

14:                                               ; preds = %55, %12
  %15 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %16 = icmp ne %struct.ifaddrs* %15, null
  br i1 %16, label %17, label %59

17:                                               ; preds = %14
  %18 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %19 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %17
  %23 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %24 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IFF_UP, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %17
  br label %55

30:                                               ; preds = %22
  %31 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %32 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %54 [
    i32 130, label %36
  ]

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %55

40:                                               ; preds = %36
  %41 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %42 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = bitcast %struct.TYPE_4__* %43 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %44, %struct.sockaddr_in** %6, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = load i32, i32* @INADDR_LOOPBACK, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %55

53:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %54

54:                                               ; preds = %30, %53
  br label %55

55:                                               ; preds = %54, %52, %39, %29
  %56 = load %struct.ifaddrs*, %struct.ifaddrs** %5, align 8
  %57 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %56, i32 0, i32 3
  %58 = load %struct.ifaddrs*, %struct.ifaddrs** %57, align 8
  store %struct.ifaddrs* %58, %struct.ifaddrs** %5, align 8
  br label %14

59:                                               ; preds = %14
  %60 = load %struct.ifaddrs*, %struct.ifaddrs** %4, align 8
  %61 = call i32 @freeifaddrs(%struct.ifaddrs* %60)
  %62 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %63 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %82 [
    i32 129, label %65
    i32 130, label %67
    i32 128, label %69
  ]

65:                                               ; preds = %59
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %2, align 4
  br label %83

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %83

69:                                               ; preds = %59
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %2, align 4
  br label %83

75:                                               ; preds = %69
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 130, i32 129
  %80 = load %struct.addrinfo*, %struct.addrinfo** %3, align 8
  %81 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  store i32 1, i32* %2, align 4
  br label %83

82:                                               ; preds = %59
  store i32 1, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %75, %73, %67, %65, %11
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
