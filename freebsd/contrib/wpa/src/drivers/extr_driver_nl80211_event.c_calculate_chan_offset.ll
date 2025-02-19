; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_calculate_chan_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_calculate_chan_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @calculate_chan_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calculate_chan_offset(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @convert2width(i32 %11)
  switch i32 %12, label %24 [
    i32 132, label %13
    i32 133, label %13
    i32 131, label %14
    i32 130, label %17
    i32 134, label %20
    i32 128, label %23
    i32 129, label %23
  ]

13:                                               ; preds = %4, %4
  store i32 0, i32* %5, align 4
  br label %34

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 %15, 10
  store i32 %16, i32* %10, align 4
  br label %24

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 30
  store i32 %19, i32* %10, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 %21, 70
  store i32 %22, i32* %10, align 4
  br label %24

23:                                               ; preds = %4, %4
  store i32 0, i32* %5, align 4
  br label %34

24:                                               ; preds = %4, %20, %17, %14
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sub nsw i32 %25, %26
  %28 = call i32 @abs(i32 %27) #3
  %29 = sdiv i32 %28, 20
  %30 = srem i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 -1
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %24, %23, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @convert2width(i32) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
