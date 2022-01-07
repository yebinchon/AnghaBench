; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_set_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry_link_resolver.c_archive_entry_linkresolver_set_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry_linkresolver = type { i8* }

@ARCHIVE_FORMAT_BASE_MASK = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO = common dso_local global i8* null, align 8
@ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO = common dso_local global i8* null, align 8
@ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE = common dso_local global i8* null, align 8
@ARCHIVE_ENTRY_LINKIFY_LIKE_TAR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @archive_entry_linkresolver_set_strategy(%struct.archive_entry_linkresolver* %0, i32 %1) #0 {
  %3 = alloca %struct.archive_entry_linkresolver*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.archive_entry_linkresolver* %0, %struct.archive_entry_linkresolver** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %33 [
    i32 138, label %10
    i32 137, label %10
    i32 128, label %10
    i32 136, label %14
    i32 132, label %25
    i32 133, label %29
    i32 131, label %29
    i32 130, label %29
    i32 129, label %29
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO, align 8
  %12 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %13 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %20 [
    i32 134, label %16
    i32 135, label %16
  ]

16:                                               ; preds = %14, %14
  %17 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_NEW_CPIO, align 8
  %18 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %19 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  br label %24

20:                                               ; preds = %14
  %21 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO, align 8
  %22 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %23 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  br label %37

25:                                               ; preds = %2
  %26 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_MTREE, align 8
  %27 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %28 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %37

29:                                               ; preds = %2, %2, %2, %2
  %30 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_TAR, align 8
  %31 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %32 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load i8*, i8** @ARCHIVE_ENTRY_LINKIFY_LIKE_OLD_CPIO, align 8
  %35 = load %struct.archive_entry_linkresolver*, %struct.archive_entry_linkresolver** %3, align 8
  %36 = getelementptr inbounds %struct.archive_entry_linkresolver, %struct.archive_entry_linkresolver* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %33, %29, %25, %24, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
