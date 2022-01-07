; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open2(%struct.archive* %0, i8* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.archive* %0, %struct.archive** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %13 = load %struct.archive*, %struct.archive** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @archive_read_set_callback_data(%struct.archive* %13, i8* %14)
  %16 = load %struct.archive*, %struct.archive** %7, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 @archive_read_set_open_callback(%struct.archive* %16, i32* %17)
  %19 = load %struct.archive*, %struct.archive** %7, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = call i32 @archive_read_set_read_callback(%struct.archive* %19, i32* %20)
  %22 = load %struct.archive*, %struct.archive** %7, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @archive_read_set_skip_callback(%struct.archive* %22, i32* %23)
  %25 = load %struct.archive*, %struct.archive** %7, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32 @archive_read_set_close_callback(%struct.archive* %25, i32* %26)
  %28 = load %struct.archive*, %struct.archive** %7, align 8
  %29 = call i32 @archive_read_open1(%struct.archive* %28)
  ret i32 %29
}

declare dso_local i32 @archive_read_set_callback_data(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_skip_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
