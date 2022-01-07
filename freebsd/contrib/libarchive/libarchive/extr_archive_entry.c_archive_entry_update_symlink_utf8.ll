; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_update_symlink_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_update_symlink_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32, i32 }

@AE_SET_SYMLINK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_entry_update_symlink_utf8(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i8*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @AE_SET_SYMLINK, align 4
  %10 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %11 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @AE_SET_SYMLINK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %18 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %23 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %26 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %25, i32 0, i32 0
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @archive_mstring_update_utf8(i32 %24, i32* %26, i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @archive_mstring_update_utf8(i32, i32*, i8*) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
