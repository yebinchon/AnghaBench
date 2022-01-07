; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_NM1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_parse_rockridge_NM1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_info = type { i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.file_info*, i8*, i32)* @parse_rockridge_NM1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_rockridge_NM1(%struct.file_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.file_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.file_info* %0, %struct.file_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.file_info*, %struct.file_info** %4, align 8
  %8 = getelementptr inbounds %struct.file_info, %struct.file_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load %struct.file_info*, %struct.file_info** %4, align 8
  %13 = getelementptr inbounds %struct.file_info, %struct.file_info* %12, i32 0, i32 1
  %14 = call i32 @archive_string_empty(i32* %13)
  br label %15

15:                                               ; preds = %11, %3
  %16 = load %struct.file_info*, %struct.file_info** %4, align 8
  %17 = getelementptr inbounds %struct.file_info, %struct.file_info* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  br label %61

21:                                               ; preds = %15
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  switch i32 %25, label %60 [
    i32 0, label %26
    i32 1, label %38
    i32 2, label %52
    i32 4, label %56
  ]

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  br label %61

30:                                               ; preds = %26
  %31 = load %struct.file_info*, %struct.file_info** %4, align 8
  %32 = getelementptr inbounds %struct.file_info, %struct.file_info* %31, i32 0, i32 1
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = call i32 @archive_strncat(i32* %32, i8* %34, i32 %36)
  br label %61

38:                                               ; preds = %21
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  br label %61

42:                                               ; preds = %38
  %43 = load %struct.file_info*, %struct.file_info** %4, align 8
  %44 = getelementptr inbounds %struct.file_info, %struct.file_info* %43, i32 0, i32 1
  %45 = load i8*, i8** %5, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = load i32, i32* %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = call i32 @archive_strncat(i32* %44, i8* %46, i32 %48)
  %50 = load %struct.file_info*, %struct.file_info** %4, align 8
  %51 = getelementptr inbounds %struct.file_info, %struct.file_info* %50, i32 0, i32 0
  store i32 1, i32* %51, align 4
  br label %61

52:                                               ; preds = %21
  %53 = load %struct.file_info*, %struct.file_info** %4, align 8
  %54 = getelementptr inbounds %struct.file_info, %struct.file_info* %53, i32 0, i32 1
  %55 = call i32 @archive_strcat(i32* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %61

56:                                               ; preds = %21
  %57 = load %struct.file_info*, %struct.file_info** %4, align 8
  %58 = getelementptr inbounds %struct.file_info, %struct.file_info* %57, i32 0, i32 1
  %59 = call i32 @archive_strcat(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %61

60:                                               ; preds = %21
  br label %61

61:                                               ; preds = %20, %29, %41, %60, %56, %52, %42, %30
  ret void
}

declare dso_local i32 @archive_string_empty(i32*) #1

declare dso_local i32 @archive_strncat(i32*, i8*, i32) #1

declare dso_local i32 @archive_strcat(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
