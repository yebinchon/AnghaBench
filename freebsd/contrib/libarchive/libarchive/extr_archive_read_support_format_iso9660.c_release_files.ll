; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_release_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_release_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iso9660 = type { %struct.file_info* }
%struct.file_info = type { %struct.file_info*, %struct.TYPE_2__, %struct.file_info*, i32, i32, %struct.file_info* }
%struct.TYPE_2__ = type { %struct.file_info* }
%struct.content = type { %struct.content*, %struct.TYPE_2__, %struct.content*, i32, i32, %struct.content* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iso9660*)* @release_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_files(%struct.iso9660* %0) #0 {
  %2 = alloca %struct.iso9660*, align 8
  %3 = alloca %struct.content*, align 8
  %4 = alloca %struct.content*, align 8
  %5 = alloca %struct.file_info*, align 8
  %6 = alloca %struct.file_info*, align 8
  store %struct.iso9660* %0, %struct.iso9660** %2, align 8
  %7 = load %struct.iso9660*, %struct.iso9660** %2, align 8
  %8 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %7, i32 0, i32 0
  %9 = load %struct.file_info*, %struct.file_info** %8, align 8
  store %struct.file_info* %9, %struct.file_info** %5, align 8
  br label %10

10:                                               ; preds = %43, %1
  %11 = load %struct.file_info*, %struct.file_info** %5, align 8
  %12 = icmp ne %struct.file_info* %11, null
  br i1 %12, label %13, label %47

13:                                               ; preds = %10
  %14 = load %struct.file_info*, %struct.file_info** %5, align 8
  %15 = getelementptr inbounds %struct.file_info, %struct.file_info* %14, i32 0, i32 5
  %16 = load %struct.file_info*, %struct.file_info** %15, align 8
  store %struct.file_info* %16, %struct.file_info** %6, align 8
  %17 = load %struct.file_info*, %struct.file_info** %5, align 8
  %18 = getelementptr inbounds %struct.file_info, %struct.file_info* %17, i32 0, i32 4
  %19 = call i32 @archive_string_free(i32* %18)
  %20 = load %struct.file_info*, %struct.file_info** %5, align 8
  %21 = getelementptr inbounds %struct.file_info, %struct.file_info* %20, i32 0, i32 3
  %22 = call i32 @archive_string_free(i32* %21)
  %23 = load %struct.file_info*, %struct.file_info** %5, align 8
  %24 = getelementptr inbounds %struct.file_info, %struct.file_info* %23, i32 0, i32 2
  %25 = load %struct.file_info*, %struct.file_info** %24, align 8
  %26 = call i32 @free(%struct.file_info* %25)
  %27 = load %struct.file_info*, %struct.file_info** %5, align 8
  %28 = getelementptr inbounds %struct.file_info, %struct.file_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load %struct.file_info*, %struct.file_info** %29, align 8
  %31 = bitcast %struct.file_info* %30 to %struct.content*
  store %struct.content* %31, %struct.content** %3, align 8
  br label %32

32:                                               ; preds = %35, %13
  %33 = load %struct.content*, %struct.content** %3, align 8
  %34 = icmp ne %struct.content* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.content*, %struct.content** %3, align 8
  %37 = getelementptr inbounds %struct.content, %struct.content* %36, i32 0, i32 0
  %38 = load %struct.content*, %struct.content** %37, align 8
  store %struct.content* %38, %struct.content** %4, align 8
  %39 = load %struct.content*, %struct.content** %3, align 8
  %40 = bitcast %struct.content* %39 to %struct.file_info*
  %41 = call i32 @free(%struct.file_info* %40)
  %42 = load %struct.content*, %struct.content** %4, align 8
  store %struct.content* %42, %struct.content** %3, align 8
  br label %32

43:                                               ; preds = %32
  %44 = load %struct.file_info*, %struct.file_info** %5, align 8
  %45 = call i32 @free(%struct.file_info* %44)
  %46 = load %struct.file_info*, %struct.file_info** %6, align 8
  store %struct.file_info* %46, %struct.file_info** %5, align 8
  br label %10

47:                                               ; preds = %10
  ret void
}

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @free(%struct.file_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
