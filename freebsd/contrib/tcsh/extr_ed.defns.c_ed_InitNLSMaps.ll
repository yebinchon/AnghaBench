; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitNLSMaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.defns.c_ed_InitNLSMaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AsciiOnly = common dso_local global i64 0, align 8
@NoNLSRebind = common dso_local global i64 0, align 8
@F_INSERT = common dso_local global i32 0, align 4
@CcKeyMap = common dso_local global i32* null, align 8
@NLSMapsAreInited = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ed_InitNLSMaps() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @AsciiOnly, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  br label %29

5:                                                ; preds = %0
  %6 = load i64, i64* @NoNLSRebind, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  br label %29

9:                                                ; preds = %5
  store i32 128, i32* %1, align 4
  br label %10

10:                                               ; preds = %25, %9
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 255
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = load i32, i32* %1, align 4
  %15 = call i64 @CTL_ESC(i32 %14)
  %16 = call i64 @Isprint(i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @F_INSERT, align 4
  %20 = load i32*, i32** @CcKeyMap, align 8
  %21 = load i32, i32* %1, align 4
  %22 = call i64 @CTL_ESC(i32 %21)
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  store i32 %19, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %13
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %1, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %1, align 4
  br label %10

28:                                               ; preds = %10
  store i32 1, i32* @NLSMapsAreInited, align 4
  br label %29

29:                                               ; preds = %28, %8, %4
  ret void
}

declare dso_local i64 @Isprint(i64) #1

declare dso_local i64 @CTL_ESC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
