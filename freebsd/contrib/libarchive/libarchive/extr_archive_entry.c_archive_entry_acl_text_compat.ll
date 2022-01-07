; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_text_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_entry.c_archive_entry_acl_text_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARCHIVE_ENTRY_ACL_TYPE_POSIX1E = common dso_local global i32 0, align 4
@OLD_ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID = common dso_local global i32 0, align 4
@OLD_ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @archive_entry_acl_text_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_entry_acl_text_compat(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32*, i32** %3, align 8
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_POSIX1E, align 4
  %7 = and i32 %5, %6
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @OLD_ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %17
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OLD_ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_MARK_DEFAULT, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA, align 4
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %33
  store i32 %36, i32* %34, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %32, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
