; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_twiddle.c_twiddle.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_twiddle.c_twiddle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@twiddle.callercnt = internal global i32 0, align 4
@twiddle.globalcnt = internal global i32 0, align 4
@twiddle.pos = internal global i32 0, align 4
@globaldiv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"|/-\\\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twiddle(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @twiddle.callercnt, align 4
  %4 = add nsw i32 %3, 1
  store i32 %4, i32* @twiddle.callercnt, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load i32, i32* @twiddle.callercnt, align 4
  %9 = load i32, i32* %2, align 4
  %10 = srem i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %33

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @twiddle.globalcnt, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @twiddle.globalcnt, align 4
  %16 = load i32, i32* @globaldiv, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load i32, i32* @twiddle.globalcnt, align 4
  %20 = load i32, i32* @globaldiv, align 4
  %21 = srem i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %33

24:                                               ; preds = %18, %13
  %25 = load i32, i32* @twiddle.pos, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @twiddle.pos, align 4
  %27 = and i32 %25, 3
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x i8], [5 x i8]* @.str, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = call i32 @putchar(i8 signext %30)
  %32 = call i32 @putchar(i8 signext 8)
  br label %33

33:                                               ; preds = %24, %23, %12
  ret void
}

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
