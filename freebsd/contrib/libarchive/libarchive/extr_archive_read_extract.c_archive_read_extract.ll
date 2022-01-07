; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract.c_archive_read_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract.c_archive_read_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_read_extract = type { i32* }
%struct.archive_read = type { i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Can't extract\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_extract(%struct.archive* %0, %struct.archive_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read_extract*, align 8
  %9 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.archive*, %struct.archive** %5, align 8
  %11 = bitcast %struct.archive* %10 to %struct.archive_read*
  store %struct.archive_read* %11, %struct.archive_read** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %13 = call %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read* %12)
  store %struct.archive_read_extract* %13, %struct.archive_read_extract** %8, align 8
  %14 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %15 = icmp eq %struct.archive_read_extract* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %17, i32* %4, align 4
  br label %55

18:                                               ; preds = %3
  %19 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %20 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %18
  %24 = call i32* (...) @archive_write_disk_new()
  %25 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %26 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %25, i32 0, i32 0
  store i32* %24, i32** %26, align 8
  %27 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %28 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %33 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %32, i32 0, i32 0
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = call i32 @archive_set_error(i32* %33, i32 %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %23
  %38 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %39 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @archive_write_disk_set_standard_lookup(i32* %40)
  br label %42

42:                                               ; preds = %37, %18
  %43 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %44 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @archive_write_disk_set_options(i32* %45, i32 %46)
  %48 = load %struct.archive_read*, %struct.archive_read** %9, align 8
  %49 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %48, i32 0, i32 0
  %50 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %51 = load %struct.archive_read_extract*, %struct.archive_read_extract** %8, align 8
  %52 = getelementptr inbounds %struct.archive_read_extract, %struct.archive_read_extract* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @archive_read_extract2(i32* %49, %struct.archive_entry* %50, i32* %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %42, %31, %16
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.archive_read_extract* @__archive_read_get_extract(%struct.archive_read*) #1

declare dso_local i32* @archive_write_disk_new(...) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_write_disk_set_standard_lookup(i32*) #1

declare dso_local i32 @archive_write_disk_set_options(i32*, i32) #1

declare dso_local i32 @archive_read_extract2(i32*, %struct.archive_entry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
