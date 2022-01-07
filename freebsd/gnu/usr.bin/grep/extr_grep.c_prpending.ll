; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prpending.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prpending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lastout = common dso_local global i8* null, align 8
@bufbeg = common dso_local global i8* null, align 8
@pending = common dso_local global i64 0, align 8
@eolbyte = common dso_local global i32 0, align 4
@outleft = common dso_local global i64 0, align 8
@out_invert = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @prpending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prpending(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** @lastout, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i8*, i8** @bufbeg, align 8
  store i8* %8, i8** @lastout, align 8
  br label %9

9:                                                ; preds = %7, %1
  br label %10

10:                                               ; preds = %55, %9
  %11 = load i64, i64* @pending, align 8
  %12 = icmp sgt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i8*, i8** @lastout, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = icmp ult i8* %14, %15
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %56

19:                                               ; preds = %17
  %20 = load i8*, i8** @lastout, align 8
  %21 = load i32, i32* @eolbyte, align 4
  %22 = load i8*, i8** %2, align 8
  %23 = load i8*, i8** @lastout, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = trunc i64 %26 to i32
  %28 = call i8* @memchr(i8* %20, i32 %21, i32 %27)
  store i8* %28, i8** %3, align 8
  %29 = load i64, i64* @pending, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* @pending, align 8
  %31 = load i64, i64* @outleft, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %19
  %34 = load i8*, i8** @lastout, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** @lastout, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i64 @execute(i8* %34, i32 %40, i64* %4, i32 0)
  %42 = icmp eq i64 %41, -1
  %43 = zext i1 %42 to i32
  %44 = load i32, i32* @out_invert, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = icmp eq i32 %43, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %33, %19
  %50 = load i8*, i8** @lastout, align 8
  %51 = load i8*, i8** %3, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = call i32 @prline(i8* %50, i8* %52, i8 signext 45)
  br label %55

54:                                               ; preds = %33
  store i64 0, i64* @pending, align 8
  br label %55

55:                                               ; preds = %54, %49
  br label %10

56:                                               ; preds = %17
  ret void
}

declare dso_local i8* @memchr(i8*, i32, i32) #1

declare dso_local i64 @execute(i8*, i32, i64*, i32) #1

declare dso_local i32 @prline(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
