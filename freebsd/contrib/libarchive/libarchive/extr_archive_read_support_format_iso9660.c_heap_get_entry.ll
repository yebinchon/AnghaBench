; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_heap_get_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_heap_get_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i64 }
%struct.heap_queue = type { i32, %struct.file_info** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.file_info* (%struct.heap_queue*)* @heap_get_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.file_info* @heap_get_entry(%struct.heap_queue* %0) #0 {
  %2 = alloca %struct.file_info*, align 8
  %3 = alloca %struct.heap_queue*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.file_info*, align 8
  %11 = alloca %struct.file_info*, align 8
  store %struct.heap_queue* %0, %struct.heap_queue** %3, align 8
  %12 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %13 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store %struct.file_info* null, %struct.file_info** %2, align 8
  br label %127

17:                                               ; preds = %1
  %18 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %19 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %18, i32 0, i32 1
  %20 = load %struct.file_info**, %struct.file_info*** %19, align 8
  %21 = getelementptr inbounds %struct.file_info*, %struct.file_info** %20, i64 0
  %22 = load %struct.file_info*, %struct.file_info** %21, align 8
  store %struct.file_info* %22, %struct.file_info** %10, align 8
  %23 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %24 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %23, i32 0, i32 1
  %25 = load %struct.file_info**, %struct.file_info*** %24, align 8
  %26 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %27 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.file_info*, %struct.file_info** %25, i64 %30
  %32 = load %struct.file_info*, %struct.file_info** %31, align 8
  %33 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %34 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %33, i32 0, i32 1
  %35 = load %struct.file_info**, %struct.file_info*** %34, align 8
  %36 = getelementptr inbounds %struct.file_info*, %struct.file_info** %35, i64 0
  store %struct.file_info* %32, %struct.file_info** %36, align 8
  store i32 0, i32* %7, align 4
  %37 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %38 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %37, i32 0, i32 1
  %39 = load %struct.file_info**, %struct.file_info*** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.file_info*, %struct.file_info** %39, i64 %41
  %43 = load %struct.file_info*, %struct.file_info** %42, align 8
  %44 = getelementptr inbounds %struct.file_info, %struct.file_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %98, %17
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %53 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sge i32 %51, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load %struct.file_info*, %struct.file_info** %10, align 8
  store %struct.file_info* %57, %struct.file_info** %2, align 8
  br label %127

58:                                               ; preds = %46
  %59 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %60 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %59, i32 0, i32 1
  %61 = load %struct.file_info**, %struct.file_info*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.file_info*, %struct.file_info** %61, i64 %63
  %65 = load %struct.file_info*, %struct.file_info** %64, align 8
  %66 = getelementptr inbounds %struct.file_info, %struct.file_info* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %5, align 8
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %72 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %58
  %76 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %77 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %76, i32 0, i32 1
  %78 = load %struct.file_info**, %struct.file_info*** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.file_info*, %struct.file_info** %78, i64 %80
  %82 = load %struct.file_info*, %struct.file_info** %81, align 8
  %83 = getelementptr inbounds %struct.file_info, %struct.file_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %5, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %75
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* %6, align 8
  store i64 %90, i64* %5, align 8
  br label %91

91:                                               ; preds = %88, %75
  br label %92

92:                                               ; preds = %91, %58
  %93 = load i64, i64* %4, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp sle i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load %struct.file_info*, %struct.file_info** %10, align 8
  store %struct.file_info* %97, %struct.file_info** %2, align 8
  br label %127

98:                                               ; preds = %92
  %99 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %100 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %99, i32 0, i32 1
  %101 = load %struct.file_info**, %struct.file_info*** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.file_info*, %struct.file_info** %101, i64 %103
  %105 = load %struct.file_info*, %struct.file_info** %104, align 8
  store %struct.file_info* %105, %struct.file_info** %11, align 8
  %106 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %107 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %106, i32 0, i32 1
  %108 = load %struct.file_info**, %struct.file_info*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.file_info*, %struct.file_info** %108, i64 %110
  %112 = load %struct.file_info*, %struct.file_info** %111, align 8
  %113 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %114 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %113, i32 0, i32 1
  %115 = load %struct.file_info**, %struct.file_info*** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.file_info*, %struct.file_info** %115, i64 %117
  store %struct.file_info* %112, %struct.file_info** %118, align 8
  %119 = load %struct.file_info*, %struct.file_info** %11, align 8
  %120 = load %struct.heap_queue*, %struct.heap_queue** %3, align 8
  %121 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %120, i32 0, i32 1
  %122 = load %struct.file_info**, %struct.file_info*** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.file_info*, %struct.file_info** %122, i64 %124
  store %struct.file_info* %119, %struct.file_info** %125, align 8
  %126 = load i32, i32* %8, align 4
  store i32 %126, i32* %7, align 4
  br label %46

127:                                              ; preds = %96, %56, %16
  %128 = load %struct.file_info*, %struct.file_info** %2, align 8
  ret %struct.file_info* %128
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
