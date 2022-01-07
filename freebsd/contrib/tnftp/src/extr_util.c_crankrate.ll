; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_crankrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_util.c_crankrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rate_get = common dso_local global i32 0, align 4
@rate_get_incr = common dso_local global i32 0, align 4
@rate_put = common dso_local global i32 0, align 4
@rate_put_incr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"crankrate invoked with unknown signal: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @crankrate(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %42 [
    i32 129, label %4
    i32 128, label %19
  ]

4:                                                ; preds = %1
  %5 = load i32, i32* @rate_get, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @rate_get_incr, align 4
  %9 = load i32, i32* @rate_get, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* @rate_get, align 4
  br label %11

11:                                               ; preds = %7, %4
  %12 = load i32, i32* @rate_put, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i32, i32* @rate_put_incr, align 4
  %16 = load i32, i32* @rate_put, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* @rate_put, align 4
  br label %18

18:                                               ; preds = %14, %11
  br label %45

19:                                               ; preds = %1
  %20 = load i32, i32* @rate_get, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load i32, i32* @rate_get, align 4
  %24 = load i32, i32* @rate_get_incr, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @rate_get_incr, align 4
  %28 = load i32, i32* @rate_get, align 4
  %29 = sub nsw i32 %28, %27
  store i32 %29, i32* @rate_get, align 4
  br label %30

30:                                               ; preds = %26, %22, %19
  %31 = load i32, i32* @rate_put, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* @rate_put, align 4
  %35 = load i32, i32* @rate_put_incr, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @rate_put_incr, align 4
  %39 = load i32, i32* @rate_put, align 4
  %40 = sub nsw i32 %39, %38
  store i32 %40, i32* @rate_put, align 4
  br label %41

41:                                               ; preds = %37, %33, %30
  br label %45

42:                                               ; preds = %1
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @err(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %41, %18
  ret void
}

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
