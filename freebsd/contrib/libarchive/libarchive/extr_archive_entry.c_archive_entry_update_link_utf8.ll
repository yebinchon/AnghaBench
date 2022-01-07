; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_update_link_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_update_link_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32, i32, i32 }

@AE_SET_SYMLINK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_entry_update_link_utf8(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %8 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @AE_SET_SYMLINK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %15 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %18 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %17, i32 0, i32 3
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @archive_mstring_update_utf8(i32 %16, i32* %18, i8* %19)
  store i32 %20, i32* %6, align 4
  br label %29

21:                                               ; preds = %2
  %22 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %23 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %26 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %25, i32 0, i32 1
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @archive_mstring_update_utf8(i32 %24, i32* %26, i8* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %21, %13
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %40

33:                                               ; preds = %29
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @ENOMEM, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %33
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @archive_mstring_update_utf8(i32, i32*, i8*) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
