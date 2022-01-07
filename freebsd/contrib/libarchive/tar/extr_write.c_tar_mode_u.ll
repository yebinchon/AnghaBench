; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_u.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_u.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, %struct.archive_dir*, i32, i32, %struct.archive*, i32 }
%struct.archive_dir = type { i32*, %struct.archive_dir_entry* }
%struct.archive_dir_entry = type { %struct.archive_dir_entry*, %struct.archive_dir_entry* }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_TAR_PAX_RESTRICTED = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Can't open %s: %s\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot append to compressed archive.\00", align 1
@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Error : %s\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not seek to archive end\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tar_mode_u(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_dir_entry*, align 8
  %8 = alloca %struct.archive_dir, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %9 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %10 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %9, i32 0, i32 1
  store %struct.archive_dir* %8, %struct.archive_dir** %10, align 8
  %11 = call i32 @memset(%struct.archive_dir* %8, i32 0, i32 16)
  %12 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_RESTRICTED, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %14 = call i32 @test_for_append(%struct.bsdtar* %13)
  %15 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %16 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @O_RDWR, align 4
  %19 = load i32, i32* @O_BINARY, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @open(i32 %17, i32 %20)
  %22 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %23 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %25 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @errno, align 4
  %30 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %31 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %1
  %35 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %35, %struct.archive** %4, align 8
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = call i32 @archive_read_support_filter_all(%struct.archive* %36)
  %38 = load %struct.archive*, %struct.archive** %4, align 8
  %39 = call i32 @archive_read_support_format_tar(%struct.archive* %38)
  %40 = load %struct.archive*, %struct.archive** %4, align 8
  %41 = call i32 @archive_read_support_format_gnutar(%struct.archive* %40)
  %42 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %43 = load %struct.archive*, %struct.archive** %4, align 8
  %44 = call i32 @set_reader_options(%struct.bsdtar* %42, %struct.archive* %43)
  %45 = load %struct.archive*, %struct.archive** %4, align 8
  %46 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %47 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %50 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @archive_read_open_fd(%struct.archive* %45, i32 %48, i32 %51)
  %53 = load i64, i64* @ARCHIVE_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %34
  %56 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %57 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.archive*, %struct.archive** %4, align 8
  %60 = call i32 @archive_error_string(%struct.archive* %59)
  %61 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %60)
  br label %62

62:                                               ; preds = %55, %34
  br label %63

63:                                               ; preds = %99, %62
  %64 = load %struct.archive*, %struct.archive** %4, align 8
  %65 = call i64 @archive_read_next_header(%struct.archive* %64, %struct.archive_entry** %5)
  %66 = icmp eq i64 0, %65
  br i1 %66, label %67, label %102

67:                                               ; preds = %63
  %68 = load %struct.archive*, %struct.archive** %4, align 8
  %69 = call i64 @archive_filter_code(%struct.archive* %68, i32 0)
  %70 = load i64, i64* @ARCHIVE_FILTER_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.archive*, %struct.archive** %4, align 8
  %74 = call i32 @archive_read_free(%struct.archive* %73)
  %75 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %76 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @close(i32 %77)
  %79 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %82 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %81, i32 0, i32 4
  %83 = load %struct.archive*, %struct.archive** %82, align 8
  %84 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %85 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %90 = call i64 @archive_match_exclude_entry(%struct.archive* %83, i32 %88, %struct.archive_entry* %89)
  %91 = load i64, i64* @ARCHIVE_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %80
  %94 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %95 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %94, i32 0, i32 4
  %96 = load %struct.archive*, %struct.archive** %95, align 8
  %97 = call i32 @archive_error_string(%struct.archive* %96)
  %98 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %93, %80
  %100 = load %struct.archive*, %struct.archive** %4, align 8
  %101 = call i32 @archive_format(%struct.archive* %100)
  store i32 %101, i32* %6, align 4
  br label %63

102:                                              ; preds = %63
  %103 = load %struct.archive*, %struct.archive** %4, align 8
  %104 = call i32 @archive_read_header_position(%struct.archive* %103)
  store i32 %104, i32* %3, align 4
  %105 = load %struct.archive*, %struct.archive** %4, align 8
  %106 = call i32 @archive_read_free(%struct.archive* %105)
  %107 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %107, %struct.archive** %4, align 8
  %108 = load %struct.archive*, %struct.archive** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @archive_write_set_format(%struct.archive* %108, i32 %109)
  %111 = load %struct.archive*, %struct.archive** %4, align 8
  %112 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %113 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @archive_write_set_bytes_per_block(%struct.archive* %111, i32 %114)
  %116 = load %struct.archive*, %struct.archive** %4, align 8
  %117 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %118 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @archive_write_set_bytes_in_last_block(%struct.archive* %116, i32 %119)
  %121 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %122 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @SEEK_SET, align 4
  %126 = call i64 @lseek(i32 %123, i32 %124, i32 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %102
  %129 = load i32, i32* @errno, align 4
  %130 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %129, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %102
  %132 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %133 = load %struct.archive*, %struct.archive** %4, align 8
  %134 = call i32 @set_writer_options(%struct.bsdtar* %132, %struct.archive* %133)
  %135 = load i64, i64* @ARCHIVE_OK, align 8
  %136 = load %struct.archive*, %struct.archive** %4, align 8
  %137 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %138 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i64 @archive_write_open_fd(%struct.archive* %136, i32 %139)
  %141 = icmp ne i64 %135, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load %struct.archive*, %struct.archive** %4, align 8
  %144 = call i32 @archive_error_string(%struct.archive* %143)
  %145 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %131
  %147 = load %struct.archive*, %struct.archive** %4, align 8
  %148 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %149 = call i32 @write_archive(%struct.archive* %147, %struct.bsdtar* %148)
  %150 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %151 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @close(i32 %152)
  %154 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %155 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %154, i32 0, i32 0
  store i32 -1, i32* %155, align 8
  br label %156

156:                                              ; preds = %163, %146
  %157 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %158 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %157, i32 0, i32 1
  %159 = load %struct.archive_dir*, %struct.archive_dir** %158, align 8
  %160 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %159, i32 0, i32 1
  %161 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %160, align 8
  %162 = icmp ne %struct.archive_dir_entry* %161, null
  br i1 %162, label %163, label %190

163:                                              ; preds = %156
  %164 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %165 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %164, i32 0, i32 1
  %166 = load %struct.archive_dir*, %struct.archive_dir** %165, align 8
  %167 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %166, i32 0, i32 1
  %168 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %167, align 8
  %169 = getelementptr inbounds %struct.archive_dir_entry, %struct.archive_dir_entry* %168, i32 0, i32 1
  %170 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %169, align 8
  store %struct.archive_dir_entry* %170, %struct.archive_dir_entry** %7, align 8
  %171 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %172 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %171, i32 0, i32 1
  %173 = load %struct.archive_dir*, %struct.archive_dir** %172, align 8
  %174 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %173, i32 0, i32 1
  %175 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %174, align 8
  %176 = getelementptr inbounds %struct.archive_dir_entry, %struct.archive_dir_entry* %175, i32 0, i32 0
  %177 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %176, align 8
  %178 = call i32 @free(%struct.archive_dir_entry* %177)
  %179 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %180 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %179, i32 0, i32 1
  %181 = load %struct.archive_dir*, %struct.archive_dir** %180, align 8
  %182 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %181, i32 0, i32 1
  %183 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %182, align 8
  %184 = call i32 @free(%struct.archive_dir_entry* %183)
  %185 = load %struct.archive_dir_entry*, %struct.archive_dir_entry** %7, align 8
  %186 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %187 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %186, i32 0, i32 1
  %188 = load %struct.archive_dir*, %struct.archive_dir** %187, align 8
  %189 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %188, i32 0, i32 1
  store %struct.archive_dir_entry* %185, %struct.archive_dir_entry** %189, align 8
  br label %156

190:                                              ; preds = %156
  %191 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %192 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %191, i32 0, i32 1
  %193 = load %struct.archive_dir*, %struct.archive_dir** %192, align 8
  %194 = getelementptr inbounds %struct.archive_dir, %struct.archive_dir* %193, i32 0, i32 0
  store i32* null, i32** %194, align 8
  ret void
}

declare dso_local i32 @memset(%struct.archive_dir*, i32, i32) #1

declare dso_local i32 @test_for_append(%struct.bsdtar*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_gnutar(%struct.archive*) #1

declare dso_local i32 @set_reader_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i64 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @archive_match_exclude_entry(%struct.archive*, i32, %struct.archive_entry*) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_header_position(%struct.archive*) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @archive_write_set_format(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_set_bytes_per_block(%struct.archive*, i32) #1

declare dso_local i32 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @set_writer_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i64 @archive_write_open_fd(%struct.archive*, i32) #1

declare dso_local i32 @write_archive(%struct.archive*, %struct.bsdtar*) #1

declare dso_local i32 @free(%struct.archive_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
