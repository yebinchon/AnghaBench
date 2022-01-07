; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_.arc4random.c_arc4_getword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_.arc4random.c_arc4_getword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @arc4_getword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc4_getword() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @arc4_getbyte()
  %3 = shl i32 %2, 24
  store i32 %3, i32* %1, align 4
  %4 = call i32 (...) @arc4_getbyte()
  %5 = shl i32 %4, 16
  %6 = load i32, i32* %1, align 4
  %7 = or i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = call i32 (...) @arc4_getbyte()
  %9 = shl i32 %8, 8
  %10 = load i32, i32* %1, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = call i32 (...) @arc4_getbyte()
  %13 = load i32, i32* %1, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @arc4_getbyte(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
