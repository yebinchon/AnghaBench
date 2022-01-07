; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_sort_timers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libbegemot/extr_rpoll.c_sort_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@tims_used = common dso_local global i32 0, align 4
@tfd_alloc = common dso_local global i32 0, align 4
@tfd = common dso_local global i32* null, align 8
@tims_alloc = common dso_local global i64 0, align 8
@tims = common dso_local global %struct.TYPE_2__* null, align 8
@tfd_used = common dso_local global i32 0, align 4
@tim_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @sort_timers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sort_timers() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @tims_used, align 4
  %4 = load i32, i32* @tfd_alloc, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = load i32, i32* @tims_used, align 4
  store i32 %7, i32* @tfd_alloc, align 4
  %8 = load i32*, i32** @tfd, align 8
  %9 = load i32, i32* @tfd_alloc, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  %12 = trunc i64 %11 to i32
  %13 = call i32* @_xrealloc(i32* %8, i32 %12)
  store i32* %13, i32** @tfd, align 8
  br label %14

14:                                               ; preds = %6, %0
  %15 = load i32*, i32** @tfd, align 8
  store i32* %15, i32** %1, align 8
  store i64 0, i64* %2, align 8
  br label %16

16:                                               ; preds = %33, %14
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @tims_alloc, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %16
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tims, align 8
  %22 = load i64, i64* %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i64, i64* %2, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %1, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %1, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %27, %20
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %2, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %2, align 8
  br label %16

36:                                               ; preds = %16
  %37 = load i32*, i32** %1, align 8
  %38 = load i32*, i32** @tfd, align 8
  %39 = ptrtoint i32* %37 to i64
  %40 = ptrtoint i32* %38 to i64
  %41 = sub i64 %39, %40
  %42 = sdiv exact i64 %41, 4
  %43 = load i32, i32* @tims_used, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp eq i64 %42, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  %48 = load i32, i32* @tims_used, align 4
  store i32 %48, i32* @tfd_used, align 4
  %49 = load i32, i32* @tfd_used, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %56

51:                                               ; preds = %36
  %52 = load i32*, i32** @tfd, align 8
  %53 = load i32, i32* @tfd_used, align 4
  %54 = load i32, i32* @tim_cmp, align 4
  %55 = call i32 @qsort(i32* %52, i32 %53, i32 4, i32 %54)
  br label %56

56:                                               ; preds = %51, %36
  ret void
}

declare dso_local i32* @_xrealloc(i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
