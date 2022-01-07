; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_regdomain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_regdomain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spacer = common dso_local global i8 0, align 1
@regdomain = common dso_local global i32 0, align 4
@chaninfo = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @list_regdomain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_regdomain(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @getregdomain(i32 %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @getchaninfo(i32 %10)
  store i8 58, i8* @spacer, align 1
  %12 = call i32 @print_regdomain(i32* @regdomain, i32 1)
  %13 = call i32 (...) @LINE_BREAK()
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @chaninfo, align 4
  %16 = call i32 @print_channels(i32 %14, i32 %15, i32 1, i32 1)
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @verbose, align 4
  %19 = call i32 @print_regdomain(i32* @regdomain, i32 %18)
  br label %20

20:                                               ; preds = %17, %9
  ret void
}

declare dso_local i32 @getregdomain(i32) #1

declare dso_local i32 @getchaninfo(i32) #1

declare dso_local i32 @print_regdomain(i32*, i32) #1

declare dso_local i32 @LINE_BREAK(...) #1

declare dso_local i32 @print_channels(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
