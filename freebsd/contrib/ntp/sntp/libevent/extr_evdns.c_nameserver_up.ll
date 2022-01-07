; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_nameserver_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_nameserver_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, %struct.TYPE_3__*, i64, i64, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Nameserver %s is back up\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*)* @nameserver_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_up(%struct.nameserver* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  %3 = alloca [128 x i8], align 16
  store %struct.nameserver* %0, %struct.nameserver** %2, align 8
  %4 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %5 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = call i32 @ASSERT_LOCKED(%struct.TYPE_3__* %6)
  %8 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %9 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %51

13:                                               ; preds = %1
  %14 = load i32, i32* @EVDNS_LOG_MSG, align 4
  %15 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %16 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %15, i32 0, i32 6
  %17 = bitcast i32* %16 to %struct.sockaddr*
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %19 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %17, i8* %18, i32 128)
  %20 = call i32 @log(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %22 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %21, i32 0, i32 5
  %23 = call i32 @evtimer_del(i32* %22)
  %24 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %38

28:                                               ; preds = %13
  %29 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %30 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %33 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @evdns_cancel_request(%struct.TYPE_3__* %31, i32* %34)
  %36 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %37 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %28, %13
  %39 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %40 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %42 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %44 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %46 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_3__*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local i32 @evtimer_del(i32*) #1

declare dso_local i32 @evdns_cancel_request(%struct.TYPE_3__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
