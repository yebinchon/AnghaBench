; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_caching_strip.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.str.c_caching_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@caching_strip.buf = internal global i8* null, align 8
@caching_strip.buf_size = internal global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @caching_strip(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* null, i8** %2, align 8
  br label %29

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = add nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @caching_strip.buf_size, align 8
  %14 = load i64, i64* %4, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load i8*, i8** @caching_strip.buf, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i8* @xrealloc(i8* %17, i64 %18)
  store i8* %19, i8** @caching_strip.buf, align 8
  %20 = load i64, i64* %4, align 8
  store i64 %20, i64* @caching_strip.buf_size, align 8
  br label %21

21:                                               ; preds = %16, %8
  %22 = load i8*, i8** @caching_strip.buf, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @memcpy(i8* %22, i8* %23, i64 %24)
  %26 = load i8*, i8** @caching_strip.buf, align 8
  %27 = call i32 @strip(i8* %26)
  %28 = load i8*, i8** @caching_strip.buf, align 8
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %21, %7
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xrealloc(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @strip(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
