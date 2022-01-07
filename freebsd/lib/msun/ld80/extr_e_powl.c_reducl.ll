; ModuleID = '/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c_reducl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/msun/ld80/extr_e_powl.c_reducl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LNXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (x86_fp80 (x86_fp80)* @reducl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal x86_fp80 @reducl(x86_fp80 %0) #0 {
  %2 = alloca x86_fp80, align 16
  %3 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %2, align 16
  %4 = load x86_fp80, x86_fp80* %2, align 16
  %5 = load i32, i32* @LNXT, align 4
  %6 = call x86_fp80 @ldexpl(x86_fp80 %4, i32 %5) #3
  store x86_fp80 %6, x86_fp80* %3, align 16
  %7 = load x86_fp80, x86_fp80* %3, align 16
  %8 = call x86_fp80 @llvm.floor.f80(x86_fp80 %7)
  store x86_fp80 %8, x86_fp80* %3, align 16
  %9 = load x86_fp80, x86_fp80* %3, align 16
  %10 = load i32, i32* @LNXT, align 4
  %11 = sub nsw i32 0, %10
  %12 = call x86_fp80 @ldexpl(x86_fp80 %9, i32 %11) #3
  store x86_fp80 %12, x86_fp80* %3, align 16
  %13 = load x86_fp80, x86_fp80* %3, align 16
  ret x86_fp80 %13
}

; Function Attrs: nounwind
declare dso_local x86_fp80 @ldexpl(x86_fp80, i32) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare x86_fp80 @llvm.floor.f80(x86_fp80) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
