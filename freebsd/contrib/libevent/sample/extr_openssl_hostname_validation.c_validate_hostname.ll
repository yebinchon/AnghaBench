; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_openssl_hostname_validation.c_validate_hostname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_openssl_hostname_validation.c_validate_hostname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Error = common dso_local global i64 0, align 8
@NoSANPresent = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @validate_hostname(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %9, %2
  %13 = load i64, i64* @Error, align 8
  store i64 %13, i64* %3, align 8
  br label %27

14:                                               ; preds = %9
  %15 = load i8*, i8** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @matches_subject_alternative_name(i8* %15, i32* %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @NoSANPresent, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load i8*, i8** %4, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @matches_common_name(i8* %22, i32* %23)
  store i64 %24, i64* %6, align 8
  br label %25

25:                                               ; preds = %21, %14
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %25, %12
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i64 @matches_subject_alternative_name(i8*, i32*) #1

declare dso_local i64 @matches_common_name(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
