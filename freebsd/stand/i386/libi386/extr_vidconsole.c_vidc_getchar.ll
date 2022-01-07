; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_getchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_vidconsole.c_vidc_getchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64 }

@KEYBUFSZ = common dso_local global i32 0, align 4
@keybuf = common dso_local global i32* null, align 8
@v86 = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vidc_getchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidc_getchar() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %27, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @KEYBUFSZ, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %4
  %9 = load i32*, i32** @keybuf, align 8
  %10 = load i32, i32* %2, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %8
  %16 = load i32*, i32** @keybuf, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %3, align 4
  %21 = load i32*, i32** @keybuf, align 8
  %22 = load i32, i32* %2, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 0, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  store i32 %25, i32* %1, align 4
  br label %66

26:                                               ; preds = %8
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %2, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %2, align 4
  br label %4

30:                                               ; preds = %4
  %31 = call i64 (...) @vidc_ischar()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %65

33:                                               ; preds = %30
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 2), align 8
  store i32 22, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 0), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %34 = call i32 (...) @v86int()
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %36 = and i32 %35, 255
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %1, align 4
  br label %66

41:                                               ; preds = %33
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @v86, i32 0, i32 1), align 4
  %43 = and i32 %42, 65280
  switch i32 %43, label %64 [
    i32 18432, label %44
    i32 19200, label %49
    i32 19712, label %54
    i32 20480, label %59
  ]

44:                                               ; preds = %41
  %45 = load i32*, i32** @keybuf, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  store i32 91, i32* %46, align 4
  %47 = load i32*, i32** @keybuf, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 65, i32* %48, align 4
  store i32 27, i32* %1, align 4
  br label %66

49:                                               ; preds = %41
  %50 = load i32*, i32** @keybuf, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32 91, i32* %51, align 4
  %52 = load i32*, i32** @keybuf, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 68, i32* %53, align 4
  store i32 27, i32* %1, align 4
  br label %66

54:                                               ; preds = %41
  %55 = load i32*, i32** @keybuf, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  store i32 91, i32* %56, align 4
  %57 = load i32*, i32** @keybuf, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 67, i32* %58, align 4
  store i32 27, i32* %1, align 4
  br label %66

59:                                               ; preds = %41
  %60 = load i32*, i32** @keybuf, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32 91, i32* %61, align 4
  %62 = load i32*, i32** @keybuf, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 66, i32* %63, align 4
  store i32 27, i32* %1, align 4
  br label %66

64:                                               ; preds = %41
  store i32 -1, i32* %1, align 4
  br label %66

65:                                               ; preds = %30
  store i32 -1, i32* %1, align 4
  br label %66

66:                                               ; preds = %65, %64, %59, %54, %49, %44, %38, %15
  %67 = load i32, i32* %1, align 4
  ret i32 %67
}

declare dso_local i64 @vidc_ischar(...) #1

declare dso_local i32 @v86int(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
