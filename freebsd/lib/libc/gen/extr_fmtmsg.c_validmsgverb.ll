; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_validmsgverb.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fmtmsg.c_validmsgverb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [32 x i8] c"label\00severity\00text\00action\00tag\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @validmsgverb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validmsgverb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %42, %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i8* @nextcomp(i8* %10)
  store i8* %11, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %9
  %14 = load i32, i32* %8, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %8, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %5, align 8
  %18 = load i8*, i8** %3, align 8
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %37, %13
  %20 = load i8*, i8** %7, align 8
  %21 = call i64 @strlen(i8* %20)
  store i64 %21, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %42

23:                                               ; preds = %19
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @memcmp(i8* %28, i8* %29, i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %33, %27, %23
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  %40 = load i8*, i8** %7, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 %39
  store i8* %41, i8** %7, align 8
  br label %19

42:                                               ; preds = %19
  br label %9

43:                                               ; preds = %9
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  ret i32 %47
}

declare dso_local i8* @nextcomp(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
