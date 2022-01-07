; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_grow_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_grow_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry_linkresolver = type { i32, %struct.links_entry** }
%struct.links_entry = type { i64, %struct.links_entry*, %struct.links_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry_linkresolver*)* @grow_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grow_hash(%struct.archive_entry_linkresolver* %0) #0 {
  %2 = alloca %struct.archive_entry_linkresolver*, align 8
  %3 = alloca %struct.links_entry*, align 8
  %4 = alloca %struct.links_entry**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %2, align 8
  %8 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %9 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %15 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %105

20:                                               ; preds = %1
  %21 = load i64, i64* %5, align 8
  %22 = call %struct.links_entry** @calloc(i64 %21, i32 8)
  store %struct.links_entry** %22, %struct.links_entry*** %4, align 8
  %23 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %24 = icmp eq %struct.links_entry** %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %105

26:                                               ; preds = %20
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %90, %26
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %30 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %28, %32
  br i1 %33, label %34, label %93

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %76, %34
  %36 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %37 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %36, i32 0, i32 1
  %38 = load %struct.links_entry**, %struct.links_entry*** %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %38, i64 %39
  %41 = load %struct.links_entry*, %struct.links_entry** %40, align 8
  %42 = icmp ne %struct.links_entry* %41, null
  br i1 %42, label %43, label %89

43:                                               ; preds = %35
  %44 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %45 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %44, i32 0, i32 1
  %46 = load %struct.links_entry**, %struct.links_entry*** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %46, i64 %47
  %49 = load %struct.links_entry*, %struct.links_entry** %48, align 8
  store %struct.links_entry* %49, %struct.links_entry** %3, align 8
  %50 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %51 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %50, i32 0, i32 2
  %52 = load %struct.links_entry*, %struct.links_entry** %51, align 8
  %53 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %54 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %53, i32 0, i32 1
  %55 = load %struct.links_entry**, %struct.links_entry*** %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %55, i64 %56
  store %struct.links_entry* %52, %struct.links_entry** %57, align 8
  %58 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %59 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = sub i64 %61, 1
  %63 = and i64 %60, %62
  store i64 %63, i64* %7, align 8
  %64 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %65 = load i64, i64* %7, align 8
  %66 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %64, i64 %65
  %67 = load %struct.links_entry*, %struct.links_entry** %66, align 8
  %68 = icmp ne %struct.links_entry* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %43
  %70 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %71 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %71, i64 %72
  %74 = load %struct.links_entry*, %struct.links_entry** %73, align 8
  %75 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %74, i32 0, i32 1
  store %struct.links_entry* %70, %struct.links_entry** %75, align 8
  br label %76

76:                                               ; preds = %69, %43
  %77 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %78 = load i64, i64* %7, align 8
  %79 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %77, i64 %78
  %80 = load %struct.links_entry*, %struct.links_entry** %79, align 8
  %81 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %82 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %81, i32 0, i32 2
  store %struct.links_entry* %80, %struct.links_entry** %82, align 8
  %83 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %84 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %83, i32 0, i32 1
  store %struct.links_entry* null, %struct.links_entry** %84, align 8
  %85 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  %86 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %86, i64 %87
  store %struct.links_entry* %85, %struct.links_entry** %88, align 8
  br label %35

89:                                               ; preds = %35
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %27

93:                                               ; preds = %27
  %94 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %95 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %94, i32 0, i32 1
  %96 = load %struct.links_entry**, %struct.links_entry*** %95, align 8
  %97 = call i32 @free(%struct.links_entry** %96)
  %98 = load %struct.links_entry**, %struct.links_entry*** %4, align 8
  %99 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %100 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %99, i32 0, i32 1
  store %struct.links_entry** %98, %struct.links_entry*** %100, align 8
  %101 = load i64, i64* %5, align 8
  %102 = trunc i64 %101 to i32
  %103 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %2, align 8
  %104 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %93, %25, %19
  ret void
}

declare dso_local %struct.links_entry** @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.links_entry**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
