; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32, i32 }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"No memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_entry_acl_next(%struct.archive_entry* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i8** %6) #0 {
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i8** %6, i8*** %14, align 8
  %16 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %17 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %20 = getelementptr inbounds %struct.archive_entry, %struct.archive_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %9, align 4
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %11, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = load i8**, i8*** %14, align 8
  %27 = call i32 @archive_acl_next(i32 %18, i32* %20, i32 %21, i32* %22, i32* %23, i32* %24, i32* %25, i8** %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %7
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @ENOMEM, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @__archive_errx(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %31, %7
  %38 = load i32, i32* %15, align 4
  ret i32 %38
}

declare dso_local i32 @archive_acl_next(i32, i32*, i32, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i32 @__archive_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
