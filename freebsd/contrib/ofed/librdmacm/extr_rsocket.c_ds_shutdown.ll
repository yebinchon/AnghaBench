; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_shutdown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i32, i32, i32 }

@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@udp_svc = common dso_local global i32 0, align 4
@RS_SVC_REM_DGRAM = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@rs_readable = common dso_local global i32 0, align 4
@rs_writable = common dso_local global i32 0, align 4
@ds_all_sends_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @ds_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_shutdown(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %3 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %4 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %11 = load i32, i32* @RS_SVC_REM_DGRAM, align 4
  %12 = call i32 @rs_notify_svc(i32* @udp_svc, %struct.rsocket* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %15 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @O_NONBLOCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %22 = call i32 @rs_set_nonblocking(%struct.rsocket* %21, i32 0)
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* @rs_readable, align 4
  %25 = load i32, i32* @rs_writable, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %29 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %33 = load i32, i32* @ds_all_sends_done, align 4
  %34 = call i32 @ds_process_cqs(%struct.rsocket* %32, i32 0, i32 %33)
  %35 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %36 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @O_NONBLOCK, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %23
  %42 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %43 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %44 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @rs_set_nonblocking(%struct.rsocket* %42, i32 %45)
  br label %47

47:                                               ; preds = %41, %23
  ret void
}

declare dso_local i32 @rs_notify_svc(i32*, %struct.rsocket*, i32) #1

declare dso_local i32 @rs_set_nonblocking(%struct.rsocket*, i32) #1

declare dso_local i32 @ds_process_cqs(%struct.rsocket*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
