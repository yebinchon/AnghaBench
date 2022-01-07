; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_reg_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_alloc_reg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i64, i64, %struct.regional* }
%struct.regional = type { i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @alloc_reg_release(%struct.alloc_cache* %0, %struct.regional* %1) #0 {
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca %struct.regional*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  store %struct.regional* %1, %struct.regional** %4, align 8
  %5 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %6 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %9 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp sge i64 %7, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.regional*, %struct.regional** %4, align 8
  %14 = call i32 @regional_destroy(%struct.regional* %13)
  br label %41

15:                                               ; preds = %2
  %16 = load %struct.regional*, %struct.regional** %4, align 8
  %17 = icmp ne %struct.regional* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %41

19:                                               ; preds = %15
  %20 = load %struct.regional*, %struct.regional** %4, align 8
  %21 = call i32 @regional_free_all(%struct.regional* %20)
  %22 = load %struct.regional*, %struct.regional** %4, align 8
  %23 = getelementptr inbounds %struct.regional, %struct.regional* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @log_assert(i32 %26)
  %28 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %29 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %28, i32 0, i32 2
  %30 = load %struct.regional*, %struct.regional** %29, align 8
  %31 = bitcast %struct.regional* %30 to i8*
  %32 = load %struct.regional*, %struct.regional** %4, align 8
  %33 = getelementptr inbounds %struct.regional, %struct.regional* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.regional*, %struct.regional** %4, align 8
  %35 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %36 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %35, i32 0, i32 2
  store %struct.regional* %34, %struct.regional** %36, align 8
  %37 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %38 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  br label %41

41:                                               ; preds = %19, %18, %12
  ret void
}

declare dso_local i32 @regional_destroy(%struct.regional*) #1

declare dso_local i32 @regional_free_all(%struct.regional*) #1

declare dso_local i32 @log_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
