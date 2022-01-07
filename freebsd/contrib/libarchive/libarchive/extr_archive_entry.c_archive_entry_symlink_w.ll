; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_symlink_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_symlink_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32, i32 }

@AE_SET_SYMLINK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @archive_entry_symlink_w(%struct.archive_entry* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i32*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  %5 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %6 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AE_SET_SYMLINK, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %17 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %16, i32 0, i32 1
  %18 = call i64 @archive_mstring_get_wcs(i32 %15, i32* %17, i32** %4)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %29

22:                                               ; preds = %12
  %23 = load i64, i64* @errno, align 8
  %24 = load i64, i64* @ENOMEM, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %22
  store i32* null, i32** %2, align 8
  br label %29

29:                                               ; preds = %28, %20, %11
  %30 = load i32*, i32** %2, align 8
  ret i32* %30
}

declare dso_local i64 @archive_mstring_get_wcs(i32, i32*, i32**) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
