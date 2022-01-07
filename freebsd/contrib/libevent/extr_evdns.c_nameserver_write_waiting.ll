; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_write_waiting.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_write_waiting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i8, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@nameserver_ready_callback = common dso_local global i32 0, align 4
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Error from libevent when adding event for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*, i8)* @nameserver_write_waiting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_write_waiting(%struct.nameserver* %0, i8 signext %1) #0 {
  %3 = alloca %struct.nameserver*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [128 x i8], align 16
  store %struct.nameserver* %0, %struct.nameserver** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %7 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %6, i32 0, i32 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @ASSERT_LOCKED(%struct.TYPE_2__* %8)
  %10 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %11 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %62

18:                                               ; preds = %2
  %19 = load i8, i8* %4, align 1
  %20 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %21 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %20, i32 0, i32 0
  store i8 %19, i8* %21, align 8
  %22 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %23 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %22, i32 0, i32 2
  %24 = call i32 @event_del(i32* %23)
  %25 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %26 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %25, i32 0, i32 2
  %27 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %28 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %27, i32 0, i32 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %33 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @EV_READ, align 4
  %36 = load i8, i8* %4, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = load i32, i32* @EV_WRITE, align 4
  br label %42

41:                                               ; preds = %18
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 0, %41 ]
  %44 = or i32 %35, %43
  %45 = load i32, i32* @EV_PERSIST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @nameserver_ready_callback, align 4
  %48 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %49 = call i32 @event_assign(i32* %26, i32 %31, i32 %34, i32 %46, i32 %47, %struct.nameserver* %48)
  %50 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %51 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %50, i32 0, i32 2
  %52 = call i64 @event_add(i32* %51, i32* null)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %42
  %55 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %56 = load %struct.nameserver*, %struct.nameserver** %3, align 8
  %57 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %56, i32 0, i32 1
  %58 = bitcast i32* %57 to %struct.sockaddr*
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %5, i64 0, i64 0
  %60 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %58, i8* %59, i32 128)
  %61 = call i32 @log(i32 %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %17, %54, %42
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_2__*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_assign(i32*, i32, i32, i32, i32, %struct.nameserver*) #1

declare dso_local i64 @event_add(i32*, i32*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
