; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type opaque
%struct.archive = type { i32 }

@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, void (%struct.archive_entry*)*, i32, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i64 %1, void (%struct.archive_entry*)* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.archive_entry*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca %struct.archive*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store void (%struct.archive_entry*)* %2, void (%struct.archive_entry*)** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i8* @malloc(i32 100000)
  store i8* %14, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @memcpy(i8* %15, i8* %16, i64 %17)
  %19 = load i8*, i8** %13, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = call i32 @memset(i8* %21, i32 0, i32 2048)
  %23 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %23, %struct.archive** %12, align 8
  %24 = icmp ne %struct.archive* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.archive*, %struct.archive** %12, align 8
  %28 = call i64 @archive_read_support_filter_all(%struct.archive* %27)
  %29 = icmp eq i64 0, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assertA(i32 %30)
  %32 = load %struct.archive*, %struct.archive** %12, align 8
  %33 = call i64 @archive_read_support_format_all(%struct.archive* %32)
  %34 = icmp eq i64 0, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @assertA(i32 %35)
  %37 = load %struct.archive*, %struct.archive** %12, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i64, i64* %7, align 8
  %40 = add i64 %39, 1024
  %41 = call i64 @archive_read_open_memory(%struct.archive* %37, i8* %38, i64 %40)
  %42 = icmp eq i64 0, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @assertA(i32 %43)
  %45 = load %struct.archive*, %struct.archive** %12, align 8
  %46 = call i64 @archive_read_next_header(%struct.archive* %45, %struct.archive_entry** %11)
  %47 = icmp eq i64 0, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assertA(i32 %48)
  %50 = load %struct.archive*, %struct.archive** %12, align 8
  %51 = call i32 @archive_filter_code(%struct.archive* %50, i32 0)
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @assertEqualInt(i32 %51, i32 %52)
  %54 = load %struct.archive*, %struct.archive** %12, align 8
  %55 = call i32 @archive_format(%struct.archive* %54)
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @assertEqualInt(i32 %55, i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %59 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 %59, i32 0)
  %61 = load %struct.archive*, %struct.archive** %12, align 8
  %62 = load %struct.archive*, %struct.archive** %12, align 8
  %63 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %62)
  %64 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %63, i32 %64)
  %66 = load void (%struct.archive_entry*)*, void (%struct.archive_entry*)** %8, align 8
  %67 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  call void %66(%struct.archive_entry* %67)
  %68 = load %struct.archive*, %struct.archive** %12, align 8
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = load %struct.archive*, %struct.archive** %12, align 8
  %71 = call i32 @archive_read_close(%struct.archive* %70)
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %69, i32 %71)
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  %74 = load %struct.archive*, %struct.archive** %12, align 8
  %75 = call i32 @archive_read_free(%struct.archive* %74)
  %76 = call i32 @assertEqualInt(i32 %73, i32 %75)
  %77 = load i8*, i8** %13, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
