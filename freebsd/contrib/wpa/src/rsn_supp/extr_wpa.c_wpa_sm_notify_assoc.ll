; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_notify_assoc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_notify_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i32, i32, i32*, i32, i32, i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32, i64, i32, i32, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WPA: Association event - clear replay counter\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"WPA: Clear old PTK\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_sm_notify_assoc(%struct.wpa_sm* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_sm*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %7 = icmp eq %struct.wpa_sm* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %69

9:                                                ; preds = %2
  %10 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %11 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %10, i32 0, i32 11
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_dbg(i32 %14, i32 %15, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %18 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %17, i32 0, i32 12
  %19 = load i32, i32* %18, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @os_memcpy(i32 %19, i32* %20, i32 %21)
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 17
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %27 = call i32 @os_memset(i32* %25, i32 0, i32 %26)
  %28 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %28, i32 0, i32 16
  store i64 0, i64* %29, align 8
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %33 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %32, i32 0, i32 15
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* @ETH_ALEN, align 4
  %37 = call i64 @os_memcmp(i32 %34, i32* %35, i32 %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %9
  %40 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %41 = call i32 @rsn_preauth_deinit(%struct.wpa_sm* %40)
  br label %42

42:                                               ; preds = %39, %9
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %69

45:                                               ; preds = %42
  %46 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %46, i32 0, i32 11
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_dbg(i32 %50, i32 %51, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %54 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %53, i32 0, i32 10
  store i64 0, i64* %54, align 8
  %55 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %55, i32 0, i32 9
  %57 = call i32 @os_memset(i32* %56, i32 0, i32 4)
  %58 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %59 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %58, i32 0, i32 8
  store i64 0, i64* %59, align 8
  %60 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %61 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %60, i32 0, i32 7
  %62 = call i32 @os_memset(i32* %61, i32 0, i32 4)
  %63 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %64 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %63, i32 0, i32 6
  %65 = call i32 @os_memset(i32* %64, i32 0, i32 4)
  %66 = load %struct.wpa_sm*, %struct.wpa_sm** %3, align 8
  %67 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %66, i32 0, i32 5
  %68 = call i32 @os_memset(i32* %67, i32 0, i32 4)
  br label %69

69:                                               ; preds = %8, %45, %42
  ret void
}

declare dso_local i32 @wpa_dbg(i32, i32, i8*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @os_memset(i32*, i32, i32) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i32 @rsn_preauth_deinit(%struct.wpa_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
