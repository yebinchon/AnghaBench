; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_random.c_arc4random_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_random.c_arc4random_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc4_count = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @arc4random_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc4random_buf(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = call i32 (...) @_ARC4_LOCK()
  %9 = call i32 (...) @arc4_stir_if_needed()
  br label %10

10:                                               ; preds = %20, %2
  %11 = load i64, i64* %4, align 8
  %12 = add i64 %11, -1
  store i64 %12, i64* %4, align 8
  %13 = icmp ne i64 %11, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i64, i64* @arc4_count, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* @arc4_count, align 8
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 (...) @arc4_stir()
  br label %20

20:                                               ; preds = %18, %14
  %21 = call i32 (...) @arc4_getbyte()
  %22 = load i32*, i32** %5, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  br label %10

25:                                               ; preds = %10
  %26 = call i32 (...) @_ARC4_UNLOCK()
  ret void
}

declare dso_local i32 @_ARC4_LOCK(...) #1

declare dso_local i32 @arc4_stir_if_needed(...) #1

declare dso_local i32 @arc4_stir(...) #1

declare dso_local i32 @arc4_getbyte(...) #1

declare dso_local i32 @_ARC4_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
