; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_sparse.c_archive_entry_sparse_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { %struct.ae_sparse*, %struct.ae_sparse* }
%struct.ae_sparse = type { i64, i64, %struct.ae_sparse* }

@INT64_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_sparse_add_entry(%struct.archive_entry* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ae_sparse*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %3
  br label %112

14:                                               ; preds = %10
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @INT64_MAX, align 8
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = add nsw i64 %21, %22
  %24 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %25 = call i64 @archive_entry_size(%struct.archive_entry* %24)
  %26 = icmp sgt i64 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %14
  br label %112

28:                                               ; preds = %20
  %29 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %30 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %29, i32 0, i32 0
  %31 = load %struct.ae_sparse*, %struct.ae_sparse** %30, align 8
  store %struct.ae_sparse* %31, %struct.ae_sparse** %7, align 8
  %32 = icmp ne %struct.ae_sparse* %31, null
  br i1 %32, label %33, label %73

33:                                               ; preds = %28
  %34 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %35 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %38 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  %41 = load i64, i64* %5, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  br label %112

44:                                               ; preds = %33
  %45 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %46 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %49 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %44
  %55 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %56 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %59 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load i64, i64* %6, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %112

66:                                               ; preds = %54
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %69 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  br label %112

72:                                               ; preds = %44
  br label %73

73:                                               ; preds = %72, %28
  %74 = call i64 @malloc(i32 24)
  %75 = inttoptr i64 %74 to %struct.ae_sparse*
  store %struct.ae_sparse* %75, %struct.ae_sparse** %7, align 8
  %76 = icmp eq %struct.ae_sparse* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %112

78:                                               ; preds = %73
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %81 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %84 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %83, i32 0, i32 1
  store i64 %82, i64* %84, align 8
  %85 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %86 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %85, i32 0, i32 2
  store %struct.ae_sparse* null, %struct.ae_sparse** %86, align 8
  %87 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %88 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %87, i32 0, i32 1
  %89 = load %struct.ae_sparse*, %struct.ae_sparse** %88, align 8
  %90 = icmp eq %struct.ae_sparse* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %78
  %92 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %93 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %94 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %93, i32 0, i32 0
  store %struct.ae_sparse* %92, %struct.ae_sparse** %94, align 8
  %95 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %96 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %95, i32 0, i32 1
  store %struct.ae_sparse* %92, %struct.ae_sparse** %96, align 8
  br label %112

97:                                               ; preds = %78
  %98 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %99 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %98, i32 0, i32 0
  %100 = load %struct.ae_sparse*, %struct.ae_sparse** %99, align 8
  %101 = icmp ne %struct.ae_sparse* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %104 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %105 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %104, i32 0, i32 0
  %106 = load %struct.ae_sparse*, %struct.ae_sparse** %105, align 8
  %107 = getelementptr inbounds %struct.ae_sparse, %struct.ae_sparse* %106, i32 0, i32 2
  store %struct.ae_sparse* %103, %struct.ae_sparse** %107, align 8
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.ae_sparse*, %struct.ae_sparse** %7, align 8
  %110 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %111 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %110, i32 0, i32 0
  store %struct.ae_sparse* %109, %struct.ae_sparse** %111, align 8
  br label %112

112:                                              ; preds = %13, %27, %43, %65, %66, %77, %108, %91
  ret void
}

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
