; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_null.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getaddrinfo.c_get_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in_addr = type { i32 }
%struct.addrinfo = type { i32, i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@AI_PASSIVE = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@PF_INET = common dso_local global i32 0, align 4
@const_v4 = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i32 0, align 4
@const_v6 = common dso_local global i32 0, align 4
@in6addr_any = common dso_local global %struct.in_addr zeroinitializer, align 4
@in6addr_loopback = common dso_local global %struct.in_addr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.addrinfo*, i32, i32, i32, %struct.addrinfo**)* @get_null to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_null(%struct.addrinfo* %0, i32 %1, i32 %2, i32 %3, %struct.addrinfo** %4) #0 {
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.addrinfo**, align 8
  %11 = alloca %struct.in_addr, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.addrinfo**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.addrinfo* %0, %struct.addrinfo** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.addrinfo** %4, %struct.addrinfo*** %10, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %12, align 8
  store %struct.addrinfo** %12, %struct.addrinfo*** %13, align 8
  %16 = load i32, i32* @PF_UNSPEC, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %18 = icmp ne %struct.addrinfo* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %21 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %14, align 4
  br label %23

23:                                               ; preds = %19, %5
  %24 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %25 = icmp ne %struct.addrinfo* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %28 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @AI_PASSIVE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @INADDR_ANY, align 4
  %35 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  br label %40

36:                                               ; preds = %26, %23
  %37 = load i32, i32* @INADDR_LOOPBACK, align 4
  %38 = call i32 @htonl(i32 %37)
  %39 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %11, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @PF_INET, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* @PF_UNSPEC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %44, %40
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @const_v4, align 4
  %53 = call i32 @add_one(i32 %49, i32 %50, i32 %51, %struct.addrinfo*** %13, i32 %52, %struct.in_addr* %11, i32* null)
  store i32 %53, i32* %15, align 4
  br label %54

54:                                               ; preds = %48, %44
  %55 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %56 = load %struct.addrinfo**, %struct.addrinfo*** %10, align 8
  store %struct.addrinfo* %55, %struct.addrinfo** %56, align 8
  ret i32 0
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @add_one(i32, i32, i32, %struct.addrinfo***, i32, %struct.in_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
