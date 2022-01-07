; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_random.c_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_type = common dso_local global i64 0, align 8
@TYPE_0 = common dso_local global i64 0, align 8
@state = common dso_local global i32* null, align 8
@fptr = common dso_local global i32* null, align 8
@rptr = common dso_local global i32* null, align 8
@end_ptr = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @random() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i64, i64* @rand_type, align 8
  %5 = load i64, i64* @TYPE_0, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32*, i32** @state, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @good_rand(i32 %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32*, i32** @state, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  store i32 %12, i32* %14, align 4
  br label %45

15:                                               ; preds = %0
  %16 = load i32*, i32** @fptr, align 8
  store i32* %16, i32** %2, align 8
  %17 = load i32*, i32** @rptr, align 8
  store i32* %17, i32** %3, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %2, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, %19
  store i32 %22, i32* %20, align 4
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %1, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %2, align 8
  %28 = load i32*, i32** @end_ptr, align 8
  %29 = icmp uge i32* %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load i32*, i32** @state, align 8
  store i32* %31, i32** %2, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %3, align 8
  br label %42

34:                                               ; preds = %15
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** @end_ptr, align 8
  %38 = icmp uge i32* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32*, i32** @state, align 8
  store i32* %40, i32** %3, align 8
  br label %41

41:                                               ; preds = %39, %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i32*, i32** %2, align 8
  store i32* %43, i32** @fptr, align 8
  %44 = load i32*, i32** %3, align 8
  store i32* %44, i32** @rptr, align 8
  br label %45

45:                                               ; preds = %42, %7
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  ret i64 %47
}

declare dso_local i32 @good_rand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
