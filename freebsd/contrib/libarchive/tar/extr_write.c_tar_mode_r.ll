; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_write.c_tar_mode_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32, i32, i32 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_TAR_PAX_RESTRICTED = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't read archive %s: %s\00", align 1
@ARCHIVE_FILTER_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"Cannot append to compressed archive.\00", align 1
@ARCHIVE_FORMAT_BASE_MASK = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_EMPTY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Format %s is incompatible with the archive %s.\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not seek to archive end\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tar_mode_r(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i32, align 4
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %8 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %9 = call i32 @test_for_append(%struct.bsdtar* %8)
  %10 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_RESTRICTED, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %12 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_CREAT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @O_BINARY, align 4
  %18 = or i32 %16, %17
  %19 = call i8* (i32, i32, ...) @open(i32 %13, i32 %18, i32 438)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %22 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %24 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @errno, align 4
  %29 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %30 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %27, %1
  %34 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %34, %struct.archive** %5, align 8
  %35 = load %struct.archive*, %struct.archive** %5, align 8
  %36 = call i32 @archive_read_support_filter_all(%struct.archive* %35)
  %37 = load %struct.archive*, %struct.archive** %5, align 8
  %38 = call i32 @archive_read_support_format_empty(%struct.archive* %37)
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i32 @archive_read_support_format_tar(%struct.archive* %39)
  %41 = load %struct.archive*, %struct.archive** %5, align 8
  %42 = call i32 @archive_read_support_format_gnutar(%struct.archive* %41)
  %43 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = call i32 @set_reader_options(%struct.bsdtar* %43, %struct.archive* %44)
  %46 = load %struct.archive*, %struct.archive** %5, align 8
  %47 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %48 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @archive_read_open_fd(%struct.archive* %46, i32 %49, i32 10240)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @ARCHIVE_OK, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %33
  %55 = load %struct.archive*, %struct.archive** %5, align 8
  %56 = call i32 @archive_errno(%struct.archive* %55)
  %57 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %58 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.archive*, %struct.archive** %5, align 8
  %61 = call i32 @archive_error_string(%struct.archive* %60)
  %62 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %54, %33
  br label %64

64:                                               ; preds = %81, %63
  %65 = load %struct.archive*, %struct.archive** %5, align 8
  %66 = call i64 @archive_read_next_header(%struct.archive* %65, %struct.archive_entry** %6)
  %67 = icmp eq i64 0, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %64
  %69 = load %struct.archive*, %struct.archive** %5, align 8
  %70 = call i64 @archive_filter_code(%struct.archive* %69, i32 0)
  %71 = load i64, i64* @ARCHIVE_FILTER_NONE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.archive*, %struct.archive** %5, align 8
  %75 = call i32 @archive_read_free(%struct.archive* %74)
  %76 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %77 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @close(i32 %78)
  %80 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.archive*, %struct.archive** %5, align 8
  %83 = call i32 @archive_format(%struct.archive* %82)
  store i32 %83, i32* %4, align 4
  br label %64

84:                                               ; preds = %64
  %85 = load %struct.archive*, %struct.archive** %5, align 8
  %86 = call i32 @archive_read_header_position(%struct.archive* %85)
  store i32 %86, i32* %3, align 4
  %87 = load %struct.archive*, %struct.archive** %5, align 8
  %88 = call i32 @archive_read_free(%struct.archive* %87)
  %89 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %89, %struct.archive** %5, align 8
  %90 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %91 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32* @cset_get_format(i32 %92)
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %125

95:                                               ; preds = %84
  %96 = load %struct.archive*, %struct.archive** %5, align 8
  %97 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %98 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32* @cset_get_format(i32 %99)
  %101 = call i32 @archive_write_set_format_by_name(%struct.archive* %96, i32* %100)
  %102 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %103 = load i32, i32* %4, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load %struct.archive*, %struct.archive** %5, align 8
  %107 = call i32 @archive_format(%struct.archive* %106)
  %108 = load i32, i32* @ARCHIVE_FORMAT_BASE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %105, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %95
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* @ARCHIVE_FORMAT_EMPTY, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %117 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = call i32* @cset_get_format(i32 %118)
  %120 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %121 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32* %119, i32 %122)
  br label %124

124:                                              ; preds = %115, %111, %95
  br label %135

125:                                              ; preds = %84
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @ARCHIVE_FORMAT_EMPTY, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = load i32, i32* @ARCHIVE_FORMAT_TAR_PAX_RESTRICTED, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %125
  %132 = load %struct.archive*, %struct.archive** %5, align 8
  %133 = load i32, i32* %4, align 4
  %134 = call i32 @archive_write_set_format(%struct.archive* %132, i32 %133)
  br label %135

135:                                              ; preds = %131, %124
  %136 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %137 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @SEEK_SET, align 4
  %141 = call i64 @lseek(i32 %138, i32 %139, i32 %140)
  %142 = icmp slt i64 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load i32, i32* @errno, align 4
  %145 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %135
  %147 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %148 = load %struct.archive*, %struct.archive** %5, align 8
  %149 = call i32 @set_writer_options(%struct.bsdtar* %147, %struct.archive* %148)
  %150 = load i32, i32* @ARCHIVE_OK, align 4
  %151 = load %struct.archive*, %struct.archive** %5, align 8
  %152 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %153 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @archive_write_open_fd(%struct.archive* %151, i32 %154)
  %156 = icmp ne i32 %150, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load %struct.archive*, %struct.archive** %5, align 8
  %159 = call i32 @archive_error_string(%struct.archive* %158)
  %160 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.archive*, %struct.archive** %5, align 8
  %163 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %164 = call i32 @write_archive(%struct.archive* %162, %struct.bsdtar* %163)
  %165 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %166 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @close(i32 %167)
  %169 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %170 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %169, i32 0, i32 0
  store i32 -1, i32* %170, align 4
  ret void
}

declare dso_local i32 @test_for_append(%struct.bsdtar*) #1

declare dso_local i8* @open(i32, i32, ...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_empty(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_gnutar(%struct.archive*) #1

declare dso_local i32 @set_reader_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i32 @archive_read_open_fd(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i64 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i64 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_read_header_position(%struct.archive*) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32* @cset_get_format(i32) #1

declare dso_local i32 @archive_write_set_format_by_name(%struct.archive*, i32*) #1

declare dso_local i32 @archive_write_set_format(%struct.archive*, i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i32 @set_writer_options(%struct.bsdtar*, %struct.archive*) #1

declare dso_local i32 @archive_write_open_fd(%struct.archive*, i32) #1

declare dso_local i32 @write_archive(%struct.archive*, %struct.bsdtar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
