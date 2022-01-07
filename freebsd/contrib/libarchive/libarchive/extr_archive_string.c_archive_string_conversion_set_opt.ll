; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_conversion_set_opt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_archive_string_conversion_set_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i32 }

@SCONV_UTF8_LIBARCHIVE_2 = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_C = common dso_local global i32 0, align 4
@SCONV_NORMALIZATION_D = common dso_local global i32 0, align 4
@SCONV_FROM_UTF16 = common dso_local global i32 0, align 4
@SCONV_FROM_UTF8 = common dso_local global i32 0, align 4
@SCONV_TO_UTF16 = common dso_local global i32 0, align 4
@SCONV_TO_UTF8 = common dso_local global i32 0, align 4
@SCONV_WIN_CP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_string_conversion_set_opt(%struct.archive_string_conv* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_string_conv*, align 8
  %4 = alloca i32, align 4
  store %struct.archive_string_conv* %0, %struct.archive_string_conv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %66 [
    i32 128, label %6
    i32 130, label %22
    i32 129, label %44
  ]

6:                                                ; preds = %2
  %7 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %8 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SCONV_UTF8_LIBARCHIVE_2, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load i32, i32* @SCONV_UTF8_LIBARCHIVE_2, align 4
  %15 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %16 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %20 = call i32 @setup_converter(%struct.archive_string_conv* %19)
  br label %21

21:                                               ; preds = %13, %6
  br label %67

22:                                               ; preds = %2
  %23 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %24 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %31 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %32 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %38 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %42 = call i32 @setup_converter(%struct.archive_string_conv* %41)
  br label %43

43:                                               ; preds = %29, %22
  br label %67

44:                                               ; preds = %2
  %45 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %46 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %44
  %52 = load i32, i32* @SCONV_NORMALIZATION_D, align 4
  %53 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %54 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* @SCONV_NORMALIZATION_C, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %60 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.archive_string_conv*, %struct.archive_string_conv** %3, align 8
  %64 = call i32 @setup_converter(%struct.archive_string_conv* %63)
  br label %65

65:                                               ; preds = %51, %44
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %66, %65, %43, %21
  ret void
}

declare dso_local i32 @setup_converter(%struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
