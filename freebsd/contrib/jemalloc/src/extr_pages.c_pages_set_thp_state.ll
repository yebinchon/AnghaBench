; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_pages_set_thp_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_pages.c_pages_set_thp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@opt_thp = common dso_local global i64 0, align 8
@thp_mode_default = common dso_local global i64 0, align 8
@init_system_thp_mode = common dso_local global i64 0, align 8
@thp_mode_not_supported = common dso_local global i64 0, align 8
@thp_mode_always = common dso_local global i64 0, align 8
@thp_mode_never = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pages_set_thp_state(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* @opt_thp, align 8
  %6 = load i64, i64* @thp_mode_default, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* @opt_thp, align 8
  %10 = load i64, i64* @init_system_thp_mode, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  br label %61

13:                                               ; preds = %8
  %14 = load i64, i64* @opt_thp, align 8
  %15 = load i64, i64* @thp_mode_not_supported, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i64, i64* @init_system_thp_mode, align 8
  %19 = load i64, i64* @thp_mode_not_supported, align 8
  %20 = icmp ne i64 %18, %19
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i1 [ false, %13 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* @opt_thp, align 8
  %26 = load i64, i64* @thp_mode_always, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load i64, i64* @init_system_thp_mode, align 8
  %30 = load i64, i64* @thp_mode_never, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i64, i64* @init_system_thp_mode, align 8
  %34 = load i64, i64* @thp_mode_default, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i8*, i8** %3, align 8
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @pages_huge_unaligned(i8* %38, i64 %39)
  br label %61

41:                                               ; preds = %28, %21
  %42 = load i64, i64* @opt_thp, align 8
  %43 = load i64, i64* @thp_mode_never, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i64, i64* @init_system_thp_mode, align 8
  %47 = load i64, i64* @thp_mode_default, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* @init_system_thp_mode, align 8
  %51 = load i64, i64* @thp_mode_always, align 8
  %52 = icmp eq i64 %50, %51
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i1 [ true, %45 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i32 @pages_nohuge_unaligned(i8* %57, i64 %58)
  br label %60

60:                                               ; preds = %53, %41
  br label %61

61:                                               ; preds = %12, %60, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pages_huge_unaligned(i8*, i64) #1

declare dso_local i32 @pages_nohuge_unaligned(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
