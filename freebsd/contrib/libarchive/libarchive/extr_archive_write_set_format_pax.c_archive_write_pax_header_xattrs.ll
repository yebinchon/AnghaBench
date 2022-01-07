; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header_xattrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.pax = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.archive_entry = type { i32 }

@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.pax*, %struct.archive_entry*)* @archive_write_pax_header_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_header_xattrs(%struct.archive_write* %0, %struct.pax* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca %struct.pax*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store %struct.pax* %1, %struct.pax** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %15 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %16 = call i32 @archive_entry_xattr_reset(%struct.archive_entry* %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %57, %3
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %18, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %17
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %23 = call i32 @archive_entry_xattr_next(%struct.archive_entry* %22, i8** %9, i8** %10, i64* %13)
  %24 = load i8*, i8** %9, align 8
  %25 = call i8* @url_encode(i8* %24)
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %57

28:                                               ; preds = %21
  %29 = load %struct.pax*, %struct.pax** %6, align 8
  %30 = getelementptr inbounds %struct.pax, %struct.pax* %29, i32 0, i32 0
  %31 = load i8*, i8** %11, align 8
  %32 = load %struct.pax*, %struct.pax** %6, align 8
  %33 = getelementptr inbounds %struct.pax, %struct.pax* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @archive_strcpy_l(%struct.TYPE_2__* %30, i8* %31, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = call i32 @free(i8* %36)
  %38 = load i32, i32* %14, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.pax*, %struct.pax** %6, align 8
  %42 = getelementptr inbounds %struct.pax, %struct.pax* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %12, align 8
  br label %56

45:                                               ; preds = %28
  %46 = load i64, i64* @errno, align 8
  %47 = load i64, i64* @ENOMEM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %51 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %50, i32 0, i32 0
  %52 = load i64, i64* @ENOMEM, align 8
  %53 = call i32 @archive_set_error(i32* %51, i64 %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55, %40
  br label %57

57:                                               ; preds = %56, %21
  %58 = load %struct.pax*, %struct.pax** %6, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %13, align 8
  %62 = call i32 @archive_write_pax_header_xattr(%struct.pax* %58, i8* %59, i8* %60, i64 %61)
  br label %17

63:                                               ; preds = %17
  %64 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %49
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @archive_entry_xattr_reset(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_xattr_next(%struct.archive_entry*, i8**, i8**, i64*) #1

declare dso_local i8* @url_encode(i8*) #1

declare dso_local i32 @archive_strcpy_l(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*) #1

declare dso_local i32 @archive_write_pax_header_xattr(%struct.pax*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
