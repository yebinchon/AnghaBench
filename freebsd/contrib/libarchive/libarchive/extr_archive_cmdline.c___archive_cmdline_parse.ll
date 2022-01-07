; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_cmdline.c___archive_cmdline_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_cmdline.c___archive_cmdline_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_cmdline = type { i32 }
%struct.archive_string = type { i8* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_cmdline_parse(%struct.archive_cmdline* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_cmdline*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive_string, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.archive_cmdline* %0, %struct.archive_cmdline** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = call i32 @archive_string_init(%struct.archive_string* %5)
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @get_argument(%struct.archive_string* %5, i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %15, i32* %8, align 4
  br label %89

16:                                               ; preds = %2
  %17 = call i64 @archive_strlen(%struct.archive_string* %5)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %20, i32* %8, align 4
  br label %89

21:                                               ; preds = %16
  %22 = load %struct.archive_cmdline*, %struct.archive_cmdline** %3, align 8
  %23 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cmdline_set_path(%struct.archive_cmdline* %22, i8* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %89

30:                                               ; preds = %21
  %31 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strrchr(i8* %32, i8 signext 47)
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %6, align 8
  br label %42

39:                                               ; preds = %30
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.archive_cmdline*, %struct.archive_cmdline** %3, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @cmdline_add_arg(%struct.archive_cmdline* %43, i8* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %89

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 %51
  store i8* %53, i8** %4, align 8
  br label %54

54:                                               ; preds = %86, %50
  %55 = load i8*, i8** %4, align 8
  %56 = call i64 @get_argument(%struct.archive_string* %5, i8* %55)
  store i64 %56, i64* %7, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %60, i32* %8, align 4
  br label %89

61:                                               ; preds = %54
  %62 = load i64, i64* %7, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  br label %87

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  %67 = load i8*, i8** %4, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 %66
  store i8* %68, i8** %4, align 8
  %69 = call i64 @archive_strlen(%struct.archive_string* %5)
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i8*, i8** %4, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %87

77:                                               ; preds = %71, %65
  %78 = load %struct.archive_cmdline*, %struct.archive_cmdline** %3, align 8
  %79 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %5, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @cmdline_add_arg(%struct.archive_cmdline* %78, i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @ARCHIVE_OK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %89

86:                                               ; preds = %77
  br label %54

87:                                               ; preds = %76, %64
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %87, %85, %59, %49, %29, %19, %14
  %90 = call i32 @archive_string_free(%struct.archive_string* %5)
  %91 = load i32, i32* %8, align 4
  ret i32 %91
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i64 @get_argument(%struct.archive_string*, i8*) #1

declare dso_local i64 @archive_strlen(%struct.archive_string*) #1

declare dso_local i32 @cmdline_set_path(%struct.archive_cmdline*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @cmdline_add_arg(%struct.archive_cmdline*, i8*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
