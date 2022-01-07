; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_extract2.c_archive_read_extract_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_extract_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_extract_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %6 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @archive_write_free(i32* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = call i32 @free(%struct.TYPE_2__* %21)
  %23 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %24, align 8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @archive_write_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
