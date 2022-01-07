; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { i64, i32, i32, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.iso9660*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.iso9660*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.iso9660*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @iso9660_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_free(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 0
  %8 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  store %struct.iso9660* %8, %struct.iso9660** %3, align 8
  %9 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %10 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %15 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @close(i64 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %20 = call i32 @zisofs_free(%struct.archive_write* %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %22 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %21, i32 0, i32 15
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @isoent_free_all(i32 %24)
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %44, %18
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %29 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %28, i32 0, i32 15
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %35 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %34, i32 0, i32 15
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load %struct.iso9660*, %struct.iso9660** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %37, i64 %39
  %41 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %40, i32 0, i32 13
  %42 = load %struct.iso9660*, %struct.iso9660** %41, align 8
  %43 = call i32 @free(%struct.iso9660* %42)
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %26

47:                                               ; preds = %26
  %48 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %49 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %48, i32 0, i32 15
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.iso9660*, %struct.iso9660** %50, align 8
  %52 = call i32 @free(%struct.iso9660* %51)
  %53 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %54 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %53, i32 0, i32 14
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %91

58:                                               ; preds = %47
  %59 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %60 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %59, i32 0, i32 12
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @isoent_free_all(i32 %62)
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %82, %58
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %67 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %65, %69
  br i1 %70, label %71, label %85

71:                                               ; preds = %64
  %72 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %73 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %72, i32 0, i32 12
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.iso9660*, %struct.iso9660** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %75, i64 %77
  %79 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %78, i32 0, i32 13
  %80 = load %struct.iso9660*, %struct.iso9660** %79, align 8
  %81 = call i32 @free(%struct.iso9660* %80)
  br label %82

82:                                               ; preds = %71
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %64

85:                                               ; preds = %64
  %86 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %87 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %86, i32 0, i32 12
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load %struct.iso9660*, %struct.iso9660** %88, align 8
  %90 = call i32 @free(%struct.iso9660* %89)
  br label %91

91:                                               ; preds = %85, %47
  %92 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %93 = call i32 @isofile_free_all_entries(%struct.iso9660* %92)
  %94 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %95 = call i32 @isofile_free_hardlinks(%struct.iso9660* %94)
  %96 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %97 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %96, i32 0, i32 11
  %98 = call i32 @archive_string_free(i32* %97)
  %99 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %100 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %99, i32 0, i32 10
  %101 = call i32 @archive_string_free(i32* %100)
  %102 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %103 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %102, i32 0, i32 9
  %104 = call i32 @archive_string_free(i32* %103)
  %105 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %106 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %105, i32 0, i32 8
  %107 = call i32 @archive_string_free(i32* %106)
  %108 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %109 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %108, i32 0, i32 7
  %110 = call i32 @archive_string_free(i32* %109)
  %111 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %112 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %111, i32 0, i32 6
  %113 = call i32 @archive_string_free(i32* %112)
  %114 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %115 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %114, i32 0, i32 5
  %116 = call i32 @archive_string_free(i32* %115)
  %117 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %118 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %117, i32 0, i32 4
  %119 = call i32 @archive_string_free(i32* %118)
  %120 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %121 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  %123 = call i32 @archive_string_free(i32* %122)
  %124 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %125 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 1
  %127 = call i32 @archive_string_free(i32* %126)
  %128 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %129 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = call i32 @archive_string_free(i32* %130)
  %132 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %133 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %132, i32 0, i32 2
  %134 = call i32 @archive_string_free(i32* %133)
  %135 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %136 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %135, i32 0, i32 1
  %137 = call i32 @archive_string_free(i32* %136)
  %138 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %139 = call i32 @free(%struct.iso9660* %138)
  %140 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %141 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %140, i32 0, i32 0
  store %struct.iso9660* null, %struct.iso9660** %141, align 8
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @close(i64) #1

declare dso_local i32 @zisofs_free(%struct.archive_write*) #1

declare dso_local i32 @isoent_free_all(i32) #1

declare dso_local i32 @free(%struct.iso9660*) #1

declare dso_local i32 @isofile_free_all_entries(%struct.iso9660*) #1

declare dso_local i32 @isofile_free_hardlinks(%struct.iso9660*) #1

declare dso_local i32 @archive_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
