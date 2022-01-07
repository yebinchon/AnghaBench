; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_zip64.c_verify_file0_stream.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_zip64.c_verify_file0_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify_file0_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_file0_stream(%struct.archive* %0, i32 %1) #0 {
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = load i32, i32* @ARCHIVE_OK, align 4
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = call i32 @archive_read_next_header(%struct.archive* %8, %struct.archive_entry** %5)
  %10 = call i32 @assertEqualIntA(%struct.archive* %6, i32 %7, i32 %9)
  %11 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %12 = call i32 @archive_entry_pathname(%struct.archive_entry* %11)
  %13 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @AE_IFREG, align 4
  %15 = or i32 %14, 436
  %16 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %17 = call i32 @archive_entry_mode(%struct.archive_entry* %16)
  %18 = call i32 @assertEqualInt(i32 %15, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %23 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %22)
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %26 = call i32 @archive_entry_size(%struct.archive_entry* %25)
  %27 = call i32 @assertEqualInt(i32 6, i32 %26)
  br label %35

28:                                               ; preds = %2
  %29 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %30 = call i32 @archive_entry_size_is_set(%struct.archive_entry* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  br label %35

35:                                               ; preds = %28, %21
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = load i32, i32* @ARCHIVE_EOF, align 4
  %38 = load %struct.archive*, %struct.archive** %3, align 8
  %39 = call i32 @archive_read_next_header(%struct.archive* %38, %struct.archive_entry** %5)
  %40 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %39)
  %41 = load %struct.archive*, %struct.archive** %3, align 8
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  %43 = load %struct.archive*, %struct.archive** %3, align 8
  %44 = call i32 @archive_read_close(%struct.archive* %43)
  %45 = call i32 @assertEqualIntA(%struct.archive* %41, i32 %42, i32 %44)
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  %48 = load %struct.archive*, %struct.archive** %3, align 8
  %49 = call i32 @archive_read_free(%struct.archive* %48)
  %50 = call i32 @assertEqualIntA(%struct.archive* %46, i32 %47, i32 %49)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_entry_size_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
