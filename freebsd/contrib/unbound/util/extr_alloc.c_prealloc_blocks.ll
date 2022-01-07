; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_prealloc_blocks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_alloc.c_prealloc_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alloc_cache = type { i32, %struct.regional* }
%struct.regional = type { i8* }

@ALLOC_REG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"prealloc blocks: out of memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alloc_cache*, i64)* @prealloc_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prealloc_blocks(%struct.alloc_cache* %0, i64 %1) #0 {
  %3 = alloca %struct.alloc_cache*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.regional*, align 8
  store %struct.alloc_cache* %0, %struct.alloc_cache** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %7
  %12 = load i32, i32* @ALLOC_REG_SIZE, align 4
  %13 = call %struct.regional* @regional_create_custom(i32 %12)
  store %struct.regional* %13, %struct.regional** %6, align 8
  %14 = load %struct.regional*, %struct.regional** %6, align 8
  %15 = icmp ne %struct.regional* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %11
  %17 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %35

18:                                               ; preds = %11
  %19 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %20 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %19, i32 0, i32 1
  %21 = load %struct.regional*, %struct.regional** %20, align 8
  %22 = bitcast %struct.regional* %21 to i8*
  %23 = load %struct.regional*, %struct.regional** %6, align 8
  %24 = getelementptr inbounds %struct.regional, %struct.regional* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.regional*, %struct.regional** %6, align 8
  %26 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %27 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %26, i32 0, i32 1
  store %struct.regional* %25, %struct.regional** %27, align 8
  %28 = load %struct.alloc_cache*, %struct.alloc_cache** %3, align 8
  %29 = getelementptr inbounds %struct.alloc_cache, %struct.alloc_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %32

32:                                               ; preds = %18
  %33 = load i64, i64* %5, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %5, align 8
  br label %7

35:                                               ; preds = %16, %7
  ret void
}

declare dso_local %struct.regional* @regional_create_custom(i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
