; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry_len_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry_len_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }
%struct.archive_string_conv = type { i32 }
%struct.archive_acl_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_acl*, i32, i32, i32, i32, i8*, i64, %struct.archive_string_conv*)* @archive_acl_add_entry_len_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_acl_add_entry_len_l(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i64 %6, %struct.archive_string_conv* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive_acl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.archive_string_conv*, align 8
  %18 = alloca %struct.archive_acl_entry*, align 8
  %19 = alloca i32, align 4
  store %struct.archive_acl* %0, %struct.archive_acl** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.archive_string_conv* %7, %struct.archive_string_conv** %17, align 8
  %20 = load %struct.archive_acl*, %struct.archive_acl** %10, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @acl_special(%struct.archive_acl* %20, i32 %21, i32 %22, i32 %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %9, align 4
  br label %74

28:                                               ; preds = %8
  %29 = load %struct.archive_acl*, %struct.archive_acl** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store %struct.archive_acl_entry* %34, %struct.archive_acl_entry** %18, align 8
  %35 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %18, align 8
  %36 = icmp eq %struct.archive_acl_entry* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %38, i32* %9, align 4
  br label %74

39:                                               ; preds = %28
  %40 = load i8*, i8** %15, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %57

42:                                               ; preds = %39
  %43 = load i8*, i8** %15, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64, i64* %16, align 8
  %49 = icmp ugt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %18, align 8
  %52 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %51, i32 0, i32 0
  %53 = load i8*, i8** %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load %struct.archive_string_conv*, %struct.archive_string_conv** %17, align 8
  %56 = call i32 @archive_mstring_copy_mbs_len_l(i32* %52, i8* %53, i64 %54, %struct.archive_string_conv* %55)
  store i32 %56, i32* %19, align 4
  br label %61

57:                                               ; preds = %47, %42, %39
  store i32 0, i32* %19, align 4
  %58 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %18, align 8
  %59 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %58, i32 0, i32 0
  %60 = call i32 @archive_mstring_clean(i32* %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i32, i32* %19, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %65, i32* %9, align 4
  br label %74

66:                                               ; preds = %61
  %67 = load i64, i64* @errno, align 8
  %68 = load i64, i64* @ENOMEM, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %71, i32* %9, align 4
  br label %74

72:                                               ; preds = %66
  %73 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %72, %70, %64, %37, %26
  %75 = load i32, i32* %9, align 4
  ret i32 %75
}

declare dso_local i64 @acl_special(%struct.archive_acl*, i32, i32, i32) #1

declare dso_local %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl*, i32, i32, i32, i32) #1

declare dso_local i32 @archive_mstring_copy_mbs_len_l(i32*, i8*, i64, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_mstring_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
