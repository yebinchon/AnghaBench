; ModuleID = '/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/usb/storage/extr_umass_loader.c_umass_disk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@hz = common dso_local global i32 0, align 4
@umass_uaa = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @umass_disk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_disk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @usb_init()
  %4 = call i32 (...) @usb_needs_explore_all()
  store i32 0, i32* %2, align 4
  br label %5

5:                                                ; preds = %22, %0
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @hz, align 4
  %8 = mul nsw i32 8, %7
  %9 = icmp slt i32 %6, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = call i32 (...) @usb_idle()
  %12 = load i32, i32* @hz, align 4
  %13 = sdiv i32 1000000, %12
  %14 = call i32 @delay(i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %2, align 4
  %17 = call i32 @callout_process(i32 1)
  %18 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @umass_uaa, i32 0, i32 0), align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %26

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %5

25:                                               ; preds = %5
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %20
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i32 @usb_init(...) #1

declare dso_local i32 @usb_needs_explore_all(...) #1

declare dso_local i32 @usb_idle(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @callout_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
