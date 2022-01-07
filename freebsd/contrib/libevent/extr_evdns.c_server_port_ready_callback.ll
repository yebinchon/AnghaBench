; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_server_port_ready_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_server_port_ready_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i64 }

@EV_WRITE = common dso_local global i16 0, align 2
@EV_READ = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @server_port_ready_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_port_ready_callback(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evdns_server_port*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.evdns_server_port*
  store %struct.evdns_server_port* %9, %struct.evdns_server_port** %7, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.evdns_server_port*, %struct.evdns_server_port** %7, align 8
  %12 = call i32 @EVDNS_LOCK(%struct.evdns_server_port* %11)
  %13 = load i16, i16* %5, align 2
  %14 = sext i16 %13 to i32
  %15 = load i16, i16* @EV_WRITE, align 2
  %16 = sext i16 %15 to i32
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.evdns_server_port*, %struct.evdns_server_port** %7, align 8
  %21 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.evdns_server_port*, %struct.evdns_server_port** %7, align 8
  %23 = call i32 @server_port_flush(%struct.evdns_server_port* %22)
  br label %24

24:                                               ; preds = %19, %3
  %25 = load i16, i16* %5, align 2
  %26 = sext i16 %25 to i32
  %27 = load i16, i16* @EV_READ, align 2
  %28 = sext i16 %27 to i32
  %29 = and i32 %26, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.evdns_server_port*, %struct.evdns_server_port** %7, align 8
  %33 = call i32 @server_port_read(%struct.evdns_server_port* %32)
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.evdns_server_port*, %struct.evdns_server_port** %7, align 8
  %36 = call i32 @EVDNS_UNLOCK(%struct.evdns_server_port* %35)
  ret void
}

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_server_port*) #1

declare dso_local i32 @server_port_flush(%struct.evdns_server_port*) #1

declare dso_local i32 @server_port_read(%struct.evdns_server_port*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_server_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
