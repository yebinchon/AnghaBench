; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_spin_char.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dprompt.c_spin_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spin_cp = common dso_local global i8* null, align 8
@spin = common dso_local global i8* null, align 8
@SPIN_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 ()* @spin_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @spin_char() #0 {
  %1 = alloca i8, align 1
  %2 = load i8*, i8** @spin_cp, align 8
  %3 = load i8, i8* %2, align 1
  %4 = sext i8 %3 to i32
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = load i8*, i8** @spin, align 8
  store i8* %7, i8** @spin_cp, align 8
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i8*, i8** @spin_cp, align 8
  %10 = load i8, i8* %9, align 1
  store i8 %10, i8* %1, align 1
  %11 = load i8*, i8** @spin_cp, align 8
  %12 = getelementptr inbounds i8, i8* %11, i32 1
  store i8* %12, i8** @spin_cp, align 8
  %13 = load i8*, i8** @spin, align 8
  %14 = load i32, i32* @SPIN_SIZE, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = icmp uge i8* %12, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %8
  %19 = load i8*, i8** @spin, align 8
  store i8* %19, i8** @spin_cp, align 8
  br label %20

20:                                               ; preds = %18, %8
  %21 = load i8, i8* %1, align 1
  ret i8 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
