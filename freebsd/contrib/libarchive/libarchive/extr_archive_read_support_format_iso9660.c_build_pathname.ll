; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_build_pathname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_build_pathname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8* }
%struct.file_info = type { i32, %struct.file_info* }

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.archive_string*, %struct.file_info*, i32)* @build_pathname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @build_pathname(%struct.archive_string* %0, %struct.file_info* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive_string*, align 8
  %6 = alloca %struct.file_info*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_string* %0, %struct.archive_string** %5, align 8
  store %struct.file_info* %1, %struct.file_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1000
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %53

11:                                               ; preds = %3
  %12 = load %struct.file_info*, %struct.file_info** %6, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 1
  %14 = load %struct.file_info*, %struct.file_info** %13, align 8
  %15 = icmp ne %struct.file_info* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %11
  %17 = load %struct.file_info*, %struct.file_info** %6, align 8
  %18 = getelementptr inbounds %struct.file_info, %struct.file_info* %17, i32 0, i32 1
  %19 = load %struct.file_info*, %struct.file_info** %18, align 8
  %20 = getelementptr inbounds %struct.file_info, %struct.file_info* %19, i32 0, i32 0
  %21 = call i64 @archive_strlen(i32* %20)
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %16
  %24 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %25 = load %struct.file_info*, %struct.file_info** %6, align 8
  %26 = getelementptr inbounds %struct.file_info, %struct.file_info* %25, i32 0, i32 1
  %27 = load %struct.file_info*, %struct.file_info** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = call i8* @build_pathname(%struct.archive_string* %24, %struct.file_info* %27, i32 %29)
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i8* null, i8** %4, align 8
  br label %53

33:                                               ; preds = %23
  %34 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %35 = call i32 @archive_strcat(%struct.archive_string* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %16, %11
  %37 = load %struct.file_info*, %struct.file_info** %6, align 8
  %38 = getelementptr inbounds %struct.file_info, %struct.file_info* %37, i32 0, i32 0
  %39 = call i64 @archive_strlen(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %43 = call i32 @archive_strcat(%struct.archive_string* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %49

44:                                               ; preds = %36
  %45 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %46 = load %struct.file_info*, %struct.file_info** %6, align 8
  %47 = getelementptr inbounds %struct.file_info, %struct.file_info* %46, i32 0, i32 0
  %48 = call i32 @archive_string_concat(%struct.archive_string* %45, i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %51 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  store i8* %52, i8** %4, align 8
  br label %53

53:                                               ; preds = %49, %32, %10
  %54 = load i8*, i8** %4, align 8
  ret i8* %54
}

declare dso_local i64 @archive_strlen(i32*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_string_concat(%struct.archive_string*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
