; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_srandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_srandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state = common dso_local global i32* null, align 8
@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@NSHUFF = common dso_local global i32 0, align 4
@rand_deg = common dso_local global i32 0, align 4
@rand_sep = common dso_local global i64 0, align 8
@fptr = common dso_local global i32* null, align 8
@rptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @srandom(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = load i32*, i32** @state, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  store i32 %5, i32* %7, align 4
  %8 = load i64, i64* @rand_type, align 8
  %9 = load i64, i64* @TYPE_0, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @NSHUFF, align 4
  store i32 %12, i32* %4, align 4
  br label %41

13:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @rand_deg, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %14
  %19 = load i32*, i32** @state, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @good_rand(i32 %24)
  %26 = load i32*, i32** @state, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %25, i32* %29, align 4
  br label %30

30:                                               ; preds = %18
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %14

33:                                               ; preds = %14
  %34 = load i32*, i32** @state, align 8
  %35 = load i64, i64* @rand_sep, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32* %36, i32** @fptr, align 8
  %37 = load i32*, i32** @state, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32* %38, i32** @rptr, align 8
  %39 = load i32, i32* @rand_deg, align 4
  %40 = mul nsw i32 10, %39
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %33, %11
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %48, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = call i32 (...) @random()
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %42

51:                                               ; preds = %42
  ret void
}

declare dso_local i32 @good_rand(i32) #1

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
