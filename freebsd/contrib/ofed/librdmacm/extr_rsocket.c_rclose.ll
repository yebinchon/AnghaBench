; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rclose.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rclose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32, i32 }

@idm = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@rs_connected = common dso_local global i32 0, align 4
@SHUT_RDWR = common dso_local global i32 0, align 4
@RS_OPT_SVC_ACTIVE = common dso_local global i32 0, align 4
@tcp_svc = common dso_local global i32 0, align 4
@RS_SVC_REM_KEEPALIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rclose(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsocket*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.rsocket* @idm_lookup(i32* @idm, i32 %5)
  store %struct.rsocket* %6, %struct.rsocket** %4, align 8
  %7 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %8 = icmp ne %struct.rsocket* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EBADF, align 4
  store i32 %10, i32* %2, align 4
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %13 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_STREAM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %11
  %18 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %19 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @rs_connected, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @SHUT_RDWR, align 4
  %27 = call i32 @rshutdown(i32 %25, i32 %26)
  br label %40

28:                                               ; preds = %17
  %29 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @RS_OPT_SVC_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %37 = load i32, i32* @RS_SVC_REM_KEEPALIVE, align 4
  %38 = call i32 @rs_notify_svc(i32* @tcp_svc, %struct.rsocket* %36, i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  br label %40

40:                                               ; preds = %39, %24
  br label %44

41:                                               ; preds = %11
  %42 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %43 = call i32 @ds_shutdown(%struct.rsocket* %42)
  br label %44

44:                                               ; preds = %41, %40
  %45 = load %struct.rsocket*, %struct.rsocket** %4, align 8
  %46 = call i32 @rs_free(%struct.rsocket* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %9
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.rsocket* @idm_lookup(i32*, i32) #1

declare dso_local i32 @rshutdown(i32, i32) #1

declare dso_local i32 @rs_notify_svc(i32*, %struct.rsocket*, i32) #1

declare dso_local i32 @ds_shutdown(%struct.rsocket*) #1

declare dso_local i32 @rs_free(%struct.rsocket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
