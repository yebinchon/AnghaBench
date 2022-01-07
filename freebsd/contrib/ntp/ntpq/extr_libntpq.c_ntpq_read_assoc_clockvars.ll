; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_read_assoc_clockvars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpq/extr_libntpq.c_ntpq_read_assoc_clockvars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ntpq_varlist = common dso_local global i32 0, align 4
@CTL_OP_READCLOCK = common dso_local global i32 0, align 4
@numhosts = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ntpq_read_assoc_clockvars(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @ntpq_varlist, align 4
  %13 = load i32, i32* @CTL_OP_READCLOCK, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ntpq_doquerylist(i32 %12, i32 %13, i32 %14, i32 0, i32* %11, i64* %10, i8** %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %43

19:                                               ; preds = %3
  %20 = load i64, i64* %10, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load i32, i32* @numhosts, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %43

26:                                               ; preds = %22
  br label %40

27:                                               ; preds = %19
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = icmp ugt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  br label %35

35:                                               ; preds = %32, %27
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @memcpy(i8* %36, i8* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %26
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %25, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @ntpq_doquerylist(i32, i32, i32, i32, i32*, i64*, i8**) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
