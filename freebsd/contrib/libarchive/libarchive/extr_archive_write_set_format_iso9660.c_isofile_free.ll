; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isofile = type { i32, i32, i32, i32, i32, %struct.isofile*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.isofile* }
%struct.content = type { i32, i32, i32, i32, i32, %struct.content*, %struct.TYPE_2__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isofile*)* @isofile_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isofile_free(%struct.isofile* %0) #0 {
  %2 = alloca %struct.isofile*, align 8
  %3 = alloca %struct.content*, align 8
  %4 = alloca %struct.content*, align 8
  store %struct.isofile* %0, %struct.isofile** %2, align 8
  %5 = load %struct.isofile*, %struct.isofile** %2, align 8
  %6 = getelementptr inbounds %struct.isofile, %struct.isofile* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.isofile*, %struct.isofile** %7, align 8
  %9 = bitcast %struct.isofile* %8 to %struct.content*
  store %struct.content* %9, %struct.content** %3, align 8
  br label %10

10:                                               ; preds = %13, %1
  %11 = load %struct.content*, %struct.content** %3, align 8
  %12 = icmp ne %struct.content* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %10
  %14 = load %struct.content*, %struct.content** %3, align 8
  store %struct.content* %14, %struct.content** %4, align 8
  %15 = load %struct.content*, %struct.content** %3, align 8
  %16 = getelementptr inbounds %struct.content, %struct.content* %15, i32 0, i32 5
  %17 = load %struct.content*, %struct.content** %16, align 8
  store %struct.content* %17, %struct.content** %3, align 8
  %18 = load %struct.content*, %struct.content** %4, align 8
  %19 = bitcast %struct.content* %18 to %struct.isofile*
  %20 = call i32 @free(%struct.isofile* %19)
  br label %10

21:                                               ; preds = %10
  %22 = load %struct.isofile*, %struct.isofile** %2, align 8
  %23 = getelementptr inbounds %struct.isofile, %struct.isofile* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @archive_entry_free(i32 %24)
  %26 = load %struct.isofile*, %struct.isofile** %2, align 8
  %27 = getelementptr inbounds %struct.isofile, %struct.isofile* %26, i32 0, i32 3
  %28 = call i32 @archive_string_free(i32* %27)
  %29 = load %struct.isofile*, %struct.isofile** %2, align 8
  %30 = getelementptr inbounds %struct.isofile, %struct.isofile* %29, i32 0, i32 2
  %31 = call i32 @archive_string_free(i32* %30)
  %32 = load %struct.isofile*, %struct.isofile** %2, align 8
  %33 = getelementptr inbounds %struct.isofile, %struct.isofile* %32, i32 0, i32 1
  %34 = call i32 @archive_string_free(i32* %33)
  %35 = load %struct.isofile*, %struct.isofile** %2, align 8
  %36 = getelementptr inbounds %struct.isofile, %struct.isofile* %35, i32 0, i32 0
  %37 = call i32 @archive_string_free(i32* %36)
  %38 = load %struct.isofile*, %struct.isofile** %2, align 8
  %39 = call i32 @free(%struct.isofile* %38)
  ret void
}

declare dso_local i32 @free(%struct.isofile*) #1

declare dso_local i32 @archive_entry_free(i32) #1

declare dso_local i32 @archive_string_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
