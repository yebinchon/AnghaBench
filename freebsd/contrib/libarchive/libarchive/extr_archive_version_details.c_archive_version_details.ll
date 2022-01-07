; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_version_details.c_archive_version_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_version_details.c_archive_version_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8* }

@archive_version_details.str = internal global %struct.archive_string zeroinitializer, align 8
@archive_version_details.init = internal global i32 0, align 4
@ARCHIVE_VERSION_STRING = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c" zlib/\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c" liblzma/\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" bz2lib/\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c" liblz4/\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c" libzstd/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @archive_version_details() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = call i8* (...) @archive_zlib_version()
  store i8* %8, i8** %1, align 8
  %9 = call i8* (...) @archive_liblzma_version()
  store i8* %9, i8** %2, align 8
  %10 = call i8* (...) @archive_bzlib_version()
  store i8* %10, i8** %3, align 8
  %11 = call i8* (...) @archive_liblz4_version()
  store i8* %11, i8** %4, align 8
  %12 = call i8* (...) @archive_libzstd_version()
  store i8* %12, i8** %5, align 8
  %13 = load i32, i32* @archive_version_details.init, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %72, label %15

15:                                               ; preds = %0
  %16 = call i32 @archive_string_init(%struct.archive_string* @archive_version_details.str)
  %17 = load i8*, i8** @ARCHIVE_VERSION_STRING, align 8
  %18 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* %17)
  %19 = load i8*, i8** %1, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load i8*, i8** %1, align 8
  %24 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i8*, i8** %2, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %3, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %57

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 44)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 @strlen(i8* %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8* %46, i8** %7, align 8
  br label %47

47:                                               ; preds = %41, %35
  %48 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i8*, i8** %6, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @archive_strncat(%struct.archive_string* @archive_version_details.str, i8* %49, i32 %55)
  br label %57

57:                                               ; preds = %47, %32
  %58 = load i8*, i8** %4, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i8*, i8** %5, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i8*, i8** %5, align 8
  %70 = call i32 @archive_strcat(%struct.archive_string* @archive_version_details.str, i8* %69)
  br label %71

71:                                               ; preds = %67, %64
  br label %72

72:                                               ; preds = %71, %0
  %73 = load i8*, i8** getelementptr inbounds (%struct.archive_string, %struct.archive_string* @archive_version_details.str, i32 0, i32 0), align 8
  ret i8* %73
}

declare dso_local i8* @archive_zlib_version(...) #1

declare dso_local i8* @archive_liblzma_version(...) #1

declare dso_local i8* @archive_bzlib_version(...) #1

declare dso_local i8* @archive_liblz4_version(...) #1

declare dso_local i8* @archive_libzstd_version(...) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_strncat(%struct.archive_string*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
