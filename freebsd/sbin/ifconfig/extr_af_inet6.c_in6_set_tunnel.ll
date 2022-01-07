; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_set_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet6.c_in6_set_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.in6_aliasreq = type { i32, i32, i32 }

@name = common dso_local global i32 0, align 4
@SIOCSIFPHYADDR_IN6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"SIOCSIFPHYADDR_IN6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.addrinfo*, %struct.addrinfo*)* @in6_set_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in6_set_tunnel(i32 %0, %struct.addrinfo* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.in6_aliasreq, align 4
  store i32 %0, i32* %4, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %8 = call i32 @memset(%struct.in6_aliasreq* %7, i32 0, i32 12)
  %9 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @name, align 4
  %12 = call i32 @strlcpy(i32 %10, i32 %11, i32 4)
  %13 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %7, i32 0, i32 1
  %14 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %18 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @memcpy(i32* %13, %struct.TYPE_2__* %16, i32 %21)
  %23 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %7, i32 0, i32 0
  %24 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %25 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32* %23, %struct.TYPE_2__* %26, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @SIOCSIFPHYADDR_IN6, align 4
  %35 = call i64 @ioctl(i32 %33, i32 %34, %struct.in6_aliasreq* %7)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %3
  ret void
}

declare dso_local i32 @memset(%struct.in6_aliasreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.in6_aliasreq*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
