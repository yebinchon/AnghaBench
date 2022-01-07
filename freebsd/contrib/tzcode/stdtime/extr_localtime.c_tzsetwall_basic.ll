; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_tzsetwall_basic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tzcode/stdtime/extr_localtime.c_tzsetwall_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lcl_rwlock = common dso_local global i32 0, align 4
@lcl_is_set = common dso_local global i32 0, align 4
@lclptr = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tzsetwall_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tzsetwall_basic(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* @lcl_is_set, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %10
  %14 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  br label %15

15:                                               ; preds = %13, %10
  br label %33

16:                                               ; preds = %7
  %17 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  %18 = call i32 @_RWLOCK_WRLOCK(i32* @lcl_rwlock)
  store i32 -1, i32* @lcl_is_set, align 4
  %19 = load i32*, i32** @lclptr, align 8
  %20 = load i32, i32* @TRUE, align 4
  %21 = call i64 @tzload(i8* null, i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32*, i32** @lclptr, align 8
  %25 = call i32 @gmtload(i32* %24)
  br label %26

26:                                               ; preds = %23, %16
  %27 = call i32 (...) @settzname()
  %28 = call i32 @_RWLOCK_UNLOCK(i32* @lcl_rwlock)
  %29 = load i32, i32* %2, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = call i32 @_RWLOCK_RDLOCK(i32* @lcl_rwlock)
  br label %33

33:                                               ; preds = %15, %31, %26
  ret void
}

declare dso_local i32 @_RWLOCK_RDLOCK(i32*) #1

declare dso_local i32 @_RWLOCK_UNLOCK(i32*) #1

declare dso_local i32 @_RWLOCK_WRLOCK(i32*) #1

declare dso_local i64 @tzload(i8*, i32*, i32) #1

declare dso_local i32 @gmtload(i32*) #1

declare dso_local i32 @settzname(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
