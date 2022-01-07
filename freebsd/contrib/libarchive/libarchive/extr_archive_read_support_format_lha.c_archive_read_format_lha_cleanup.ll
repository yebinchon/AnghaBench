; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_archive_read_format_lha_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.lha = type { i32, i32, i32, i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @archive_read_format_lha_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_lha_cleanup(%struct.archive_read* %0) #0 {
  %2 = alloca %struct.archive_read*, align 8
  %3 = alloca %struct.lha*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %2, align 8
  %4 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %5 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = bitcast i32* %8 to %struct.lha*
  store %struct.lha* %9, %struct.lha** %3, align 8
  %10 = load %struct.lha*, %struct.lha** %3, align 8
  %11 = getelementptr inbounds %struct.lha, %struct.lha* %10, i32 0, i32 5
  %12 = call i32 @lzh_decode_free(i32* %11)
  %13 = load %struct.lha*, %struct.lha** %3, align 8
  %14 = getelementptr inbounds %struct.lha, %struct.lha* %13, i32 0, i32 4
  %15 = call i32 @archive_string_free(i32* %14)
  %16 = load %struct.lha*, %struct.lha** %3, align 8
  %17 = getelementptr inbounds %struct.lha, %struct.lha* %16, i32 0, i32 3
  %18 = call i32 @archive_string_free(i32* %17)
  %19 = load %struct.lha*, %struct.lha** %3, align 8
  %20 = getelementptr inbounds %struct.lha, %struct.lha* %19, i32 0, i32 2
  %21 = call i32 @archive_string_free(i32* %20)
  %22 = load %struct.lha*, %struct.lha** %3, align 8
  %23 = getelementptr inbounds %struct.lha, %struct.lha* %22, i32 0, i32 1
  %24 = call i32 @archive_string_free(i32* %23)
  %25 = load %struct.lha*, %struct.lha** %3, align 8
  %26 = getelementptr inbounds %struct.lha, %struct.lha* %25, i32 0, i32 0
  %27 = call i32 @archive_wstring_free(i32* %26)
  %28 = load %struct.lha*, %struct.lha** %3, align 8
  %29 = call i32 @free(%struct.lha* %28)
  %30 = load %struct.archive_read*, %struct.archive_read** %2, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %34
}

declare dso_local i32 @lzh_decode_free(i32*) #1

declare dso_local i32 @archive_string_free(i32*) #1

declare dso_local i32 @archive_wstring_free(i32*) #1

declare dso_local i32 @free(%struct.lha*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
