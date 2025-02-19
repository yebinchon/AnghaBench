; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_shar.c_archive_write_shar_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32* }
%struct.shar = type { i32, i32, %struct.shar*, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @archive_write_shar_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_shar_free(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.shar*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = bitcast i32* %7 to %struct.shar*
  store %struct.shar* %8, %struct.shar** %4, align 8
  %9 = load %struct.shar*, %struct.shar** %4, align 8
  %10 = icmp eq %struct.shar* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.shar*, %struct.shar** %4, align 8
  %15 = getelementptr inbounds %struct.shar, %struct.shar* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @archive_entry_free(i32 %16)
  %18 = load %struct.shar*, %struct.shar** %4, align 8
  %19 = getelementptr inbounds %struct.shar, %struct.shar* %18, i32 0, i32 2
  %20 = load %struct.shar*, %struct.shar** %19, align 8
  %21 = call i32 @free(%struct.shar* %20)
  %22 = load %struct.shar*, %struct.shar** %4, align 8
  %23 = getelementptr inbounds %struct.shar, %struct.shar* %22, i32 0, i32 1
  %24 = call i32 @archive_string_free(i32* %23)
  %25 = load %struct.shar*, %struct.shar** %4, align 8
  %26 = getelementptr inbounds %struct.shar, %struct.shar* %25, i32 0, i32 0
  %27 = call i32 @archive_string_free(i32* %26)
  %28 = load %struct.shar*, %struct.shar** %4, align 8
  %29 = call i32 @free(%struct.shar* %28)
  %30 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %31 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @free(%struct.shar*) #1

declare dso_local i32 @archive_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
