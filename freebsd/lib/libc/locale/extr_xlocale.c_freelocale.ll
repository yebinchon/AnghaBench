; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_freelocale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_freelocale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_GLOBAL_LOCALE = common dso_local global i32* null, align 8
@__xlocale_global_locale = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @freelocale(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i32*, i32** %2, align 8
  %7 = load i32*, i32** @LC_GLOBAL_LOCALE, align 8
  %8 = icmp ne i32* %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = load i32*, i32** %2, align 8
  %11 = icmp ne i32* %10, @__xlocale_global_locale
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @xlocale_release(i32* %13)
  br label %15

15:                                               ; preds = %12, %9, %5, %1
  ret void
}

declare dso_local i32 @xlocale_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
