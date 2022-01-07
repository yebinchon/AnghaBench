; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_pass.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/cpio/extr_cpio.c_mode_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpio = type { i8*, i32, i32*, i32, i64, i32, i32, i32*, i64, i32 }
%struct.lafe_line_reader = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Failed to allocate archive object\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"%lu %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpio*, i8*)* @mode_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_pass(%struct.cpio* %0, i8* %1) #0 {
  %3 = alloca %struct.cpio*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.lafe_line_reader*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.cpio* %0, %struct.cpio** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = add i64 %12, 8
  %14 = call i8* @malloc(i64 %13)
  %15 = load %struct.cpio*, %struct.cpio** %3, align 8
  %16 = getelementptr inbounds %struct.cpio, %struct.cpio* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = load %struct.cpio*, %struct.cpio** %3, align 8
  %18 = getelementptr inbounds %struct.cpio, %struct.cpio* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i32 @memcpy(i8* %19, i8* %20, i64 %21)
  %23 = load i64, i64* %8, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub i64 %27, 1
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 47
  br i1 %32, label %33, label %40

33:                                               ; preds = %25, %2
  %34 = load %struct.cpio*, %struct.cpio** %3, align 8
  %35 = getelementptr inbounds %struct.cpio, %struct.cpio* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 47, i8* %39, align 1
  br label %40

40:                                               ; preds = %33, %25
  %41 = load %struct.cpio*, %struct.cpio** %3, align 8
  %42 = getelementptr inbounds %struct.cpio, %struct.cpio* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i64, i64* %8, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %8, align 8
  %46 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8 0, i8* %46, align 1
  %47 = call i32* (...) @archive_write_disk_new()
  %48 = load %struct.cpio*, %struct.cpio** %3, align 8
  %49 = getelementptr inbounds %struct.cpio, %struct.cpio* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  %50 = load %struct.cpio*, %struct.cpio** %3, align 8
  %51 = getelementptr inbounds %struct.cpio, %struct.cpio* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %40
  %57 = load %struct.cpio*, %struct.cpio** %3, align 8
  %58 = getelementptr inbounds %struct.cpio, %struct.cpio* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.cpio*, %struct.cpio** %3, align 8
  %61 = getelementptr inbounds %struct.cpio, %struct.cpio* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @archive_write_disk_set_options(i32* %59, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load %struct.cpio*, %struct.cpio** %3, align 8
  %69 = getelementptr inbounds %struct.cpio, %struct.cpio* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @archive_error_string(i32* %70)
  %72 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %67, %56
  %74 = call i32 (...) @archive_entry_linkresolver_new()
  %75 = load %struct.cpio*, %struct.cpio** %3, align 8
  %76 = getelementptr inbounds %struct.cpio, %struct.cpio* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 8
  %77 = load %struct.cpio*, %struct.cpio** %3, align 8
  %78 = getelementptr inbounds %struct.cpio, %struct.cpio* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @archive_write_disk_set_standard_lookup(i32* %79)
  %81 = call i32* (...) @archive_read_disk_new()
  %82 = load %struct.cpio*, %struct.cpio** %3, align 8
  %83 = getelementptr inbounds %struct.cpio, %struct.cpio* %82, i32 0, i32 7
  store i32* %81, i32** %83, align 8
  %84 = load %struct.cpio*, %struct.cpio** %3, align 8
  %85 = getelementptr inbounds %struct.cpio, %struct.cpio* %84, i32 0, i32 7
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %73
  %89 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %73
  %91 = load %struct.cpio*, %struct.cpio** %3, align 8
  %92 = getelementptr inbounds %struct.cpio, %struct.cpio* %91, i32 0, i32 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.cpio*, %struct.cpio** %3, align 8
  %97 = getelementptr inbounds %struct.cpio, %struct.cpio* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @archive_read_disk_set_symlink_logical(i32* %98)
  br label %105

100:                                              ; preds = %90
  %101 = load %struct.cpio*, %struct.cpio** %3, align 8
  %102 = getelementptr inbounds %struct.cpio, %struct.cpio* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @archive_read_disk_set_symlink_physical(i32* %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.cpio*, %struct.cpio** %3, align 8
  %107 = getelementptr inbounds %struct.cpio, %struct.cpio* %106, i32 0, i32 7
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @archive_read_disk_set_standard_lookup(i32* %108)
  %110 = load %struct.cpio*, %struct.cpio** %3, align 8
  %111 = getelementptr inbounds %struct.cpio, %struct.cpio* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.lafe_line_reader* @lafe_line_reader(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  store %struct.lafe_line_reader* %113, %struct.lafe_line_reader** %5, align 8
  br label %114

114:                                              ; preds = %118, %105
  %115 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %116 = call i8* @lafe_line_reader_next(%struct.lafe_line_reader* %115)
  store i8* %116, i8** %6, align 8
  %117 = icmp ne i8* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.cpio*, %struct.cpio** %3, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = call i32 @file_to_archive(%struct.cpio* %119, i8* %120)
  br label %114

122:                                              ; preds = %114
  %123 = load %struct.lafe_line_reader*, %struct.lafe_line_reader** %5, align 8
  %124 = call i32 @lafe_line_reader_free(%struct.lafe_line_reader* %123)
  %125 = load %struct.cpio*, %struct.cpio** %3, align 8
  %126 = getelementptr inbounds %struct.cpio, %struct.cpio* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @archive_entry_linkresolver_free(i32 %127)
  %129 = load %struct.cpio*, %struct.cpio** %3, align 8
  %130 = getelementptr inbounds %struct.cpio, %struct.cpio* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @archive_write_close(i32* %131)
  store i32 %132, i32* %7, align 4
  %133 = load %struct.cpio*, %struct.cpio** %3, align 8
  %134 = getelementptr inbounds %struct.cpio, %struct.cpio* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %122
  %138 = load i32, i32* @stderr, align 4
  %139 = call i32 (i32, i8*, ...) @fprintf(i32 %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %122
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @ARCHIVE_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %140
  %145 = load %struct.cpio*, %struct.cpio** %3, align 8
  %146 = getelementptr inbounds %struct.cpio, %struct.cpio* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @archive_error_string(i32* %147)
  %149 = call i32 (i32, i32, i8*, ...) @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  br label %150

150:                                              ; preds = %144, %140
  %151 = load %struct.cpio*, %struct.cpio** %3, align 8
  %152 = getelementptr inbounds %struct.cpio, %struct.cpio* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %170, label %155

155:                                              ; preds = %150
  %156 = load %struct.cpio*, %struct.cpio** %3, align 8
  %157 = getelementptr inbounds %struct.cpio, %struct.cpio* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @archive_filter_bytes(i32* %158, i32 0)
  %160 = add nsw i32 %159, 511
  %161 = sdiv i32 %160, 512
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* @stderr, align 4
  %163 = load i32, i32* %9, align 4
  %164 = sext i32 %163 to i64
  %165 = load i32, i32* %9, align 4
  %166 = icmp eq i32 %165, 1
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)
  %169 = call i32 (i32, i8*, ...) @fprintf(i32 %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i64 %164, i8* %168)
  br label %170

170:                                              ; preds = %155, %150
  %171 = load %struct.cpio*, %struct.cpio** %3, align 8
  %172 = getelementptr inbounds %struct.cpio, %struct.cpio* %171, i32 0, i32 2
  %173 = load i32*, i32** %172, align 8
  %174 = call i32 @archive_write_free(i32* %173)
  %175 = load %struct.cpio*, %struct.cpio** %3, align 8
  %176 = getelementptr inbounds %struct.cpio, %struct.cpio* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @free(i32 %177)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32* @archive_write_disk_new(...) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, ...) #1

declare dso_local i32 @archive_write_disk_set_options(i32*, i32) #1

declare dso_local i32 @archive_error_string(i32*) #1

declare dso_local i32 @archive_entry_linkresolver_new(...) #1

declare dso_local i32 @archive_write_disk_set_standard_lookup(i32*) #1

declare dso_local i32* @archive_read_disk_new(...) #1

declare dso_local i32 @archive_read_disk_set_symlink_logical(i32*) #1

declare dso_local i32 @archive_read_disk_set_symlink_physical(i32*) #1

declare dso_local i32 @archive_read_disk_set_standard_lookup(i32*) #1

declare dso_local %struct.lafe_line_reader* @lafe_line_reader(i8*, i32) #1

declare dso_local i8* @lafe_line_reader_next(%struct.lafe_line_reader*) #1

declare dso_local i32 @file_to_archive(%struct.cpio*, i8*) #1

declare dso_local i32 @lafe_line_reader_free(%struct.lafe_line_reader*) #1

declare dso_local i32 @archive_entry_linkresolver_free(i32) #1

declare dso_local i32 @archive_write_close(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @archive_filter_bytes(i32*, i32) #1

declare dso_local i32 @archive_write_free(i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
