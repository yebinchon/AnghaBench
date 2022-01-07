; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_enable_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32 }
%struct.wpa_tdls_peer = type { i32, i32, i32, i64, i64, i64 }

@wpa_tdls_tpk_timeout = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"TDLS: Could not configure key to the driver\00", align 1
@TDLS_ENABLE_LINK = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@TDLS_TESTING_NO_TPK_EXPIRATION = common dso_local global i32 0, align 4
@tdls_testing = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_sm*, %struct.wpa_tdls_peer*)* @wpa_tdls_enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_tdls_enable_link(%struct.wpa_sm* %0, %struct.wpa_tdls_peer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_tdls_peer*, align 8
  %6 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_tdls_peer* %1, %struct.wpa_tdls_peer** %5, align 8
  %7 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %8 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* @wpa_tdls_tpk_timeout, align 4
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %13 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %14 = call i32 @eloop_cancel_timeout(i32 %11, %struct.wpa_sm* %12, %struct.wpa_tdls_peer* %13)
  %15 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %16 = call i64 @wpa_tdls_get_privacy(%struct.wpa_sm* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %26 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sub nsw i32 %30, 3
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29, %24, %18
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @wpa_tdls_tpk_timeout, align 4
  %35 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %36 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %37 = call i32 @eloop_register_timeout(i32 %33, i32 0, i32 %34, %struct.wpa_sm* %35, %struct.wpa_tdls_peer* %36)
  br label %38

38:                                               ; preds = %32, %2
  %39 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %40 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %45 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %46 = call i64 @wpa_tdls_set_key(%struct.wpa_sm* %44, %struct.wpa_tdls_peer* %45)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load i32, i32* @MSG_INFO, align 4
  %50 = call i32 @wpa_printf(i32 %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %60

51:                                               ; preds = %43, %38
  %52 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %53 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %55 = load i32, i32* @TDLS_ENABLE_LINK, align 4
  %56 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %5, align 8
  %57 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @wpa_sm_tdls_oper(%struct.wpa_sm* %54, i32 %55, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i64 @wpa_tdls_get_privacy(%struct.wpa_sm*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i64 @wpa_tdls_set_key(%struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_sm_tdls_oper(%struct.wpa_sm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
