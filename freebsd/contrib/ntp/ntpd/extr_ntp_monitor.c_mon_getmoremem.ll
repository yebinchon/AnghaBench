; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_monitor.c_mon_getmoremem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_monitor.c_mon_getmoremem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mon_mem_increments = common dso_local global i64 0, align 8
@mru_initalloc = common dso_local global i64 0, align 8
@mru_incalloc = common dso_local global i64 0, align 8
@mru_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mon_getmoremem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mon_getmoremem() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i64, i64* @mon_mem_increments, align 8
  %4 = icmp eq i64 0, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i64, i64* @mru_initalloc, align 8
  br label %9

7:                                                ; preds = %0
  %8 = load i64, i64* @mru_incalloc, align 8
  br label %9

9:                                                ; preds = %7, %5
  %10 = phi i64 [ %6, %5 ], [ %8, %7 ]
  store i64 %10, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %37

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = call i32* @eallocarray(i64 %14, i32 4)
  store i32* %15, i32** %1, align 8
  %16 = load i64, i64* %2, align 8
  %17 = load i32, i32* @mru_alloc, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @mru_alloc, align 4
  %21 = load i64, i64* %2, align 8
  %22 = load i32*, i32** %1, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 %21
  store i32* %23, i32** %1, align 8
  br label %24

24:                                               ; preds = %31, %13
  %25 = load i64, i64* %2, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %1, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 -1
  store i32* %29, i32** %1, align 8
  %30 = call i32 @mon_free_entry(i32* %29)
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %2, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, i64* %2, align 8
  br label %24

34:                                               ; preds = %24
  %35 = load i64, i64* @mon_mem_increments, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* @mon_mem_increments, align 8
  br label %37

37:                                               ; preds = %34, %9
  ret void
}

declare dso_local i32* @eallocarray(i64, i32) #1

declare dso_local i32 @mon_free_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
