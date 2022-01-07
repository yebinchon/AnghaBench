; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo_async_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evutil.c_evutil_getaddrinfo_async_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.evutil_addrinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evutil_getaddrinfo_async_(%struct.evdns_base* %0, i8* %1, i8* %2, %struct.evutil_addrinfo* %3, void (i32, %struct.evutil_addrinfo*, i8*)* %4, i8* %5) #0 {
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.evutil_addrinfo*, align 8
  %11 = alloca void (i32, %struct.evutil_addrinfo*, i8*)*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.evutil_addrinfo*, align 8
  %14 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.evutil_addrinfo* %3, %struct.evutil_addrinfo** %10, align 8
  store void (i32, %struct.evutil_addrinfo*, i8*)* %4, void (i32, %struct.evutil_addrinfo*, i8*)** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %16 = icmp ne %struct.evdns_base* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %6
  br i1 true, label %18, label %26

18:                                               ; preds = %17
  %19 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %10, align 8
  %23 = load void (i32, %struct.evutil_addrinfo*, i8*)*, void (i32, %struct.evutil_addrinfo*, i8*)** %11, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = call i32 @evdns_getaddrinfo_impl(%struct.evdns_base* %19, i8* %20, i8* %21, %struct.evutil_addrinfo* %22, void (i32, %struct.evutil_addrinfo*, i8*)* %23, i8* %24)
  br label %35

26:                                               ; preds = %17, %6
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %13, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %10, align 8
  %30 = call i32 @evutil_getaddrinfo(i8* %27, i8* %28, %struct.evutil_addrinfo* %29, %struct.evutil_addrinfo** %13)
  store i32 %30, i32* %14, align 4
  %31 = load void (i32, %struct.evutil_addrinfo*, i8*)*, void (i32, %struct.evutil_addrinfo*, i8*)** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %13, align 8
  %34 = load i8*, i8** %12, align 8
  call void %31(i32 %32, %struct.evutil_addrinfo* %33, i8* %34)
  br label %35

35:                                               ; preds = %26, %18
  ret i32 0
}

declare dso_local i32 @evdns_getaddrinfo_impl(%struct.evdns_base*, i8*, i8*, %struct.evutil_addrinfo*, void (i32, %struct.evutil_addrinfo*, i8*)*, i8*) #1

declare dso_local i32 @evutil_getaddrinfo(i8*, i8*, %struct.evutil_addrinfo*, %struct.evutil_addrinfo**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
