; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_get_tempdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_util.c_get_tempdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8*, i32 }

@.str = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/tmp\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@_PATH_TMP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*)* @get_tempdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_tempdir(%struct.archive_string* %0) #0 {
  %2 = alloca %struct.archive_string*, align 8
  %3 = alloca i8*, align 8
  store %struct.archive_string* %0, %struct.archive_string** %2, align 8
  %4 = call i8* @getenv(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %8

8:                                                ; preds = %7, %1
  %9 = load %struct.archive_string*, %struct.archive_string** %2, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @archive_strcpy(%struct.archive_string* %9, i8* %10)
  %12 = load %struct.archive_string*, %struct.archive_string** %2, align 8
  %13 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load %struct.archive_string*, %struct.archive_string** %2, align 8
  %16 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sub nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %14, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 47
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load %struct.archive_string*, %struct.archive_string** %2, align 8
  %26 = call i32 @archive_strappend_char(%struct.archive_string* %25, i8 signext 47)
  br label %27

27:                                               ; preds = %24, %8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %28
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
