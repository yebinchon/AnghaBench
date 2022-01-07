; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_std_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/rtquery/extr_rtquery.c_std_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_CLASSA_NET = common dso_local global i64 0, align 8
@IN_CLASSB_NET = common dso_local global i64 0, align 8
@IN_CLASSC_NET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @std_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @std_mask(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @ntohl(i64 %4)
  store i64 %5, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %23

9:                                                ; preds = %1
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @IN_CLASSA(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = load i64, i64* @IN_CLASSA_NET, align 8
  store i64 %14, i64* %2, align 8
  br label %23

15:                                               ; preds = %9
  %16 = load i64, i64* %3, align 8
  %17 = call i64 @IN_CLASSB(i64 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = load i64, i64* @IN_CLASSB_NET, align 8
  store i64 %20, i64* %2, align 8
  br label %23

21:                                               ; preds = %15
  %22 = load i64, i64* @IN_CLASSC_NET, align 8
  store i64 %22, i64* %2, align 8
  br label %23

23:                                               ; preds = %21, %19, %13, %8
  %24 = load i64, i64* %2, align 8
  ret i64 %24
}

declare dso_local i64 @ntohl(i64) #1

declare dso_local i64 @IN_CLASSA(i64) #1

declare dso_local i64 @IN_CLASSB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
