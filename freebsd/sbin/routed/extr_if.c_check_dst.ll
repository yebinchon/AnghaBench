; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_check_dst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_if.c_check_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IN_CLASSA_NSHIFT = common dso_local global i32 0, align 4
@IN_LOOPBACKNET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_dst(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i32 @ntohl(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @IN_CLASSA(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %37

13:                                               ; preds = %9
  %14 = load i32, i32* @IN_CLASSA_NSHIFT, align 4
  %15 = load i32, i32* %3, align 4
  %16 = ashr i32 %15, %14
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @IN_LOOPBACKNET, align 4
  %22 = icmp ne i32 %20, %21
  br label %23

23:                                               ; preds = %19, %13
  %24 = phi i1 [ false, %13 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %2, align 4
  br label %37

26:                                               ; preds = %1
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @IN_CLASSB(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i64 @IN_CLASSC(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i1 [ true, %26 ], [ %33, %30 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %23, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @IN_CLASSA(i32) #1

declare dso_local i64 @IN_CLASSB(i32) #1

declare dso_local i64 @IN_CLASSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
