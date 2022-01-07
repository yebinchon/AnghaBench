; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.write_lrzip = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_write_lrzip_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_lrzip_free(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.write_lrzip*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %4 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %5 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.write_lrzip*
  store %struct.write_lrzip* %7, %struct.write_lrzip** %3, align 8
  %8 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %9 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @__archive_write_program_free(i32 %10)
  %12 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %13 = call i32 @free(%struct.write_lrzip* %12)
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %14
}

declare dso_local i32 @__archive_write_program_free(i32) #1

declare dso_local i32 @free(%struct.write_lrzip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
