; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_program.c___archive_write_program_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_program_data = type { %struct.archive_write_program_data*, %struct.archive_write_program_data*, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_write_program_free(%struct.archive_write_program_data* %0) #0 {
  %2 = alloca %struct.archive_write_program_data*, align 8
  store %struct.archive_write_program_data* %0, %struct.archive_write_program_data** %2, align 8
  %3 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %2, align 8
  %4 = icmp ne %struct.archive_write_program_data* %3, null
  br i1 %4, label %5, label %16

5:                                                ; preds = %1
  %6 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %6, i32 0, i32 1
  %8 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %7, align 8
  %9 = call i32 @free(%struct.archive_write_program_data* %8)
  %10 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %2, align 8
  %11 = getelementptr inbounds %struct.archive_write_program_data, %struct.archive_write_program_data* %10, i32 0, i32 0
  %12 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %11, align 8
  %13 = call i32 @free(%struct.archive_write_program_data* %12)
  %14 = load %struct.archive_write_program_data*, %struct.archive_write_program_data** %2, align 8
  %15 = call i32 @free(%struct.archive_write_program_data* %14)
  br label %16

16:                                               ; preds = %5, %1
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %17
}

declare dso_local i32 @free(%struct.archive_write_program_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
