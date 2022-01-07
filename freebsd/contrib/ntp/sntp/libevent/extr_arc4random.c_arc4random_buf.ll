; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_arc4random.c_arc4random_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_arc4random.c_arc4random_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc4_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc4random_buf(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  store i8* %6, i8** %5, align 8
  %7 = call i32 (...) @ARC4_LOCK_()
  %8 = call i32 (...) @arc4_stir_if_needed()
  br label %9

9:                                                ; preds = %19, %2
  %10 = load i64, i64* %4, align 8
  %11 = add i64 %10, -1
  store i64 %11, i64* %4, align 8
  %12 = icmp ne i64 %10, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %9
  %14 = load i64, i64* @arc4_count, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* @arc4_count, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @arc4_stir()
  br label %19

19:                                               ; preds = %17, %13
  %20 = call zeroext i8 (...) @arc4_getbyte()
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 %20, i8* %23, align 1
  br label %9

24:                                               ; preds = %9
  %25 = call i32 (...) @ARC4_UNLOCK_()
  ret void
}

declare dso_local i32 @ARC4_LOCK_(...) #1

declare dso_local i32 @arc4_stir_if_needed(...) #1

declare dso_local i32 @arc4_stir(...) #1

declare dso_local zeroext i8 @arc4_getbyte(...) #1

declare dso_local i32 @ARC4_UNLOCK_(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
