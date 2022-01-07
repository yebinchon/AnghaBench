; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_tdls.c_wpa_tdls_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i64 }
%struct.wpa_tdls_peer = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"TDLS: TDLS is prohibited in this BSS - reject request to start setup\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"TDLS: Setup is already in progress with the peer\00", align 1
@TDLS_TESTING_IGNORE_AP_PROHIBIT = common dso_local global i32 0, align 4
@tdls_testing = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_tdls_start(%struct.wpa_sm* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wpa_tdls_peer*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %9 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %12 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %17 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  store i32 -1, i32* %3, align 4
  br label %67

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %67

27:                                               ; preds = %21
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.wpa_tdls_peer* @wpa_tdls_add_peer(%struct.wpa_sm* %28, i32* %29, i32* null)
  store %struct.wpa_tdls_peer* %30, %struct.wpa_tdls_peer** %6, align 8
  %31 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %32 = icmp eq %struct.wpa_tdls_peer* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %67

34:                                               ; preds = %27
  %35 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %36 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 @wpa_printf(i32 %40, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %67

42:                                               ; preds = %34
  %43 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %46 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @wpa_sm_tdls_peer_addset(%struct.wpa_sm* %45, i32 %48, i32 1, i32 0, i32 0, i32* null, i32 0, i32* null, i32* null, i32 0, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %53 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %54 = call i32 @wpa_tdls_disable_peer_link(%struct.wpa_sm* %52, %struct.wpa_tdls_peer* %53)
  store i32 -1, i32* %3, align 4
  br label %67

55:                                               ; preds = %42
  %56 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %57 = getelementptr inbounds %struct.wpa_tdls_peer, %struct.wpa_tdls_peer* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %59 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %60 = call i64 @wpa_tdls_send_tpk_m1(%struct.wpa_sm* %58, %struct.wpa_tdls_peer* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %64 = load %struct.wpa_tdls_peer*, %struct.wpa_tdls_peer** %6, align 8
  %65 = call i32 @wpa_tdls_disable_peer_link(%struct.wpa_sm* %63, %struct.wpa_tdls_peer* %64)
  store i32 -1, i32* %3, align 4
  br label %67

66:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %62, %51, %39, %33, %24, %20
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.wpa_tdls_peer* @wpa_tdls_add_peer(%struct.wpa_sm*, i32*, i32*) #1

declare dso_local i64 @wpa_sm_tdls_peer_addset(%struct.wpa_sm*, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @wpa_tdls_disable_peer_link(%struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

declare dso_local i64 @wpa_tdls_send_tpk_m1(%struct.wpa_sm*, %struct.wpa_tdls_peer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
