; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_xgetc.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/common/extr_cons.c_xgetc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RBX_NOINTR = common dso_local global i32 0, align 4
@ioctrl = common dso_local global i32 0, align 4
@IO_KEYBOARD = common dso_local global i32 0, align 4
@IO_SERIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xgetc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @RBX_NOINTR, align 4
  %5 = call i64 @OPT_CHECK(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %45, %8
  %10 = load i32, i32* @ioctrl, align 4
  %11 = load i32, i32* @IO_KEYBOARD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = call i32 @getc(i32 1)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %23

21:                                               ; preds = %17
  %22 = call i32 @getc(i32 0)
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 1, %20 ], [ %22, %21 ]
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %14, %9
  %26 = load i32, i32* @ioctrl, align 4
  %27 = load i32, i32* @IO_SERIAL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %25
  %31 = call i64 (...) @sio_ischar()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %39

37:                                               ; preds = %33
  %38 = call i32 (...) @sio_getc()
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi i32 [ 1, %36 ], [ %38, %37 ]
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %30, %25
  %42 = load i32, i32* %3, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %46

45:                                               ; preds = %41
  br label %9

46:                                               ; preds = %44, %39, %23, %7
  %47 = load i32, i32* %2, align 4
  ret i32 %47
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
