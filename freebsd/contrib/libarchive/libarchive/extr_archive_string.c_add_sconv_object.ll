; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_add_sconv_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_add_sconv_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { %struct.archive_string_conv* }
%struct.archive_string_conv = type { %struct.archive_string_conv* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, %struct.archive_string_conv*)* @add_sconv_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_sconv_object(%struct.archive* %0, %struct.archive_string_conv* %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_string_conv*, align 8
  %5 = alloca %struct.archive_string_conv**, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store %struct.archive_string_conv* %1, %struct.archive_string_conv** %4, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = getelementptr inbounds %struct.archive, %struct.archive* %6, i32 0, i32 0
  store %struct.archive_string_conv** %7, %struct.archive_string_conv*** %5, align 8
  br label %8

8:                                                ; preds = %12, %2
  %9 = load %struct.archive_string_conv**, %struct.archive_string_conv*** %5, align 8
  %10 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %11 = icmp ne %struct.archive_string_conv* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = load %struct.archive_string_conv**, %struct.archive_string_conv*** %5, align 8
  %14 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %15 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %14, i32 0, i32 0
  store %struct.archive_string_conv** %15, %struct.archive_string_conv*** %5, align 8
  br label %8

16:                                               ; preds = %8
  %17 = load %struct.archive_string_conv*, %struct.archive_string_conv** %4, align 8
  %18 = load %struct.archive_string_conv**, %struct.archive_string_conv*** %5, align 8
  store %struct.archive_string_conv* %17, %struct.archive_string_conv** %18, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
