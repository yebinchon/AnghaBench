; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_get_sconv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_zip.c_get_sconv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32 }
%struct.archive_write = type { i32 }
%struct.zip = type { i32, %struct.archive_string_conv*, %struct.archive_string_conv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_string_conv* (%struct.archive_write*, %struct.zip*)* @get_sconv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_string_conv* @get_sconv(%struct.archive_write* %0, %struct.zip* %1) #0 {
  %3 = alloca %struct.archive_string_conv*, align 8
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.zip*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.zip* %1, %struct.zip** %5, align 8
  %6 = load %struct.zip*, %struct.zip** %5, align 8
  %7 = getelementptr inbounds %struct.zip, %struct.zip* %6, i32 0, i32 2
  %8 = load %struct.archive_string_conv*, %struct.archive_string_conv** %7, align 8
  %9 = icmp ne %struct.archive_string_conv* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.zip*, %struct.zip** %5, align 8
  %12 = getelementptr inbounds %struct.zip, %struct.zip* %11, i32 0, i32 2
  %13 = load %struct.archive_string_conv*, %struct.archive_string_conv** %12, align 8
  store %struct.archive_string_conv* %13, %struct.archive_string_conv** %3, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.zip*, %struct.zip** %5, align 8
  %16 = getelementptr inbounds %struct.zip, %struct.zip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %14
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 0
  %22 = call %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32* %21)
  %23 = load %struct.zip*, %struct.zip** %5, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 1
  store %struct.archive_string_conv* %22, %struct.archive_string_conv** %24, align 8
  %25 = load %struct.zip*, %struct.zip** %5, align 8
  %26 = getelementptr inbounds %struct.zip, %struct.zip* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  br label %27

27:                                               ; preds = %19, %14
  %28 = load %struct.zip*, %struct.zip** %5, align 8
  %29 = getelementptr inbounds %struct.zip, %struct.zip* %28, i32 0, i32 1
  %30 = load %struct.archive_string_conv*, %struct.archive_string_conv** %29, align 8
  store %struct.archive_string_conv* %30, %struct.archive_string_conv** %3, align 8
  br label %31

31:                                               ; preds = %27, %10
  %32 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  ret %struct.archive_string_conv* %32
}

declare dso_local %struct.archive_string_conv* @archive_string_default_conversion_for_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
