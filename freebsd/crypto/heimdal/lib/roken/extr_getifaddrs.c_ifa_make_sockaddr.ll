; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_ifa_make_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_ifa_make_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32, i32, i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }
%struct.sockaddr_ll = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i8*, i64, i32, i32)* @ifa_make_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifa_make_sockaddr(i32 %0, %struct.sockaddr* %1, i8* %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %14 = icmp eq %struct.sockaddr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %70

16:                                               ; preds = %6
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %59 [
    i32 130, label %18
    i32 129, label %26
    i32 128, label %47
  ]

18:                                               ; preds = %16
  %19 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %20 = bitcast %struct.sockaddr* %19 to %struct.sockaddr_in*
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %20, i32 0, i32 0
  %22 = ptrtoint i32* %21 to i32
  %23 = load i8*, i8** %9, align 8
  %24 = load i64, i64* %10, align 8
  %25 = call i32 @memcpy(i32 %22, i8* %23, i64 %24)
  br label %66

26:                                               ; preds = %16
  %27 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %28 = bitcast %struct.sockaddr* %27 to %struct.sockaddr_in6*
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  %30 = ptrtoint i32* %29 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = call i32 @memcpy(i32 %30, i8* %31, i64 %32)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @IN6_IS_ADDR_LINKLOCAL(i8* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @IN6_IS_ADDR_MC_LINKLOCAL(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %44 = bitcast %struct.sockaddr* %43 to %struct.sockaddr_in6*
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %41, %37
  br label %66

47:                                               ; preds = %16
  %48 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_ll*
  %50 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @memcpy(i32 %51, i8* %52, i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %57 = bitcast %struct.sockaddr* %56 to %struct.sockaddr_ll*
  %58 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %57, i32 0, i32 0
  store i64 %55, i64* %58, align 8
  br label %66

59:                                               ; preds = %16
  %60 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @memcpy(i32 %62, i8* %63, i64 %64)
  br label %66

66:                                               ; preds = %59, %47, %46, %18
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %69 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %15
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @IN6_IS_ADDR_LINKLOCAL(i8*) #1

declare dso_local i32 @IN6_IS_ADDR_MC_LINKLOCAL(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
