; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_clear_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_compat.c_linux_clear_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @linux_clear_user(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to i32*
  store i32* %9, i32** %6, align 8
  %10 = load i64, i64* %5, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32*, i32** %6, align 8
  %13 = ptrtoint i32* %12 to i64
  %14 = and i64 %13, 7
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i64, i64* %7, align 8
  %18 = icmp ugt i64 %17, 7
  br label %19

19:                                               ; preds = %16, %11
  %20 = phi i1 [ false, %11 ], [ %18, %16 ]
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load i32*, i32** %6, align 8
  %23 = call i64 @subyte(i32* %22, i32 0)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i64, i64* %5, align 8
  store i64 %26, i64* %3, align 8
  br label %63

27:                                               ; preds = %21
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = add i64 %30, -1
  store i64 %31, i64* %7, align 8
  br label %11

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %42, %32
  %34 = load i64, i64* %7, align 8
  %35 = icmp ugt i64 %34, 7
  br i1 %35, label %36, label %47

36:                                               ; preds = %33
  %37 = load i32*, i32** %6, align 8
  %38 = call i64 @suword64(i32* %37, i32 0)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %5, align 8
  store i64 %41, i64* %3, align 8
  br label %63

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32* %44, i32** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = sub i64 %45, 8
  store i64 %46, i64* %7, align 8
  br label %33

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %57, %47
  %49 = load i64, i64* %7, align 8
  %50 = icmp ugt i64 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = call i64 @subyte(i32* %52, i32 0)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %3, align 8
  br label %63

57:                                               ; preds = %51
  %58 = load i32*, i32** %6, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %7, align 8
  br label %48

62:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  br label %63

63:                                               ; preds = %62, %55, %40, %25
  %64 = load i64, i64* %3, align 8
  ret i64 %64
}

declare dso_local i64 @subyte(i32*, i32) #1

declare dso_local i64 @suword64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
