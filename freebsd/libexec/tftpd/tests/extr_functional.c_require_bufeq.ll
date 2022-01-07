; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/tests/extr_functional.c_require_bufeq.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/tests/extr_functional.c_require_bufeq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"Expected %zd bytes but got %zd\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Expected %#hhx at position %zd; got %hhx instead\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i64)* @require_bufeq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @require_bufeq(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %6, align 8
  %11 = trunc i64 %10 to i8
  %12 = load i64, i64* %8, align 8
  %13 = trunc i64 %12 to i8
  %14 = load i64, i64* %6, align 8
  %15 = trunc i64 %14 to i8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 (i8, i8, i8*, i8, i64, ...) @ATF_REQUIRE_EQ_MSG(i8 signext %11, i8 signext %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8 signext %15, i64 %16)
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %42, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = load i8*, i8** %5, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i8*, i8** %5, align 8
  %32 = load i64, i64* %9, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load i64, i64* %9, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = call i32 (i8, i8, i8*, i8, i64, ...) @ATF_REQUIRE_EQ_MSG(i8 signext %26, i8 signext %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8 signext %34, i64 %35, i32 %40)
  br label %42

42:                                               ; preds = %22
  %43 = load i64, i64* %9, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %9, align 8
  br label %18

45:                                               ; preds = %18
  ret void
}

declare dso_local i32 @ATF_REQUIRE_EQ_MSG(i8 signext, i8 signext, i8*, i8 signext, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
