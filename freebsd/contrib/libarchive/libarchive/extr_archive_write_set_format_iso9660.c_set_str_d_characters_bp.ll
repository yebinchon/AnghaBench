; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_str_d_characters_bp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_str_d_characters_bp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }

@d_characters_map = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@d1_characters_map = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i32, i32, i8*, i32)* @set_str_d_characters_bp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_str_d_characters_bp(%struct.archive_write* %0, i8* %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.archive_write*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  switch i32 %14, label %54 [
    i32 130, label %15
    i32 131, label %28
    i32 129, label %41
    i32 128, label %41
  ]

15:                                               ; preds = %6
  %16 = load i8*, i8** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = load i8*, i8** %11, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @d_characters_map, align 4
  %26 = call i32 @set_str(i8* %19, i8* %20, i32 %24, i32 32, i32 %25)
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %13, align 4
  br label %56

28:                                               ; preds = %6
  %29 = load i8*, i8** %8, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  %33 = load i8*, i8** %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %34, %35
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* @d1_characters_map, align 4
  %39 = call i32 @set_str(i8* %32, i8* %33, i32 %37, i32 32, i32 %38)
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %13, align 4
  br label %56

41:                                               ; preds = %6, %6
  %42 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8*, i8** %11, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @set_str_utf16be(%struct.archive_write* %42, i8* %46, i8* %47, i32 %51, i32 32, i32 %52)
  store i32 %53, i32* %13, align 4
  br label %56

54:                                               ; preds = %6
  %55 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %41, %28, %15
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

declare dso_local i32 @set_str(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @set_str_utf16be(%struct.archive_write*, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
