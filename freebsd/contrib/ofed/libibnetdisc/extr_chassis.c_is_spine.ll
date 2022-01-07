; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_is_spine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibnetdisc/extr_chassis.c_is_spine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @is_spine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_spine(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i64 @is_spine_9096(i32* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %1
  %7 = load i32*, i32** %2, align 8
  %8 = call i64 @is_spine_9288(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %30, label %10

10:                                               ; preds = %6
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @is_spine_2004(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %10
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @is_spine_2012(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %14
  %19 = load i32*, i32** %2, align 8
  %20 = call i64 @is_spine_4700(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %2, align 8
  %24 = call i64 @is_spine_4700x2(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32*, i32** %2, align 8
  %28 = call i64 @is_spine_4200(i32* %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %26, %22, %18, %14, %10, %6, %1
  %31 = phi i1 [ true, %22 ], [ true, %18 ], [ true, %14 ], [ true, %10 ], [ true, %6 ], [ true, %1 ], [ %29, %26 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

declare dso_local i64 @is_spine_9096(i32*) #1

declare dso_local i64 @is_spine_9288(i32*) #1

declare dso_local i64 @is_spine_2004(i32*) #1

declare dso_local i64 @is_spine_2012(i32*) #1

declare dso_local i64 @is_spine_4700(i32*) #1

declare dso_local i64 @is_spine_4700x2(i32*) #1

declare dso_local i64 @is_spine_4200(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
