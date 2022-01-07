; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_wifi_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_ndef.c_wifi_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndef_record = type { i64, i32* }

@wifi_handover_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ndef_record*)* @wifi_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_filter(%struct.ndef_record* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ndef_record*, align 8
  store %struct.ndef_record* %0, %struct.ndef_record** %3, align 8
  %4 = load %struct.ndef_record*, %struct.ndef_record** %3, align 8
  %5 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %15, label %8

8:                                                ; preds = %1
  %9 = load %struct.ndef_record*, %struct.ndef_record** %3, align 8
  %10 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @wifi_handover_type, align 4
  %13 = call i64 @os_strlen(i32 %12)
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %27

16:                                               ; preds = %8
  %17 = load %struct.ndef_record*, %struct.ndef_record** %3, align 8
  %18 = getelementptr inbounds %struct.ndef_record, %struct.ndef_record* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* @wifi_handover_type, align 4
  %21 = load i32, i32* @wifi_handover_type, align 4
  %22 = call i64 @os_strlen(i32 %21)
  %23 = call i64 @os_memcmp(i32* %19, i32 %20, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %27

26:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @os_strlen(i32) #1

declare dso_local i64 @os_memcmp(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
