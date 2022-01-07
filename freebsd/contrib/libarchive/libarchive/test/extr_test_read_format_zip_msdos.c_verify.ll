; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_msdos.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_msdos.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"def/\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"def/foo\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ghi/\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"jkl/\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"mno/\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i32)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(%struct.archive* %0, i32 %1) #0 {
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
  %13 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @AE_IFREG, align 4
  %15 = or i32 %14, 436
  %16 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %17 = call i32 @archive_entry_mode(%struct.archive_entry* %16)
  %18 = call i32 @assertEqualInt(i32 %15, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %3, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = call i32 @archive_read_next_header(%struct.archive* %21, %struct.archive_entry** %5)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %28 = call i32 @archive_entry_pathname(%struct.archive_entry* %27)
  %29 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @AE_IFREG, align 4
  %31 = or i32 %30, 436
  %32 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %33 = call i32 @archive_entry_mode(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualInt(i32 %31, i32 %33)
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %37 = call i32 @archive_entry_pathname(%struct.archive_entry* %36)
  %38 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @AE_IFDIR, align 4
  %40 = or i32 %39, 509
  %41 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %42 = call i32 @archive_entry_mode(%struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 %40, i32 %42)
  br label %44

44:                                               ; preds = %35, %26
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive*, %struct.archive** %3, align 8
  %48 = call i32 @archive_read_next_header(%struct.archive* %47, %struct.archive_entry** %5)
  %49 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %46, i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %51 = call i32 @archive_entry_pathname(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @AE_IFREG, align 4
  %54 = or i32 %53, 436
  %55 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %56 = call i32 @archive_entry_mode(%struct.archive_entry* %55)
  %57 = call i32 @assertEqualInt(i32 %54, i32 %56)
  %58 = load %struct.archive*, %struct.archive** %3, align 8
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = load %struct.archive*, %struct.archive** %3, align 8
  %61 = call i32 @archive_read_next_header(%struct.archive* %60, %struct.archive_entry** %5)
  %62 = call i32 @assertEqualIntA(%struct.archive* %58, i32 %59, i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %64 = call i32 @archive_entry_pathname(%struct.archive_entry* %63)
  %65 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @AE_IFDIR, align 4
  %67 = or i32 %66, 509
  %68 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %69 = call i32 @archive_entry_mode(%struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 %67, i32 %69)
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = load i32, i32* @ARCHIVE_OK, align 4
  %73 = load %struct.archive*, %struct.archive** %3, align 8
  %74 = call i32 @archive_read_next_header(%struct.archive* %73, %struct.archive_entry** %5)
  %75 = call i32 @assertEqualIntA(%struct.archive* %71, i32 %72, i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %77 = call i32 @archive_entry_pathname(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @AE_IFDIR, align 4
  %80 = or i32 %79, 509
  %81 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %82 = call i32 @archive_entry_mode(%struct.archive_entry* %81)
  %83 = call i32 @assertEqualInt(i32 %80, i32 %82)
  %84 = load %struct.archive*, %struct.archive** %3, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  %86 = load %struct.archive*, %struct.archive** %3, align 8
  %87 = call i32 @archive_read_next_header(%struct.archive* %86, %struct.archive_entry** %5)
  %88 = call i32 @assertEqualIntA(%struct.archive* %84, i32 %85, i32 %87)
  %89 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %90 = call i32 @archive_entry_pathname(%struct.archive_entry* %89)
  %91 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @AE_IFDIR, align 4
  %93 = or i32 %92, 509
  %94 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %95 = call i32 @archive_entry_mode(%struct.archive_entry* %94)
  %96 = call i32 @assertEqualInt(i32 %93, i32 %95)
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = load i32, i32* @ARCHIVE_EOF, align 4
  %99 = load %struct.archive*, %struct.archive** %3, align 8
  %100 = call i32 @archive_read_next_header(%struct.archive* %99, %struct.archive_entry** %5)
  %101 = call i32 @assertEqualIntA(%struct.archive* %97, i32 %98, i32 %100)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
