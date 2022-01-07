; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ibss_rsn.c_ibss_rsn_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibss_rsn = type { i32 }
%struct.ibss_rsn_peer = type { i32, i32 }

@IBSS_RSN_AUTH_BY_US = common dso_local global i32 0, align 4
@ibss_rsn_auth_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ibss_rsn_start(%struct.ibss_rsn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibss_rsn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ibss_rsn_peer*, align 8
  %7 = alloca i32, align 4
  store %struct.ibss_rsn* %0, %struct.ibss_rsn** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.ibss_rsn*, %struct.ibss_rsn** %4, align 8
  %9 = icmp ne %struct.ibss_rsn* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %48

11:                                               ; preds = %2
  %12 = load %struct.ibss_rsn*, %struct.ibss_rsn** %4, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call %struct.ibss_rsn_peer* @ibss_rsn_get_peer(%struct.ibss_rsn* %12, i32* %13)
  store %struct.ibss_rsn_peer* %14, %struct.ibss_rsn_peer** %6, align 8
  %15 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %16 = icmp ne %struct.ibss_rsn_peer* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.ibss_rsn*, %struct.ibss_rsn** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call %struct.ibss_rsn_peer* @ibss_rsn_peer_init(%struct.ibss_rsn* %19, i32* %20)
  store %struct.ibss_rsn_peer* %21, %struct.ibss_rsn_peer** %6, align 8
  %22 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %23 = icmp eq %struct.ibss_rsn_peer* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %48

25:                                               ; preds = %18
  %26 = load %struct.ibss_rsn*, %struct.ibss_rsn** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ibss_rsn_send_auth(%struct.ibss_rsn* %26, i32* %27, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* @IBSS_RSN_AUTH_BY_US, align 4
  %33 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %34 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load %struct.ibss_rsn*, %struct.ibss_rsn** %4, align 8
  %38 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %39 = call i32 @ibss_rsn_auth_init(%struct.ibss_rsn* %37, %struct.ibss_rsn_peer* %38)
  store i32 %39, i32* %3, align 4
  br label %48

40:                                               ; preds = %25
  %41 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %42 = getelementptr inbounds %struct.ibss_rsn_peer, %struct.ibss_rsn_peer* %41, i32 0, i32 0
  %43 = call i32 @os_get_reltime(i32* %42)
  %44 = load i32, i32* @ibss_rsn_auth_timeout, align 4
  %45 = load %struct.ibss_rsn_peer*, %struct.ibss_rsn_peer** %6, align 8
  %46 = call i32 @eloop_register_timeout(i32 1, i32 0, i32 %44, %struct.ibss_rsn_peer* %45, i32* null)
  br label %47

47:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %31, %24, %17, %10
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.ibss_rsn_peer* @ibss_rsn_get_peer(%struct.ibss_rsn*, i32*) #1

declare dso_local %struct.ibss_rsn_peer* @ibss_rsn_peer_init(%struct.ibss_rsn*, i32*) #1

declare dso_local i32 @ibss_rsn_send_auth(%struct.ibss_rsn*, i32*, i32) #1

declare dso_local i32 @ibss_rsn_auth_init(%struct.ibss_rsn*, %struct.ibss_rsn_peer*) #1

declare dso_local i32 @os_get_reltime(i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.ibss_rsn_peer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
