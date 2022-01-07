; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_crcinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_xmodem.c_crcinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crcinit.crctab_inited = internal global i32 0, align 4
@crctab = common dso_local global i32* null, align 8
@CRC16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @crcinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @crcinit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @crcinit.crctab_inited, align 4
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %42

7:                                                ; preds = %0
  %8 = call i32* @xmalloc(i32 512)
  store i32* %8, i32** @crctab, align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %38, %7
  %10 = load i32, i32* %1, align 4
  %11 = icmp sle i32 %10, 255
  br i1 %11, label %12, label %41

12:                                               ; preds = %9
  %13 = load i32, i32* %1, align 4
  %14 = shl i32 %13, 8
  store i32 %14, i32* %3, align 4
  store i32 0, i32* %2, align 4
  br label %15

15:                                               ; preds = %29, %12
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 8
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* %3, align 4
  %20 = shl i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 65536
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i32, i32* @CRC16, align 4
  %26 = load i32, i32* %3, align 4
  %27 = xor i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %2, align 4
  br label %15

32:                                               ; preds = %15
  %33 = load i32, i32* %3, align 4
  %34 = load i32*, i32** @crctab, align 8
  %35 = load i32, i32* %1, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %1, align 4
  br label %9

41:                                               ; preds = %9
  store i32 1, i32* @crcinit.crctab_inited, align 4
  br label %42

42:                                               ; preds = %41, %6
  ret void
}

declare dso_local i32* @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
