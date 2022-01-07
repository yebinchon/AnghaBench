; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_reissue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_request_reissue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i64, i32, %struct.nameserver*, i32 }
%struct.nameserver = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @request_reissue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_reissue(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.nameserver*, align 8
  store %struct.request* %0, %struct.request** %3, align 8
  %5 = load %struct.request*, %struct.request** %3, align 8
  %6 = getelementptr inbounds %struct.request, %struct.request* %5, i32 0, i32 3
  %7 = load %struct.nameserver*, %struct.nameserver** %6, align 8
  store %struct.nameserver* %7, %struct.nameserver** %4, align 8
  %8 = load %struct.request*, %struct.request** %3, align 8
  %9 = getelementptr inbounds %struct.request, %struct.request* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @ASSERT_LOCKED(i32 %10)
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %12)
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = getelementptr inbounds %struct.request, %struct.request* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @nameserver_pick(i32 %17)
  %19 = call i32 @request_swap_ns(%struct.request* %14, i32 %18)
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 3
  %22 = load %struct.nameserver*, %struct.nameserver** %21, align 8
  %23 = load %struct.nameserver*, %struct.nameserver** %4, align 8
  %24 = icmp eq %struct.nameserver* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %35

26:                                               ; preds = %1
  %27 = load %struct.request*, %struct.request** %3, align 8
  %28 = getelementptr inbounds %struct.request, %struct.request* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.request*, %struct.request** %3, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.request*, %struct.request** %3, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %26, %25
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @ASSERT_LOCKED(i32) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

declare dso_local i32 @request_swap_ns(%struct.request*, i32) #1

declare dso_local i32 @nameserver_pick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
