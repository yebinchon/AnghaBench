; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }
%struct.archive_acl_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_add_entry(%struct.archive_acl* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_acl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.archive_acl_entry*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load %struct.archive_acl*, %struct.archive_acl** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %11, align 4
  %19 = call i64 @acl_special(%struct.archive_acl* %15, i32 %16, i32 %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %22, i32* %7, align 4
  br label %53

23:                                               ; preds = %6
  %24 = load %struct.archive_acl*, %struct.archive_acl** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl* %24, i32 %25, i32 %26, i32 %27, i32 %28)
  store %struct.archive_acl_entry* %29, %struct.archive_acl_entry** %14, align 8
  %30 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %31 = icmp eq %struct.archive_acl_entry* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %33, i32* %7, align 4
  br label %53

34:                                               ; preds = %23
  %35 = load i8*, i8** %13, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %44 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %43, i32 0, i32 0
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @archive_mstring_copy_mbs(i32* %44, i8* %45)
  br label %51

47:                                               ; preds = %37, %34
  %48 = load %struct.archive_acl_entry*, %struct.archive_acl_entry** %14, align 8
  %49 = getelementptr inbounds %struct.archive_acl_entry, %struct.archive_acl_entry* %48, i32 0, i32 0
  %50 = call i32 @archive_mstring_clean(i32* %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %32, %21
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i64 @acl_special(%struct.archive_acl*, i32, i32, i32) #1

declare dso_local %struct.archive_acl_entry* @acl_new_entry(%struct.archive_acl*, i32, i32, i32, i32) #1

declare dso_local i32 @archive_mstring_copy_mbs(i32*, i8*) #1

declare dso_local i32 @archive_mstring_clean(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
