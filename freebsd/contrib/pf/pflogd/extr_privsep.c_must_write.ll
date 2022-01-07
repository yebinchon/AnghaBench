; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_must_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/pflogd/extr_privsep.c_must_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @must_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_write(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %7, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %41, %33, %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %9, align 8
  %22 = sub i64 %20, %21
  %23 = call i64 @write(i32 %16, i8* %19, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  switch i64 %24, label %37 [
    i64 -1, label %25
    i64 0, label %35
  ]

25:                                               ; preds = %15
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @EINTR, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @errno, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  br label %11

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %15, %34
  %36 = call i32 @_exit(i32 0) #3
  unreachable

37:                                               ; preds = %15
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %37
  br label %11

42:                                               ; preds = %11
  ret void
}

declare dso_local i64 @write(i32, i8*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @_exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
