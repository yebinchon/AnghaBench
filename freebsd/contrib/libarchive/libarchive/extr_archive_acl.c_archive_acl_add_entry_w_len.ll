; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry_w_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry_w_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }
%struct.archive_acl_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_add_entry_w_len(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_acl*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %17 = load %struct.archive_acl*, %struct.archive_acl** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @acl_special(%struct.archive_acl* %17, i32 %18, i32 %19, i32 %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %24, i32* %8, align 4
  br label %58

25:                                               ; preds = %7
  %26 = load %struct.archive_acl*, %struct.archive_acl** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl* %26, i32 %27, i32 %28, i32 %29, i32 %30)
  store %struct.archive_acl_entry* %31, %struct.archive_acl_entry** %16, align 8
  %32 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %33 = icmp eq %struct.archive_acl_entry* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %35, i32* %8, align 4
  br label %58

36:                                               ; preds = %25
  %37 = load i32*, i32** %14, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i32*, i32** %14, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i64, i64* %15, align 8
  %45 = icmp ugt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %48 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %47, i32 0, i32 0
  %49 = load i32*, i32** %14, align 8
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @archive_mstring_copy_wcs_len(i32* %48, i32* %49, i64 %50)
  br label %56

52:                                               ; preds = %43, %39, %36
  %53 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %16, align 8
  %54 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %53, i32 0, i32 0
  %55 = call i32 @archive_mstring_clean(i32* %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %34, %23
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local i64 @acl_special(%struct.archive_acl*, i32, i32, i32) #1

declare dso_local %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl*, i32, i32, i32, i32) #1

declare dso_local i32 @archive_mstring_copy_wcs_len(i32*, i32*, i64) #1

declare dso_local i32 @archive_mstring_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
