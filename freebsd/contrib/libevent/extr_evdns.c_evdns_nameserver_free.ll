; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_nameserver_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_evdns_nameserver_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i64, i64, i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*)* @evdns_nameserver_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evdns_nameserver_free(%struct.nameserver* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  store %struct.nameserver* %0, %struct.nameserver** %2, align 8
  %3 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %4 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %9 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @evutil_closesocket(i64 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %14 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %13, i32 0, i32 5
  %15 = call i32 @event_del(i32* %14)
  %16 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %17 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %16, i32 0, i32 5
  %18 = call i32 @event_debug_unassign(i32* %17)
  %19 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %20 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %12
  %24 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 2
  %26 = call i32 @event_del(i32* %25)
  br label %27

27:                                               ; preds = %23, %12
  %28 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %29 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %34 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %37 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @evdns_cancel_request(i32 %35, i32* %38)
  %40 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %41 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %32, %27
  %43 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %44 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %43, i32 0, i32 2
  %45 = call i32 @event_debug_unassign(i32* %44)
  %46 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %47 = call i32 @mm_free(%struct.nameserver* %46)
  ret void
}

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_debug_unassign(i32*) #1

declare dso_local i32 @evdns_cancel_request(i32, i32*) #1

declare dso_local i32 @mm_free(%struct.nameserver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
