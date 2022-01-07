; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_closem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.misc.c_closem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOFILE = common dso_local global i32 0, align 4
@SHIN = common dso_local global i32 0, align 4
@SHOUT = common dso_local global i32 0, align 4
@SHDIAG = common dso_local global i32 0, align 4
@OLDSTD = common dso_local global i32 0, align 4
@FSHTTY = common dso_local global i32 0, align 4
@O_LARGEFILE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@_PATH_DEVNULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @closem() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @NOFILE, align 4
  store i32 %3, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load i32, i32* %1, align 4
  %10 = load i32, i32* @SHIN, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %8
  %13 = load i32, i32* %1, align 4
  %14 = load i32, i32* @SHOUT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* @SHDIAG, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @OLDSTD, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %1, align 4
  %26 = load i32, i32* @FSHTTY, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %1, align 4
  %30 = call i32 @xclose(i32 %29)
  br label %31

31:                                               ; preds = %28, %24, %20, %16, %12, %8
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %4

35:                                               ; preds = %4
  ret void
}

declare dso_local i32 @xclose(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
