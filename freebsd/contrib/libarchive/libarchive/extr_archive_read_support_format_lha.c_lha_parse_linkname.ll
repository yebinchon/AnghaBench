; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_parse_linkname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_lha.c_lha_parse_linkname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_string = type { i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_string*, %struct.archive_string*)* @lha_parse_linkname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lha_parse_linkname(%struct.archive_string* %0, %struct.archive_string* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_string*, align 8
  %5 = alloca %struct.archive_string*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.archive_string* %0, %struct.archive_string** %4, align 8
  store %struct.archive_string* %1, %struct.archive_string** %5, align 8
  %8 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %9 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = call i8* @strchr(i8* %10, i8 signext 124)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 1
  %17 = call i8* @strlen(i8* %16)
  %18 = ptrtoint i8* %17 to i64
  store i64 %18, i64* %7, align 8
  %19 = load %struct.archive_string*, %struct.archive_string** %4, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @archive_strncpy(%struct.archive_string* %19, i8* %21, i64 %22)
  %24 = load i8*, i8** %6, align 8
  store i8 0, i8* %24, align 1
  %25 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %26 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @strlen(i8* %27)
  %29 = load %struct.archive_string*, %struct.archive_string** %5, align 8
  %30 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @archive_strncpy(%struct.archive_string*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
