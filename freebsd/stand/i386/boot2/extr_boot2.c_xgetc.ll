; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/boot2/extr_boot2.c_xgetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/boot2/extr_boot2.c_xgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBX_NOINTR = common dso_local global i32 0, align 4
@DO_KBD = common dso_local global i64 0, align 8
@DO_SIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xgetc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgetc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @RBX_NOINTR, align 4
  %5 = call i64 @OPT_CHECK(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %41, %8
  %10 = load i64, i64* @DO_KBD, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %9
  %13 = call i32 @getc(i32 1)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %21

19:                                               ; preds = %15
  %20 = call i32 @getc(i32 0)
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 1, %18 ], [ %20, %19 ]
  store i32 %22, i32* %2, align 4
  br label %42

23:                                               ; preds = %12, %9
  %24 = load i64, i64* @DO_SIO, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = call i64 (...) @sio_ischar()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %35

33:                                               ; preds = %29
  %34 = call i32 (...) @sio_getc()
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 1, %32 ], [ %34, %33 ]
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %26, %23
  %38 = load i32, i32* %3, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %42

41:                                               ; preds = %37
  br label %9

42:                                               ; preds = %40, %35, %21, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @OPT_CHECK(i32) #1

declare dso_local i32 @getc(i32) #1

declare dso_local i64 @sio_ischar(...) #1

declare dso_local i32 @sio_getc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
