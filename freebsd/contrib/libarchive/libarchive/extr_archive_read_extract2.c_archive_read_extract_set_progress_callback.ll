; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract_set_progress_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract_set_progress_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { i32 }
%struct.archive_read_extract = type { void (i8*)*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_read_extract_set_progress_callback(%struct.archive* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.archive_read_extract*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.archive*, %struct.archive** %4, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_read*
  store %struct.archive_read* %10, %struct.archive_read** %7, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %12 = call %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read* %11)
  store %struct.archive_read_extract* %12, %struct.archive_read_extract** %8, align 8
  %13 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %14 = icmp ne %struct.archive_read_extract* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load void (i8*)*, void (i8*)** %5, align 8
  %17 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %18 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %17, i32 0, i32 0
  store void (i8*)* %16, void (i8*)** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %21 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  br label %22

22:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
