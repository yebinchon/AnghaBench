; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wpa_supplicant.c_wpa_supplicant_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_global = type { %struct.wpa_supplicant*, %struct.TYPE_2__ }
%struct.wpa_supplicant = type { i64, i32, %struct.wpa_supplicant* }
%struct.TYPE_2__ = type { i64, i32, i64 }

@wpa_supplicant_terminate = common dso_local global i32 0, align 4
@wpa_supplicant_reconfig = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_run(%struct.wpa_global* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_global*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_global* %0, %struct.wpa_global** %3, align 8
  %5 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %6 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i64 @wpa_supplicant_daemon(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = call i64 (...) @eloop_sock_requeue()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %10
  store i32 -1, i32* %2, align 4
  br label %63

21:                                               ; preds = %17, %1
  %22 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %23 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %55

27:                                               ; preds = %21
  %28 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_global, %struct.wpa_global* %28, i32 0, i32 0
  %30 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %29, align 8
  store %struct.wpa_supplicant* %30, %struct.wpa_supplicant** %4, align 8
  br label %31

31:                                               ; preds = %50, %27
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %33 = icmp ne %struct.wpa_supplicant* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %41 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %46 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @wpa_supplicant_ctrl_iface_wait(i64 %47)
  br label %49

49:                                               ; preds = %44, %39, %34
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %52 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %51, i32 0, i32 2
  %53 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %52, align 8
  store %struct.wpa_supplicant* %53, %struct.wpa_supplicant** %4, align 8
  br label %31

54:                                               ; preds = %31
  br label %55

55:                                               ; preds = %54, %21
  %56 = load i32, i32* @wpa_supplicant_terminate, align 4
  %57 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %58 = call i32 @eloop_register_signal_terminate(i32 %56, %struct.wpa_global* %57)
  %59 = load i32, i32* @wpa_supplicant_reconfig, align 4
  %60 = load %struct.wpa_global*, %struct.wpa_global** %3, align 8
  %61 = call i32 @eloop_register_signal_reconfig(i32 %59, %struct.wpa_global* %60)
  %62 = call i32 (...) @eloop_run()
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %55, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @wpa_supplicant_daemon(i32) #1

declare dso_local i64 @eloop_sock_requeue(...) #1

declare dso_local i32 @wpa_supplicant_ctrl_iface_wait(i64) #1

declare dso_local i32 @eloop_register_signal_terminate(i32, %struct.wpa_global*) #1

declare dso_local i32 @eloop_register_signal_reconfig(i32, %struct.wpa_global*) #1

declare dso_local i32 @eloop_run(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
