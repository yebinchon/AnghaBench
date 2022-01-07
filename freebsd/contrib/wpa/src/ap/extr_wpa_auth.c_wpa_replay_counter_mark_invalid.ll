; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_replay_counter_mark_invalid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth.c_wpa_replay_counter_mark_invalid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_key_replay_counter = type { i64, i32 }

@RSNA_MAX_EAPOL_RETRIES = common dso_local global i32 0, align 4
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_key_replay_counter*, i32*)* @wpa_replay_counter_mark_invalid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpa_replay_counter_mark_invalid(%struct.wpa_key_replay_counter* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_key_replay_counter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.wpa_key_replay_counter* %0, %struct.wpa_key_replay_counter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %40, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RSNA_MAX_EAPOL_RETRIES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %43

10:                                               ; preds = %6
  %11 = load %struct.wpa_key_replay_counter*, %struct.wpa_key_replay_counter** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %11, i64 %13
  %15 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %10
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %18
  %22 = load i32*, i32** %4, align 8
  %23 = load %struct.wpa_key_replay_counter*, %struct.wpa_key_replay_counter** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %23, i64 %25
  %27 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %30 = call i64 @os_memcmp(i32* %22, i32 %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %21, %18
  %33 = load i64, i64* @FALSE, align 8
  %34 = load %struct.wpa_key_replay_counter*, %struct.wpa_key_replay_counter** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %34, i64 %36
  %38 = getelementptr inbounds %struct.wpa_key_replay_counter, %struct.wpa_key_replay_counter* %37, i32 0, i32 0
  store i64 %33, i64* %38, align 8
  br label %39

39:                                               ; preds = %32, %21, %10
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %6

43:                                               ; preds = %6
  ret void
}

declare dso_local i64 @os_memcmp(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
