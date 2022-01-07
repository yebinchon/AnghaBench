; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_check_freq_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_check_freq_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.wpa_used_freq_data = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"P2P: Frequency %d MHz in use by another virtual interface and can be used\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"P2P: No valid operating frequencies\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, i32)* @wpas_check_freq_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_check_freq_conflict(%struct.wpa_supplicant* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wpa_used_freq_data*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = call i64 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant* %10)
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.wpa_used_freq_data* @os_calloc(i32 %17, i32 4)
  store %struct.wpa_used_freq_data* %18, %struct.wpa_used_freq_data** %9, align 8
  %19 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %9, align 8
  %20 = icmp ne %struct.wpa_used_freq_data* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %57

22:                                               ; preds = %14
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %24 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %9, align 8
  %25 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @wpas_p2p_valid_oper_freqs(%struct.wpa_supplicant* %23, %struct.wpa_used_freq_data* %24, i32 %27)
  store i32 %28, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %47, %22
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %29
  %34 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %9, align 8
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %34, i64 %36
  %38 = getelementptr inbounds %struct.wpa_used_freq_data, %struct.wpa_used_freq_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %44)
  store i32 0, i32* %6, align 4
  br label %53

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %8, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %8, align 4
  br label %29

50:                                               ; preds = %29
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.wpa_used_freq_data*, %struct.wpa_used_freq_data** %9, align 8
  %55 = call i32 @os_free(%struct.wpa_used_freq_data* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %21, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i64 @wpas_p2p_num_unused_channels(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_used_freq_data* @os_calloc(i32, i32) #1

declare dso_local i32 @wpas_p2p_valid_oper_freqs(%struct.wpa_supplicant*, %struct.wpa_used_freq_data*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_free(%struct.wpa_used_freq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
