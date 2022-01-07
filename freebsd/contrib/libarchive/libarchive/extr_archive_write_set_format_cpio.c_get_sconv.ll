; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_get_sconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_get_sconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32 }
%struct.archive_write = type { i32, i64 }
%struct.cpio = type { i32, %struct.archive_string_conv*, %struct.archive_string_conv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_string_conv* (%struct.archive_write*)* @get_sconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_string_conv* @get_sconv(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.cpio*
  store %struct.cpio* %8, %struct.cpio** %3, align 8
  %9 = load %struct.cpio*, %struct.cpio** %3, align 8
  %10 = getelementptr inbounds %struct.cpio, %struct.cpio* %9, i32 0, i32 2
  %11 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  store %struct.archive_string_conv* %11, %struct.archive_string_conv** %4, align 8
  %12 = load %struct.archive_string_conv*, %struct.archive_string_conv** %4, align 8
  %13 = icmp eq %struct.archive_string_conv* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %1
  %15 = load %struct.cpio*, %struct.cpio** %3, align 8
  %16 = getelementptr inbounds %struct.cpio, %struct.cpio* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = call %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32* %21)
  %23 = load %struct.cpio*, %struct.cpio** %3, align 8
  %24 = getelementptr inbounds %struct.cpio, %struct.cpio* %23, i32 0, i32 1
  store %struct.archive_string_conv* %22, %struct.archive_string_conv** %24, align 8
  %25 = load %struct.cpio*, %struct.cpio** %3, align 8
  %26 = getelementptr inbounds %struct.cpio, %struct.cpio* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.cpio*, %struct.cpio** %3, align 8
  %29 = getelementptr inbounds %struct.cpio, %struct.cpio* %28, i32 0, i32 1
  %30 = load %struct.archive_string_conv*, %struct.archive_string_conv** %29, align 8
  store %struct.archive_string_conv* %30, %struct.archive_string_conv** %4, align 8
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.archive_string_conv*, %struct.archive_string_conv** %4, align 8
  ret %struct.archive_string_conv* %32
}

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
