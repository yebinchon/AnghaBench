; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_getrandom.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/compat/extr_getentropy_linux.c_getentropy_getrandom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@SYS_getrandom = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @getentropy_getrandom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getentropy_getrandom(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* @errno, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = icmp ugt i64 %9, 256
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %35

12:                                               ; preds = %2
  br label %13

13:                                               ; preds = %25, %12
  %14 = load i32, i32* @SYS_getrandom, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @syscall(i32 %14, i8* %15, i64 %16, i32 0)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* @errno, align 4
  %23 = load i32, i32* @EINTR, align 4
  %24 = icmp eq i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %13, label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* @errno, align 4
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %32, %11
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @syscall(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
