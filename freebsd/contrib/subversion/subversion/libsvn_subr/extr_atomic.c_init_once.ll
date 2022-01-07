; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_atomic.c_init_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_atomic.c_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@APR_USEC_PER_SEC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32 (i32*)*, i32*)* @init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_once(i32* %0, i32 (i32*)* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32 (i32*)*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 (i32*)* %1, i32 (i32*)** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @svn_atomic_cas(i32* %11, i32 129, i32 128)
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %27, %3
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %37 [
    i32 128, label %15
    i32 129, label %27
    i32 130, label %33
    i32 131, label %35
  ]

15:                                               ; preds = %13
  %16 = load i32 (i32*)*, i32 (i32*)** %6, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 %16(i32* %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 131, i32 130
  store i32 %22, i32* %10, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @svn_atomic_cas(i32* %23, i32 %24, i32 129)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %39

27:                                               ; preds = %13
  %28 = load i32, i32* @APR_USEC_PER_SEC, align 4
  %29 = sdiv i32 %28, 1000
  %30 = call i32 @apr_sleep(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @svn_atomic_cas(i32* %31, i32 128, i32 128)
  store i32 %32, i32* %8, align 4
  br label %13

33:                                               ; preds = %13
  %34 = load i32, i32* @FALSE, align 4
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %13
  %36 = load i32, i32* @TRUE, align 4
  store i32 %36, i32* %4, align 4
  br label %39

37:                                               ; preds = %13
  %38 = call i32 (...) @abort() #3
  unreachable

39:                                               ; preds = %35, %33, %15
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @svn_atomic_cas(i32*, i32, i32) #1

declare dso_local i32 @apr_sleep(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
