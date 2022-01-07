; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_table_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/storage/extr_lruhash.c_table_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lruhash = type { i32, i32, %struct.lruhash_bin*, i32 }
%struct.lruhash_bin = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"hash array malloc: size_t too small\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"hash grow: malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @table_grow(%struct.lruhash* %0) #0 {
  %2 = alloca %struct.lruhash*, align 8
  %3 = alloca %struct.lruhash_bin*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.lruhash* %0, %struct.lruhash** %2, align 8
  %6 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %7 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %89

12:                                               ; preds = %1
  %13 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %14 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 2
  %17 = call %struct.lruhash_bin* @calloc(i32 %16, i32 4)
  store %struct.lruhash_bin* %17, %struct.lruhash_bin** %3, align 8
  %18 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %19 = icmp ne %struct.lruhash_bin* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %12
  %21 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %89

22:                                               ; preds = %12
  %23 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %24 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %25 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  %28 = call i32 @bin_init(%struct.lruhash_bin* %23, i32 %27)
  %29 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %30 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 1
  %33 = or i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %35 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bin_split(%struct.lruhash* %34, %struct.lruhash_bin* %35, i32 %36)
  %38 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %39 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %38, i32 0, i32 3
  %40 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %41 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %40, i32 0, i32 2
  %42 = load %struct.lruhash_bin*, %struct.lruhash_bin** %41, align 8
  %43 = call i32 @lock_unprotect(i32* %39, %struct.lruhash_bin* %42)
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %59, %22
  %45 = load i64, i64* %5, align 8
  %46 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %47 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %45, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %44
  %52 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %53 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %52, i32 0, i32 2
  %54 = load %struct.lruhash_bin*, %struct.lruhash_bin** %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %54, i64 %55
  %57 = getelementptr inbounds %struct.lruhash_bin, %struct.lruhash_bin* %56, i32 0, i32 0
  %58 = call i32 @lock_quick_destroy(i32* %57)
  br label %59

59:                                               ; preds = %51
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  br label %44

62:                                               ; preds = %44
  %63 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %64 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %63, i32 0, i32 2
  %65 = load %struct.lruhash_bin*, %struct.lruhash_bin** %64, align 8
  %66 = call i32 @free(%struct.lruhash_bin* %65)
  %67 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %68 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 2
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %73 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.lruhash_bin*, %struct.lruhash_bin** %3, align 8
  %75 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %76 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %75, i32 0, i32 2
  store %struct.lruhash_bin* %74, %struct.lruhash_bin** %76, align 8
  %77 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %78 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %77, i32 0, i32 3
  %79 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %80 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %79, i32 0, i32 2
  %81 = load %struct.lruhash_bin*, %struct.lruhash_bin** %80, align 8
  %82 = load %struct.lruhash*, %struct.lruhash** %2, align 8
  %83 = getelementptr inbounds %struct.lruhash, %struct.lruhash* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = call i32 @lock_protect(i32* %78, %struct.lruhash_bin* %81, i32 %87)
  br label %89

89:                                               ; preds = %62, %20, %10
  ret void
}

declare dso_local i32 @log_err(i8*) #1

declare dso_local %struct.lruhash_bin* @calloc(i32, i32) #1

declare dso_local i32 @bin_init(%struct.lruhash_bin*, i32) #1

declare dso_local i32 @bin_split(%struct.lruhash*, %struct.lruhash_bin*, i32) #1

declare dso_local i32 @lock_unprotect(i32*, %struct.lruhash_bin*) #1

declare dso_local i32 @lock_quick_destroy(i32*) #1

declare dso_local i32 @free(%struct.lruhash_bin*) #1

declare dso_local i32 @lock_protect(i32*, %struct.lruhash_bin*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
