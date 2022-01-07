; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_prealloc_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_prealloc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, i32* }

@ALLOC_SPECIAL_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"prealloc: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alloc_cache*)* @prealloc_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prealloc_setup(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.alloc_cache*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.alloc_cache* %0, %struct.alloc_cache** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ALLOC_SPECIAL_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %5
  %10 = call i64 @malloc(i32 4)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = call i32 @log_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %33

15:                                               ; preds = %9
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @alloc_setup_special(i32* %16)
  %18 = load i32*, i32** %3, align 8
  %19 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %20 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @alloc_set_special_next(i32* %18, i32* %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %25 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  %26 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %27 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %15
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %13, %5
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @alloc_setup_special(i32*) #1

declare dso_local i32 @alloc_set_special_next(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
