; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_lrzip.c_archive_write_lrzip_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.write_lrzip = type { i32, i64, i32 }
%struct.archive_string = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"lrzip -q\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" -b\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" -g\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" -l\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c" -n\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" -z\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c" -L \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_write_lrzip_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_lrzip_open(%struct.archive_write_filter* %0) #0 {
  %2 = alloca %struct.archive_write_filter*, align 8
  %3 = alloca %struct.write_lrzip*, align 8
  %4 = alloca %struct.archive_string, align 4
  %5 = alloca i32, align 4
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %2, align 8
  %6 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %7 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.write_lrzip*
  store %struct.write_lrzip* %9, %struct.write_lrzip** %3, align 8
  %10 = call i32 @archive_string_init(%struct.archive_string* %4)
  %11 = call i32 @archive_strcpy(%struct.archive_string* %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %13 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %26 [
    i32 131, label %15
    i32 133, label %16
    i32 132, label %18
    i32 130, label %20
    i32 129, label %22
    i32 128, label %24
  ]

15:                                               ; preds = %1
  br label %26

16:                                               ; preds = %1
  %17 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %26

18:                                               ; preds = %1
  %19 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %26

20:                                               ; preds = %1
  %21 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %26

22:                                               ; preds = %1
  %23 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %26

24:                                               ; preds = %1
  %25 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  br label %26

26:                                               ; preds = %1, %24, %22, %20, %18, %16, %15
  %27 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %28 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = call i32 @archive_strcat(%struct.archive_string* %4, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %33 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %34 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 48, %35
  %37 = call i32 @archive_strappend_char(%struct.archive_string* %4, i64 %36)
  br label %38

38:                                               ; preds = %31, %26
  %39 = load %struct.archive_write_filter*, %struct.archive_write_filter** %2, align 8
  %40 = load %struct.write_lrzip*, %struct.write_lrzip** %3, align 8
  %41 = getelementptr inbounds %struct.write_lrzip, %struct.write_lrzip* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @__archive_write_program_open(%struct.archive_write_filter* %39, i32 %42, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = call i32 @archive_string_free(%struct.archive_string* %4)
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strcat(%struct.archive_string*, i8*) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_string*, i64) #1

declare dso_local i32 @__archive_write_program_open(%struct.archive_write_filter*, i32, i32) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
