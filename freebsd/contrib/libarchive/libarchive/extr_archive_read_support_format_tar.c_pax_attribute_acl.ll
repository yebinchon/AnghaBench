; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute_acl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32* }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"SCHILY.acl.access\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"SCHILY.acl.default\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"SCHILY.acl.ace\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Unknown ACL type: %d\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Can't allocate memory for \00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Parse error: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i32)* @pax_attribute_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pax_attribute_acl(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  switch i32 %14, label %18 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

15:                                               ; preds = %5
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  br label %25

16:                                               ; preds = %5
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8** %13, align 8
  br label %25

17:                                               ; preds = %5
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  br label %25

18:                                               ; preds = %5
  %19 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 0
  %21 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %20, i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %24, i32* %6, align 4
  br label %74

25:                                               ; preds = %17, %16, %15
  %26 = load %struct.tar*, %struct.tar** %8, align 8
  %27 = getelementptr inbounds %struct.tar, %struct.tar* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %25
  %31 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %32 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %31, i32 0, i32 0
  %33 = call i32* @archive_string_conversion_from_charset(i32* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1)
  %34 = load %struct.tar*, %struct.tar** %8, align 8
  %35 = getelementptr inbounds %struct.tar, %struct.tar* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.tar*, %struct.tar** %8, align 8
  %37 = getelementptr inbounds %struct.tar, %struct.tar* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %6, align 4
  br label %74

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %45 = call i32 @archive_entry_acl(%struct.archive_entry* %44)
  %46 = load i8*, i8** %10, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.tar*, %struct.tar** %8, align 8
  %49 = getelementptr inbounds %struct.tar, %struct.tar* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @archive_acl_from_text_l(i32 %45, i8* %46, i32 %47, i32* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @ARCHIVE_FATAL, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %61 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %60, i32 0, i32 0
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = load i8*, i8** %13, align 8
  %64 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %61, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %12, align 4
  store i32 %65, i32* %6, align 4
  br label %74

66:                                               ; preds = %55
  %67 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %68 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %67, i32 0, i32 0
  %69 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  br label %72

72:                                               ; preds = %66, %43
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %59, %40, %18
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i32 @archive_acl_from_text_l(i32, i8*, i32, i32*) #1

declare dso_local i32 @archive_entry_acl(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
