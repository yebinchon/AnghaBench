; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_addrinfo_append_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_addrinfo_append_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { %struct.evutil_addrinfo* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evutil_addrinfo* @evutil_addrinfo_append_(%struct.evutil_addrinfo* %0, %struct.evutil_addrinfo* %1) #0 {
  %3 = alloca %struct.evutil_addrinfo*, align 8
  %4 = alloca %struct.evutil_addrinfo*, align 8
  %5 = alloca %struct.evutil_addrinfo*, align 8
  %6 = alloca %struct.evutil_addrinfo*, align 8
  store %struct.evutil_addrinfo* %0, %struct.evutil_addrinfo** %4, align 8
  store %struct.evutil_addrinfo* %1, %struct.evutil_addrinfo** %5, align 8
  %7 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  store %struct.evutil_addrinfo* %7, %struct.evutil_addrinfo** %6, align 8
  %8 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %6, align 8
  %9 = icmp ne %struct.evutil_addrinfo* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  store %struct.evutil_addrinfo* %11, %struct.evutil_addrinfo** %3, align 8
  br label %27

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %18, %12
  %14 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %6, align 8
  %15 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %14, i32 0, i32 0
  %16 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %15, align 8
  %17 = icmp ne %struct.evutil_addrinfo* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %6, align 8
  %20 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %19, i32 0, i32 0
  %21 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %20, align 8
  store %struct.evutil_addrinfo* %21, %struct.evutil_addrinfo** %6, align 8
  br label %13

22:                                               ; preds = %13
  %23 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %5, align 8
  %24 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %6, align 8
  %25 = getelementptr inbounds %struct.evutil_addrinfo, %struct.evutil_addrinfo* %24, i32 0, i32 0
  store %struct.evutil_addrinfo* %23, %struct.evutil_addrinfo** %25, align 8
  %26 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %4, align 8
  store %struct.evutil_addrinfo* %26, %struct.evutil_addrinfo** %3, align 8
  br label %27

27:                                               ; preds = %22, %10
  %28 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %3, align 8
  ret %struct.evutil_addrinfo* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
