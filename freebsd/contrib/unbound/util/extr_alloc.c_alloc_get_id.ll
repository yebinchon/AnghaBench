; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_get_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_get_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, i32, i64, i32, i32 (i32)* }

@.str = private unnamed_addr constant [47 x i8] c"rrset alloc: out of 64bit ids. Clearing cache.\00", align 1
@THRNUM_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @alloc_get_id(%struct.alloc_cache* %0) #0 {
  %2 = alloca %struct.alloc_cache*, align 8
  %3 = alloca i32, align 4
  store %struct.alloc_cache* %0, %struct.alloc_cache** %2, align 8
  %4 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %5 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %10 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %8, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %1
  %14 = call i32 @log_warn(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %16 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %15, i32 0, i32 4
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = call i32 @fptr_whitelist_alloc_cleanup(i32 (i32)* %17)
  %19 = call i32 @fptr_ok(i32 %18)
  %20 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %21 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %20, i32 0, i32 4
  %22 = load i32 (i32)*, i32 (i32)** %21, align 8
  %23 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %24 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 %22(i32 %25)
  %27 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %28 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %32 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @THRNUM_SHIFT, align 4
  %34 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %35 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %39 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.alloc_cache*, %struct.alloc_cache** %2, align 8
  %43 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  store i32 %44, i32* %3, align 4
  br label %46

46:                                               ; preds = %13, %1
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @fptr_whitelist_alloc_cleanup(i32 (i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
