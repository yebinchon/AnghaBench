; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_hash_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/cache/extr_infra.c_hash_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32 }

@INET6_SIZE = common dso_local global i32 0, align 4
@INET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_storage*, i32, i32)* @hash_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_addr(%struct.sockaddr_storage* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 171, i32* %7, align 4
  %10 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %16, %struct.sockaddr_in6** %8, align 8
  %17 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %17, i32 0, i32 2
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @hashlittle(i32* %18, i32 4, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 1
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @hashlittle(i32* %25, i32 4, i32 %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %23, %14
  %29 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %30 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %29, i32 0, i32 0
  %31 = load i32, i32* @INET6_SIZE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hashlittle(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %54

34:                                               ; preds = %3
  %35 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %36 = bitcast %struct.sockaddr_storage* %35 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %36, %struct.sockaddr_in** %9, align 8
  %37 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %38 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %37, i32 0, i32 2
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @hashlittle(i32* %38, i32 4, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %44, i32 0, i32 1
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @hashlittle(i32* %45, i32 4, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %43, %34
  %49 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %49, i32 0, i32 0
  %51 = load i32, i32* @INET_SIZE, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @hashlittle(i32* %50, i32 %51, i32 %52)
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %48, %28
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @hashlittle(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
