; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute_xattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"LIBARCHIVE.xattr.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_entry*, i8*, i8*)* @pax_attribute_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pax_attribute_xattr(%struct.archive_entry* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = icmp slt i32 %12, 18
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @memcmp(i8* %15, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 17)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14, %3
  store i32 3, i32* %4, align 4
  br label %47

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 17
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @url_decode(i8* %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 2, i32* %4, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = call i8* @base64_decode(i8* %28, i32 %30, i64* %10)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i8*, i8** %8, align 8
  %36 = call i32 @free(i8* %35)
  store i32 1, i32* %4, align 4
  br label %47

37:                                               ; preds = %27
  %38 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @archive_entry_xattr_add_entry(%struct.archive_entry* %38, i8* %39, i8* %40, i64 %41)
  %43 = load i8*, i8** %8, align 8
  %44 = call i32 @free(i8* %43)
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 @free(i8* %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %37, %34, %26, %18
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i8* @url_decode(i8*) #1

declare dso_local i8* @base64_decode(i8*, i32, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_entry_xattr_add_entry(%struct.archive_entry*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
