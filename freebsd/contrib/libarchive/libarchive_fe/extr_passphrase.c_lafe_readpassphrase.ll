; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive_fe/extr_passphrase.c_lafe_readpassphrase.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive_fe/extr_passphrase.c_lafe_readpassphrase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPP_ECHO_OFF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't read passphrase\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @lafe_readpassphrase(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* @RPP_ECHO_OFF, align 4
  %12 = call i8* @readpassphrase(i8* %8, i8* %9, i64 %10, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* @errno, align 4
  switch i32 %16, label %18 [
    i32 128, label %17
  ]

17:                                               ; preds = %15
  br label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @lafe_errc(i32 1, i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %17
  br label %22

22:                                               ; preds = %21, %3
  %23 = load i8*, i8** %7, align 8
  ret i8* %23
}

declare dso_local i8* @readpassphrase(i8*, i8*, i64, i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
