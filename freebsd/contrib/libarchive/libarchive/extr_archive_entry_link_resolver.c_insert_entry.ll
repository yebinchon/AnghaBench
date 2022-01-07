; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_insert_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_insert_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.links_entry = type { i64, i64, %struct.links_entry*, %struct.links_entry*, i32 }
%struct.archive_entry_linkresolver = type { i32, i32, %struct.links_entry** }
%struct.archive_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.links_entry* (%struct.archive_entry_linkresolver*, %struct.archive_entry*)* @insert_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.links_entry* @insert_entry(%struct.archive_entry_linkresolver* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.links_entry*, align 8
  %4 = alloca %struct.archive_entry_linkresolver*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.links_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %9 = call %struct.links_entry* @calloc(i32 1, i32 40)
  store %struct.links_entry* %9, %struct.links_entry** %6, align 8
  %10 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %11 = icmp eq %struct.links_entry* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.links_entry* null, %struct.links_entry** %3, align 8
  br label %89

13:                                               ; preds = %2
  %14 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %15 = call i32 @archive_entry_clone(%struct.archive_entry* %14)
  %16 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %17 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %19 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %22 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 2
  %25 = icmp sgt i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %28 = call i32 @grow_hash(%struct.archive_entry_linkresolver* %27)
  br label %29

29:                                               ; preds = %26, %13
  %30 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %31 = call i32 @archive_entry_dev(%struct.archive_entry* %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %33 = call i32 @archive_entry_ino64(%struct.archive_entry* %32)
  %34 = xor i32 %31, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %38 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = and i64 %36, %41
  store i64 %42, i64* %8, align 8
  %43 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %44 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %43, i32 0, i32 2
  %45 = load %struct.links_entry**, %struct.links_entry*** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %45, i64 %46
  %48 = load %struct.links_entry*, %struct.links_entry** %47, align 8
  %49 = icmp ne %struct.links_entry* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %29
  %51 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %52 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %53 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %52, i32 0, i32 2
  %54 = load %struct.links_entry**, %struct.links_entry*** %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %54, i64 %55
  %57 = load %struct.links_entry*, %struct.links_entry** %56, align 8
  %58 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %57, i32 0, i32 2
  store %struct.links_entry* %51, %struct.links_entry** %58, align 8
  br label %59

59:                                               ; preds = %50, %29
  %60 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %61 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %65 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %64, i32 0, i32 2
  %66 = load %struct.links_entry**, %struct.links_entry*** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %66, i64 %67
  %69 = load %struct.links_entry*, %struct.links_entry** %68, align 8
  %70 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %71 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %70, i32 0, i32 3
  store %struct.links_entry* %69, %struct.links_entry** %71, align 8
  %72 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %73 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %72, i32 0, i32 2
  store %struct.links_entry* null, %struct.links_entry** %73, align 8
  %74 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %75 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %4, align 8
  %76 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %75, i32 0, i32 2
  %77 = load %struct.links_entry**, %struct.links_entry*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.links_entry*, %struct.links_entry** %77, i64 %78
  store %struct.links_entry* %74, %struct.links_entry** %79, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %82 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %84 = call i64 @archive_entry_nlink(%struct.archive_entry* %83)
  %85 = sub nsw i64 %84, 1
  %86 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  %87 = getelementptr inbounds %struct.links_entry, %struct.links_entry* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.links_entry*, %struct.links_entry** %6, align 8
  store %struct.links_entry* %88, %struct.links_entry** %3, align 8
  br label %89

89:                                               ; preds = %59, %12
  %90 = load %struct.links_entry*, %struct.links_entry** %3, align 8
  ret %struct.links_entry* %90
}

declare dso_local %struct.links_entry* @calloc(i32, i32) #1

declare dso_local i32 @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i32 @grow_hash(%struct.archive_entry_linkresolver*) #1

declare dso_local i32 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ino64(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_nlink(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
