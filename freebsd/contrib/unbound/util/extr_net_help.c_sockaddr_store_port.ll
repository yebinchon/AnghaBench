; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sockaddr_store_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_sockaddr_store_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i8* }
%struct.sockaddr_in = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sockaddr_store_port(%struct.sockaddr_storage* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in6*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %15 = bitcast %struct.sockaddr_storage* %14 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %15, %struct.sockaddr_in6** %7, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @htons(i32 %16)
  %18 = inttoptr i64 %17 to i8*
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %29

21:                                               ; preds = %3
  %22 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %23 = bitcast %struct.sockaddr_storage* %22 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %23, %struct.sockaddr_in** %8, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @htons(i32 %24)
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %29

29:                                               ; preds = %21, %13
  ret void
}

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #1

declare dso_local i64 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
