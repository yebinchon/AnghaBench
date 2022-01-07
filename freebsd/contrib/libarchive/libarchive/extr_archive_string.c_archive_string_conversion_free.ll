; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_conversion_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_conversion_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32*, %struct.archive_string_conv* }
%struct.archive_string_conv = type { %struct.archive_string_conv* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_string_conversion_free(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_string_conv*, align 8
  %4 = alloca %struct.archive_string_conv*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = getelementptr inbounds %struct.archive, %struct.archive* %5, i32 0, i32 1
  %7 = load %struct.archive_string_conv*, %struct.archive_string_conv** %6, align 8
  store %struct.archive_string_conv* %7, %struct.archive_string_conv** %3, align 8
  br label %8

8:                                                ; preds = %17, %1
  %9 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %10 = icmp ne %struct.archive_string_conv* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %13 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %12, i32 0, i32 0
  %14 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  store %struct.archive_string_conv* %14, %struct.archive_string_conv** %4, align 8
  %15 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %16 = call i32 @free_sconv_object(%struct.archive_string_conv* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load %struct.archive_string_conv*, %struct.archive_string_conv** %4, align 8
  store %struct.archive_string_conv* %18, %struct.archive_string_conv** %3, align 8
  br label %8

19:                                               ; preds = %8
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = getelementptr inbounds %struct.archive, %struct.archive* %20, i32 0, i32 1
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %21, align 8
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = getelementptr inbounds %struct.archive, %struct.archive* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @free(i32* %24)
  %26 = load %struct.archive*, %struct.archive** %2, align 8
  %27 = getelementptr inbounds %struct.archive, %struct.archive* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  ret void
}

declare dso_local i32 @free_sconv_object(%struct.archive_string_conv*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
