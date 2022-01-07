; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_putchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_putchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NP = common dso_local global i32 0, align 4
@partab = common dso_local global i32* null, align 8
@OP = common dso_local global i64 0, align 8
@UB = common dso_local global i32 0, align 4
@outbuf = common dso_local global i8* null, align 8
@obufcnt = common dso_local global i64 0, align 8
@OBUFSIZ = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @putchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putchr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = trunc i32 %4 to i8
  store i8 %5, i8* %3, align 1
  %6 = load i32, i32* @NP, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %29, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** @partab, align 8
  %10 = load i8, i8* %3, align 1
  %11 = sext i8 %10 to i32
  %12 = and i32 %11, 127
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 128
  %17 = load i8, i8* %3, align 1
  %18 = sext i8 %17 to i32
  %19 = or i32 %18, %16
  %20 = trunc i32 %19 to i8
  store i8 %20, i8* %3, align 1
  %21 = load i64, i64* @OP, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %8
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = xor i32 %25, 128
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %3, align 1
  br label %28

28:                                               ; preds = %23, %8
  br label %29

29:                                               ; preds = %28, %1
  %30 = load i32, i32* @UB, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = load i8, i8* %3, align 1
  %34 = load i8*, i8** @outbuf, align 8
  %35 = load i64, i64* @obufcnt, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @obufcnt, align 8
  %37 = getelementptr inbounds i8, i8* %34, i64 %35
  store i8 %33, i8* %37, align 1
  %38 = load i64, i64* @obufcnt, align 8
  %39 = load i64, i64* @OBUFSIZ, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = call i32 (...) @oflush()
  br label %43

43:                                               ; preds = %41, %32
  br label %47

44:                                               ; preds = %29
  %45 = load i32, i32* @STDOUT_FILENO, align 4
  %46 = call i32 @write(i32 %45, i8* %3, i32 1)
  br label %47

47:                                               ; preds = %44, %43
  ret void
}

declare dso_local i32 @oflush(...) #1

declare dso_local i32 @write(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
