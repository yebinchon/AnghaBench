; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtm_lose.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_table.c_rtm_lose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt_msghdr = type { i32 }
%struct.rt_addrinfo = type { i32 }
%struct.TYPE_3__ = type { i64 }

@AF_INET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"ignore %s without gateway\00", align 1
@rdisc_ok = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt_msghdr*, %struct.rt_addrinfo*)* @rtm_lose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtm_lose(%struct.rt_msghdr* %0, %struct.rt_addrinfo* %1) #0 {
  %3 = alloca %struct.rt_msghdr*, align 8
  %4 = alloca %struct.rt_addrinfo*, align 8
  store %struct.rt_msghdr* %0, %struct.rt_msghdr** %3, align 8
  store %struct.rt_addrinfo* %1, %struct.rt_addrinfo** %4, align 8
  %5 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %4, align 8
  %6 = call %struct.TYPE_3__* @INFO_GATE(%struct.rt_addrinfo* %5)
  %7 = icmp eq %struct.TYPE_3__* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %4, align 8
  %10 = call %struct.TYPE_3__* @INFO_GATE(%struct.rt_addrinfo* %9)
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AF_INET, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %8, %2
  %16 = load %struct.rt_msghdr*, %struct.rt_msghdr** %3, align 8
  %17 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rtm_type_name(i32 %18)
  %20 = call i32 @trace_act(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %34

21:                                               ; preds = %8
  %22 = load i64, i64* @rdisc_ok, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %4, align 8
  %26 = call %struct.TYPE_3__* @INFO_GATE(%struct.rt_addrinfo* %25)
  %27 = call i32 @S_ADDR(%struct.TYPE_3__* %26)
  %28 = call i32 @rdisc_age(i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  %30 = load %struct.rt_addrinfo*, %struct.rt_addrinfo** %4, align 8
  %31 = call %struct.TYPE_3__* @INFO_GATE(%struct.rt_addrinfo* %30)
  %32 = call i32 @S_ADDR(%struct.TYPE_3__* %31)
  %33 = call i32 @age(i32 %32)
  br label %34

34:                                               ; preds = %29, %15
  ret void
}

declare dso_local %struct.TYPE_3__* @INFO_GATE(%struct.rt_addrinfo*) #1

declare dso_local i32 @trace_act(i8*, i32) #1

declare dso_local i32 @rtm_type_name(i32) #1

declare dso_local i32 @rdisc_age(i32) #1

declare dso_local i32 @S_ADDR(%struct.TYPE_3__*) #1

declare dso_local i32 @age(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
