; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c___archive_read_get_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c___archive_read_get_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_extract = type { i32 }
%struct.archive_read = type { %struct.archive_read_extract*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Can't extract\00", align 1
@archive_read_extract_cleanup = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read_extract*, align 8
  %3 = alloca %struct.archive_read*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.archive_read_extract*, %struct.archive_read_extract** %5, align 8
  %7 = icmp eq %struct.archive_read_extract* %6, null
  br i1 %7, label %8, label %26

8:                                                ; preds = %1
  %9 = call i64 @calloc(i32 1, i32 4)
  %10 = inttoptr i64 %9 to %struct.archive_read_extract*
  %11 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 0
  store %struct.archive_read_extract* %10, %struct.archive_read_extract** %12, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 0
  %15 = load %struct.archive_read_extract*, %struct.archive_read_extract** %14, align 8
  %16 = icmp eq %struct.archive_read_extract* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %8
  %18 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = call i32 @archive_set_error(i32* %19, i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.archive_read_extract* null, %struct.archive_read_extract** %2, align 8
  br label %30

22:                                               ; preds = %8
  %23 = load i32, i32* @archive_read_extract_cleanup, align 4
  %24 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  %27 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = load %struct.archive_read_extract*, %struct.archive_read_extract** %28, align 8
  store %struct.archive_read_extract* %29, %struct.archive_read_extract** %2, align 8
  br label %30

30:                                               ; preds = %26, %17
  %31 = load %struct.archive_read_extract*, %struct.archive_read_extract** %2, align 8
  ret %struct.archive_read_extract* %31
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
