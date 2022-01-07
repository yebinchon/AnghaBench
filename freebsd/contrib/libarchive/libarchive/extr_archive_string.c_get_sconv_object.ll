; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_get_sconv_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c_get_sconv_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string_conv = type { i64 }
%struct.archive = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Could not allocate memory for a string conversion object\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"A character-set conversion not fully supported on this platform\00", align 1
@SCONV_TO_CHARSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.archive_string_conv* (%struct.archive*, i8*, i8*, i32)* @get_sconv_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.archive_string_conv* @get_sconv_object(%struct.archive* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.archive_string_conv*, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive_string_conv*, align 8
  %11 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.archive*, %struct.archive** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.archive_string_conv* @find_sconv_object(%struct.archive* %12, i8* %13, i8* %14)
  store %struct.archive_string_conv* %15, %struct.archive_string_conv** %10, align 8
  %16 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %17 = icmp ne %struct.archive_string_conv* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  store %struct.archive_string_conv* %19, %struct.archive_string_conv** %5, align 8
  br label %71

20:                                               ; preds = %4
  %21 = load %struct.archive*, %struct.archive** %6, align 8
  %22 = icmp eq %struct.archive* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = call i32 (...) @get_current_codepage()
  store i32 %24, i32* %11, align 4
  br label %29

25:                                               ; preds = %20
  %26 = load %struct.archive*, %struct.archive** %6, align 8
  %27 = getelementptr inbounds %struct.archive, %struct.archive* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @canonical_charset_name(i8* %30)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 @canonical_charset_name(i8* %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call %struct.archive_string_conv* @create_sconv_object(i32 %31, i32 %33, i32 %34, i32 %35)
  store %struct.archive_string_conv* %36, %struct.archive_string_conv** %10, align 8
  %37 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %38 = icmp eq %struct.archive_string_conv* %37, null
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.archive*, %struct.archive** %6, align 8
  %41 = icmp ne %struct.archive* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.archive*, %struct.archive** %6, align 8
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %43, i32 %44, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %39
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %5, align 8
  br label %71

47:                                               ; preds = %29
  %48 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %49 = getelementptr inbounds %struct.archive_string_conv, %struct.archive_string_conv* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.archive*, %struct.archive** %6, align 8
  %54 = icmp ne %struct.archive* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.archive*, %struct.archive** %6, align 8
  %57 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %58 = call i32 (%struct.archive*, i32, i8*, ...) @archive_set_error(%struct.archive* %56, i32 %57, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %61 = call i32 @free_sconv_object(%struct.archive_string_conv* %60)
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %5, align 8
  br label %71

62:                                               ; preds = %47
  %63 = load %struct.archive*, %struct.archive** %6, align 8
  %64 = icmp ne %struct.archive* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.archive*, %struct.archive** %6, align 8
  %67 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  %68 = call i32 @add_sconv_object(%struct.archive* %66, %struct.archive_string_conv* %67)
  br label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.archive_string_conv*, %struct.archive_string_conv** %10, align 8
  store %struct.archive_string_conv* %70, %struct.archive_string_conv** %5, align 8
  br label %71

71:                                               ; preds = %69, %59, %46, %18
  %72 = load %struct.archive_string_conv*, %struct.archive_string_conv** %5, align 8
  ret %struct.archive_string_conv* %72
}

declare dso_local %struct.archive_string_conv* @find_sconv_object(%struct.archive*, i8*, i8*) #1

declare dso_local i32 @get_current_codepage(...) #1

declare dso_local %struct.archive_string_conv* @create_sconv_object(i32, i32, i32, i32) #1

declare dso_local i32 @canonical_charset_name(i8*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, ...) #1

declare dso_local i32 @free_sconv_object(%struct.archive_string_conv*) #1

declare dso_local i32 @add_sconv_object(%struct.archive*, %struct.archive_string_conv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
