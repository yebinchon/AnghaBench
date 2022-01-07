; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_tcp_bgsend_from.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_net.c_ldns_tcp_bgsend_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i32)* @ldns_tcp_bgsend_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldns_tcp_bgsend_from(i32* %0, %struct.sockaddr_storage* %1, i32 %2, %struct.sockaddr_storage* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sockaddr_storage*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sockaddr_storage*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 %5, i32* %15, align 4
  store i32* %0, i32** %9, align 8
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.sockaddr_storage* %3, %struct.sockaddr_storage** %12, align 8
  store i32 %4, i32* %13, align 4
  %16 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %12, align 8
  %19 = load i32, i32* %13, align 4
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ldns_tcp_connect_from(%struct.sockaddr_storage* %16, i32 %17, %struct.sockaddr_storage* %18, i32 %19, i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %38

26:                                               ; preds = %6
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @ldns_tcp_send_query(i32* %27, i32 %28, %struct.sockaddr_storage* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @close_socket(i32 %34)
  store i32 0, i32* %7, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %14, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %33, %25
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @ldns_tcp_connect_from(%struct.sockaddr_storage*, i32, %struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @ldns_tcp_send_query(i32*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @close_socket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
