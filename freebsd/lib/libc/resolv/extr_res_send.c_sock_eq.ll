; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_sock_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_send.c_sock_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr*, %struct.sockaddr*)* @sock_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sock_eq(%struct.sockaddr* %0, %struct.sockaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in6*, align 8
  %9 = alloca %struct.sockaddr_in6*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  %10 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %11 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %14 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %69 [
    i32 129, label %22
    i32 128, label %47
  ]

22:                                               ; preds = %18
  %23 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %24 = bitcast %struct.sockaddr* %23 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %24, %struct.sockaddr_in** %6, align 8
  %25 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %26 = bitcast %struct.sockaddr* %25 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %26, %struct.sockaddr_in** %7, align 8
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %38, %42
  br label %44

44:                                               ; preds = %34, %22
  %45 = phi i1 [ false, %22 ], [ %43, %34 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %3, align 4
  br label %70

47:                                               ; preds = %18
  %48 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %49 = bitcast %struct.sockaddr* %48 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %49, %struct.sockaddr_in6** %8, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %51 = bitcast %struct.sockaddr* %50 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %51, %struct.sockaddr_in6** %9, align 8
  %52 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %56 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %47
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 0
  %62 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %62, i32 0, i32 0
  %64 = call i32 @IN6_ARE_ADDR_EQUAL(i32* %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br label %66

66:                                               ; preds = %59, %47
  %67 = phi i1 [ false, %47 ], [ %65, %59 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %66, %44, %17
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
