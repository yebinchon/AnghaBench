; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_logical_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_test_symlink_logical_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"Can't test symlinks on this filesystem\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"l2\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"d1/d2\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"d1/d2/d3\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"d2/file1\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"d1/d2/ld1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"../../d1\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"d1/d2/ld2\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"../../d2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"l2/d1\00", align 1
@AE_IFDIR = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [9 x i8] c"l2/d1/d2\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"l2/d1/d2/d3\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"l2/d1/d2/ld1\00", align 1
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"l2/d1/d2/ld2\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"l2/d1/d2/ld2/file1\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_symlink_logical_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_symlink_logical_loop() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = call i32 (...) @canSymlink()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 @skipping(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %176

11:                                               ; preds = %0
  %12 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 493)
  %13 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %14 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 493)
  %15 = call i32 @assertMakeDir(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 493)
  %16 = call i32 @assertMakeDir(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 493)
  %17 = call i32 @assertMakeDir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 493)
  %18 = call i32 @assertMakeFile(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 420, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %19 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 1)
  %20 = call i32 @assertMakeSymlink(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %21 = call i32 @assertChdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %22 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %22, %struct.archive_entry** %2, align 8
  %23 = icmp ne %struct.archive_entry* %22, null
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %26, %struct.archive** %1, align 8
  %27 = icmp ne %struct.archive* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.archive*, %struct.archive** %1, align 8
  %31 = load i32, i32* @ARCHIVE_OK, align 4
  %32 = load %struct.archive*, %struct.archive** %1, align 8
  %33 = call i32 @archive_read_disk_set_symlink_logical(%struct.archive* %32)
  %34 = call i32 @assertEqualIntA(%struct.archive* %30, i32 %31, i32 %33)
  %35 = load %struct.archive*, %struct.archive** %1, align 8
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = load %struct.archive*, %struct.archive** %1, align 8
  %38 = call i32 @archive_read_disk_open(%struct.archive* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %39 = call i32 @assertEqualIntA(%struct.archive* %35, i32 %36, i32 %38)
  store i32 6, i32* %6, align 4
  br label %40

40:                                               ; preds = %162, %11
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %6, align 4
  %43 = icmp ne i32 %41, 0
  br i1 %43, label %44, label %163

44:                                               ; preds = %40
  %45 = load %struct.archive*, %struct.archive** %1, align 8
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive*, %struct.archive** %1, align 8
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_read_next_header2(%struct.archive* %47, %struct.archive_entry* %48)
  %50 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %46, i32 %49)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %52 = call i32 @archive_entry_pathname(%struct.archive_entry* %51)
  %53 = call i64 @strcmp(i32 %52, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %44
  %56 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %57 = call i64 @archive_entry_filetype(%struct.archive_entry* %56)
  %58 = trunc i64 %57 to i32
  %59 = load i64, i64* @AE_IFDIR, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @assertEqualInt(i32 %58, i32 %60)
  br label %151

62:                                               ; preds = %44
  %63 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %64 = call i32 @archive_entry_pathname(%struct.archive_entry* %63)
  %65 = call i64 @strcmp(i32 %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %62
  %68 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %69 = call i64 @archive_entry_filetype(%struct.archive_entry* %68)
  %70 = trunc i64 %69 to i32
  %71 = load i64, i64* @AE_IFDIR, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @assertEqualInt(i32 %70, i32 %72)
  br label %150

74:                                               ; preds = %62
  %75 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %76 = call i32 @archive_entry_pathname(%struct.archive_entry* %75)
  %77 = call i64 @strcmp(i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %81 = call i64 @archive_entry_filetype(%struct.archive_entry* %80)
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* @AE_IFDIR, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @assertEqualInt(i32 %82, i32 %84)
  br label %149

86:                                               ; preds = %74
  %87 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %88 = call i32 @archive_entry_pathname(%struct.archive_entry* %87)
  %89 = call i64 @strcmp(i32 %88, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %93 = call i64 @archive_entry_filetype(%struct.archive_entry* %92)
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* @AE_IFLNK, align 4
  %96 = call i32 @assertEqualInt(i32 %94, i32 %95)
  br label %148

97:                                               ; preds = %86
  %98 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %99 = call i32 @archive_entry_pathname(%struct.archive_entry* %98)
  %100 = call i64 @strcmp(i32 %99, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %104 = call i64 @archive_entry_filetype(%struct.archive_entry* %103)
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* @AE_IFDIR, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @assertEqualInt(i32 %105, i32 %107)
  br label %147

109:                                              ; preds = %97
  %110 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %111 = call i32 @archive_entry_pathname(%struct.archive_entry* %110)
  %112 = call i64 @strcmp(i32 %111, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0))
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %146

114:                                              ; preds = %109
  %115 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %116 = call i64 @archive_entry_filetype(%struct.archive_entry* %115)
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @AE_IFREG, align 4
  %119 = call i32 @assertEqualInt(i32 %117, i32 %118)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %121 = call i32 @archive_entry_size(%struct.archive_entry* %120)
  %122 = call i32 @assertEqualInt(i32 %121, i32 8)
  %123 = load %struct.archive*, %struct.archive** %1, align 8
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  %125 = load %struct.archive*, %struct.archive** %1, align 8
  %126 = call i32 @archive_read_data_block(%struct.archive* %125, i8** %3, i64* %4, i64* %5)
  %127 = call i32 @assertEqualIntA(%struct.archive* %123, i32 %124, i32 %126)
  %128 = load i64, i64* %4, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @assertEqualInt(i32 %129, i32 8)
  %131 = load i64, i64* %5, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @assertEqualInt(i32 %132, i32 0)
  %134 = load i8*, i8** %3, align 8
  %135 = call i32 @assertEqualMem(i8* %134, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 8)
  %136 = load i32, i32* @ARCHIVE_EOF, align 4
  %137 = load %struct.archive*, %struct.archive** %1, align 8
  %138 = call i32 @archive_read_data_block(%struct.archive* %137, i8** %3, i64* %4, i64* %5)
  %139 = call i32 @assertEqualInt(i32 %136, i32 %138)
  %140 = load i64, i64* %4, align 8
  %141 = trunc i64 %140 to i32
  %142 = call i32 @assertEqualInt(i32 %141, i32 0)
  %143 = load i64, i64* %5, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 @assertEqualInt(i32 %144, i32 8)
  br label %146

146:                                              ; preds = %114, %109
  br label %147

147:                                              ; preds = %146, %102
  br label %148

148:                                              ; preds = %147, %91
  br label %149

149:                                              ; preds = %148, %79
  br label %150

150:                                              ; preds = %149, %67
  br label %151

151:                                              ; preds = %150, %55
  %152 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %153 = call i64 @archive_entry_filetype(%struct.archive_entry* %152)
  %154 = load i64, i64* @AE_IFDIR, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load %struct.archive*, %struct.archive** %1, align 8
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %1, align 8
  %160 = call i32 @archive_read_disk_descend(%struct.archive* %159)
  %161 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %158, i32 %160)
  br label %162

162:                                              ; preds = %156, %151
  br label %40

163:                                              ; preds = %40
  %164 = load %struct.archive*, %struct.archive** %1, align 8
  %165 = load i32, i32* @ARCHIVE_EOF, align 4
  %166 = load %struct.archive*, %struct.archive** %1, align 8
  %167 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %168 = call i32 @archive_read_next_header2(%struct.archive* %166, %struct.archive_entry* %167)
  %169 = call i32 @assertEqualIntA(%struct.archive* %164, i32 %165, i32 %168)
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  %171 = load %struct.archive*, %struct.archive** %1, align 8
  %172 = call i32 @archive_read_free(%struct.archive* %171)
  %173 = call i32 @assertEqualInt(i32 %170, i32 %172)
  %174 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %175 = call i32 @archive_entry_free(%struct.archive_entry* %174)
  br label %176

176:                                              ; preds = %163, %9
  ret void
}

declare dso_local i32 @canSymlink(...) #1

declare dso_local i32 @skipping(i8*) #1

declare dso_local i32 @assertMakeDir(i8*, i32) #1

declare dso_local i32 @assertChdir(i8*) #1

declare dso_local i32 @assertMakeFile(i8*, i32, i8*) #1

declare dso_local i32 @assertMakeSymlink(i8*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_set_symlink_logical(%struct.archive*) #1

declare dso_local i32 @archive_read_disk_open(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_next_header2(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data_block(%struct.archive*, i8**, i64*, i64*) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_disk_descend(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
