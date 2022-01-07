; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_read_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_open(%struct.archive* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load %struct.archive*, %struct.archive** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @archive_read_set_open_callback(%struct.archive* %11, i32* %12)
  %14 = load %struct.archive*, %struct.archive** %6, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = call i32 @archive_read_set_read_callback(%struct.archive* %14, i32* %15)
  %17 = load %struct.archive*, %struct.archive** %6, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i32 @archive_read_set_close_callback(%struct.archive* %17, i32* %18)
  %20 = load %struct.archive*, %struct.archive** %6, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @archive_read_set_callback_data(%struct.archive* %20, i8* %21)
  %23 = load %struct.archive*, %struct.archive** %6, align 8
  %24 = call i32 @archive_read_open1(%struct.archive* %23)
  ret i32 %24
}

declare dso_local i32 @archive_read_set_open_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_read_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_close_callback(%struct.archive*, i32*) #1

declare dso_local i32 @archive_read_set_callback_data(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_open1(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
