; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_swap_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_swap_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.nameserver* }
%struct.nameserver = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.nameserver*)* @request_swap_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_swap_ns(%struct.request* %0, %struct.nameserver* %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.nameserver*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  store %struct.nameserver* %1, %struct.nameserver** %4, align 8
  %5 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %6 = icmp ne %struct.nameserver* %5, null
  br i1 %6, label %7, label %35

7:                                                ; preds = %2
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 0
  %10 = load %struct.nameserver*, %struct.nameserver** %9, align 8
  %11 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %12 = icmp ne %struct.nameserver* %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load %struct.nameserver*, %struct.nameserver** %15, align 8
  %17 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @EVUTIL_ASSERT(i32 %20)
  %22 = load %struct.request*, %struct.request** %3, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load %struct.nameserver*, %struct.nameserver** %23, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %29 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  store %struct.nameserver* %32, %struct.nameserver** %34, align 8
  br label %35

35:                                               ; preds = %13, %7, %2
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
