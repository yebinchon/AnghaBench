; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_ref_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_stabsread.c_ref_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_map = type { i8*, i32, %struct.symbol* }
%struct.symbol = type { i32 }

@ref_count = common dso_local global i32 0, align 4
@ref_chunk = common dso_local global i32 0, align 4
@MAX_CHUNK_REFS = common dso_local global i32 0, align 4
@ref_map = common dso_local global %struct.ref_map* null, align 8
@REF_CHUNK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ref_add(i32 %0, %struct.symbol* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.symbol*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.symbol* %1, %struct.symbol** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @ref_count, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %4
  store i32 0, i32* @ref_chunk, align 4
  br label %14

14:                                               ; preds = %13, %4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ref_count, align 4
  %17 = icmp sge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @ref_count, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i32, i32* @ref_count, align 4
  %23 = load i32, i32* @ref_chunk, align 4
  %24 = load i32, i32* @MAX_CHUNK_REFS, align 4
  %25 = mul nsw i32 %23, %24
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %21
  %28 = load i32, i32* @ref_count, align 4
  %29 = load i32, i32* @ref_chunk, align 4
  %30 = load i32, i32* @MAX_CHUNK_REFS, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @MAX_CHUNK_REFS, align 4
  %35 = sdiv i32 %33, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = load %struct.ref_map*, %struct.ref_map** @ref_map, align 8
  %38 = load i32, i32* @ref_chunk, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @REF_MAP_SIZE(i32 %40)
  %42 = call i64 @xrealloc(%struct.ref_map* %37, i32 %41)
  %43 = inttoptr i64 %42 to %struct.ref_map*
  store %struct.ref_map* %43, %struct.ref_map** @ref_map, align 8
  %44 = load %struct.ref_map*, %struct.ref_map** @ref_map, align 8
  %45 = load i32, i32* @ref_chunk, align 4
  %46 = load i32, i32* @MAX_CHUNK_REFS, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %44, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @REF_CHUNK_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = call i32 @memset(%struct.ref_map* %49, i32 0, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @ref_chunk, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* @ref_chunk, align 4
  br label %57

57:                                               ; preds = %27, %21
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.ref_map*, %struct.ref_map** @ref_map, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %59, i64 %61
  %63 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %62, i32 0, i32 0
  store i8* %58, i8** %63, align 8
  %64 = load %struct.symbol*, %struct.symbol** %6, align 8
  %65 = load %struct.ref_map*, %struct.ref_map** @ref_map, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %65, i64 %67
  %69 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %68, i32 0, i32 2
  store %struct.symbol* %64, %struct.symbol** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.ref_map*, %struct.ref_map** @ref_map, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %71, i64 %73
  %75 = getelementptr inbounds %struct.ref_map, %struct.ref_map* %74, i32 0, i32 1
  store i32 %70, i32* %75, align 8
  ret void
}

declare dso_local i64 @xrealloc(%struct.ref_map*, i32) #1

declare dso_local i32 @REF_MAP_SIZE(i32) #1

declare dso_local i32 @memset(%struct.ref_map*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
