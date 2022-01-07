; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_exchange_same_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_mtree_entry_exchange_same_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.mtree_entry = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AE_IFMT = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Found duplicate entries `%s' and its file type is different\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.mtree_entry*, %struct.mtree_entry*)* @mtree_entry_exchange_same_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtree_entry_exchange_same_entry(%struct.archive_write* %0, %struct.mtree_entry* %1, %struct.mtree_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.mtree_entry*, align 8
  %7 = alloca %struct.mtree_entry*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %6, align 8
  store %struct.mtree_entry* %2, %struct.mtree_entry** %7, align 8
  %8 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %9 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AE_IFMT, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %14 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AE_IFMT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %12, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %23 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %24 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %23, i32 0, i32 19
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %28, i32* %4, align 4
  br label %138

29:                                               ; preds = %3
  %30 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %31 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %30, i32 0, i32 18
  %32 = call i32 @archive_string_empty(i32* %31)
  %33 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %34 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %33, i32 0, i32 18
  %35 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %36 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %35, i32 0, i32 18
  %37 = call i32 @archive_string_concat(i32* %34, i32* %36)
  %38 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %39 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %38, i32 0, i32 17
  %40 = call i32 @archive_string_empty(i32* %39)
  %41 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %42 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %41, i32 0, i32 17
  %43 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %44 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %43, i32 0, i32 17
  %45 = call i32 @archive_string_concat(i32* %42, i32* %44)
  %46 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %47 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %46, i32 0, i32 16
  %48 = call i32 @archive_string_empty(i32* %47)
  %49 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %50 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %49, i32 0, i32 16
  %51 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %52 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %51, i32 0, i32 16
  %53 = call i32 @archive_string_concat(i32* %50, i32* %52)
  %54 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %55 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %54, i32 0, i32 15
  %56 = call i32 @archive_string_empty(i32* %55)
  %57 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %58 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %57, i32 0, i32 15
  %59 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %60 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %59, i32 0, i32 15
  %61 = call i32 @archive_string_concat(i32* %58, i32* %60)
  %62 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %63 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %62, i32 0, i32 14
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %66 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %65, i32 0, i32 14
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %68 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %71 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %70, i32 0, i32 13
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %73 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %76 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  %77 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %78 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %77, i32 0, i32 12
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %81 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %80, i32 0, i32 12
  store i32 %79, i32* %81, align 4
  %82 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %83 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %86 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %85, i32 0, i32 11
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %88 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %91 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %93 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %96 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %95, i32 0, i32 9
  store i32 %94, i32* %96, align 4
  %97 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %98 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %101 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %100, i32 0, i32 8
  store i32 %99, i32* %101, align 4
  %102 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %103 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %106 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %105, i32 0, i32 7
  store i32 %104, i32* %106, align 4
  %107 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %108 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %111 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %110, i32 0, i32 6
  store i32 %109, i32* %111, align 4
  %112 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %113 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %116 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %118 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %121 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %123 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %126 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %128 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %131 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %133 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mtree_entry*, %struct.mtree_entry** %6, align 8
  %136 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %29, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32 @archive_string_empty(i32*) #1

declare dso_local i32 @archive_string_concat(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
