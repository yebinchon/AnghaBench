; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_set_thread_locale.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/locale/extr_xlocale.c_set_thread_locale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlocale_refcounted = type { i32 }

@LC_GLOBAL_LOCALE = common dso_local global i64 0, align 8
@once_control = common dso_local global i32 0, align 4
@init_key = common dso_local global i32 0, align 4
@locale_info_key = common dso_local global i32 0, align 4
@fake_tls = common dso_local global i64 0, align 8
@thread_local_locale = common dso_local global i64 0, align 8
@__thread_locale = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @set_thread_locale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_thread_locale(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @LC_GLOBAL_LOCALE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i64 [ 0, %8 ], [ %10, %9 ]
  store i64 %12, i64* %3, align 8
  %13 = load i32, i32* @init_key, align 4
  %14 = call i32 @_once(i32* @once_control, i32 %13)
  %15 = load i64, i64* %3, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = icmp ne i8* null, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i64, i64* %3, align 8
  %20 = inttoptr i64 %19 to %struct.xlocale_refcounted*
  %21 = call i32 @xlocale_retain(%struct.xlocale_refcounted* %20)
  br label %22

22:                                               ; preds = %18, %11
  %23 = load i32, i32* @locale_info_key, align 4
  %24 = call i64 @pthread_getspecific(i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = icmp ne i8* null, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = inttoptr i64 %33 to %struct.xlocale_refcounted*
  %35 = call i32 @xlocale_release(%struct.xlocale_refcounted* %34)
  br label %36

36:                                               ; preds = %32, %28, %22
  %37 = load i64, i64* @fake_tls, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i64, i64* %3, align 8
  store i64 %40, i64* @thread_local_locale, align 8
  br label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @locale_info_key, align 4
  %43 = load i64, i64* %3, align 8
  %44 = call i32 @pthread_setspecific(i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i64, i64* %3, align 8
  store i64 %46, i64* @__thread_locale, align 8
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @__set_thread_rune_locale(i64 %47)
  ret void
}

declare dso_local i32 @_once(i32*, i32) #1

declare dso_local i32 @xlocale_retain(%struct.xlocale_refcounted*) #1

declare dso_local i64 @pthread_getspecific(i32) #1

declare dso_local i32 @xlocale_release(%struct.xlocale_refcounted*) #1

declare dso_local i32 @pthread_setspecific(i32, i64) #1

declare dso_local i32 @__set_thread_rune_locale(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
