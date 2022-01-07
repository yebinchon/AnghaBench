; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet.c_in_set_tunnel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_af_inet.c_in_set_tunnel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.in_aliasreq = type { i32, i32, i32 }

@name = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@SIOCSIFPHYADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SIOCSIFPHYADDR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.addrinfo*, %struct.addrinfo*)* @in_set_tunnel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @in_set_tunnel(i32 %0, %struct.addrinfo* %1, %struct.addrinfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.in_aliasreq, align 4
  store i32 %0, i32* %4, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store %struct.addrinfo* %2, %struct.addrinfo** %6, align 8
  %8 = call i32 @memset(%struct.in_aliasreq* %7, i32 0, i32 12)
  %9 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @name, align 4
  %12 = load i32, i32* @IFNAMSIZ, align 4
  %13 = call i32 @strlcpy(i32 %10, i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %7, i32 0, i32 1
  %15 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %19 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @memcpy(i32* %14, %struct.TYPE_2__* %17, i32 %22)
  %24 = getelementptr inbounds %struct.in_aliasreq, %struct.in_aliasreq* %7, i32 0, i32 0
  %25 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %26 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32* %24, %struct.TYPE_2__* %27, i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @SIOCSIFPHYADDR, align 4
  %36 = call i64 @ioctl(i32 %34, i32 %35, %struct.in_aliasreq* %7)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %3
  %39 = call i32 @warn(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @memset(%struct.in_aliasreq*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_2__*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.in_aliasreq*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
