; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_open_filename.c_test_open_filename_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_open_filename.c_test_open_filename_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i32] [i32 116, i32 101, i32 115, i32 116, i32 46, i32 116, i32 97, i32 114, i32 0], align 4
@.str.1 = private unnamed_addr constant [5 x i32] [i32 102, i32 105, i32 108, i32 101, i32 0], align 4
@S_IFREG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"12345678\00", align 1
@.str.3 = private unnamed_addr constant [6 x i32] [i32 102, i32 105, i32 108, i32 101, i32 50, i32 0], align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i32] [i32 110, i32 111, i32 110, i32 101, i32 120, i32 105, i32 115, i32 116, i32 101, i32 110, i32 116, i32 46, i32 116, i32 97, i32 114, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_open_filename_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_open_filename_wcs() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %4, %struct.archive** %3, align 8
  %5 = icmp ne %struct.archive* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive*, %struct.archive** %3, align 8
  %9 = load i32, i32* @ARCHIVE_OK, align 4
  %10 = load %struct.archive*, %struct.archive** %3, align 8
  %11 = call i32 @archive_write_set_format_ustar(%struct.archive* %10)
  %12 = call i32 @assertEqualIntA(%struct.archive* %8, i32 %9, i32 %11)
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = load %struct.archive*, %struct.archive** %3, align 8
  %16 = call i32 @archive_write_add_filter_none(%struct.archive* %15)
  %17 = call i32 @assertEqualIntA(%struct.archive* %13, i32 %14, i32 %16)
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  %20 = load %struct.archive*, %struct.archive** %3, align 8
  %21 = call i32 @archive_write_open_filename_w(%struct.archive* %20, i8* bitcast ([9 x i32]* @.str to i8*))
  %22 = call i32 @assertEqualIntA(%struct.archive* %18, i32 %19, i32 %21)
  %23 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %23, %struct.archive_entry** %2, align 8
  %24 = icmp ne %struct.archive_entry* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %28 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %27, i32 1, i32 0)
  %29 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %30 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %29, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %31 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %32 = load i32, i32* @S_IFREG, align 4
  %33 = or i32 %32, 493
  %34 = call i32 @archive_entry_set_mode(%struct.archive_entry* %31, i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %36 = call i32 @archive_entry_set_size(%struct.archive_entry* %35, i32 8)
  %37 = load %struct.archive*, %struct.archive** %3, align 8
  %38 = load i32, i32* @ARCHIVE_OK, align 4
  %39 = load %struct.archive*, %struct.archive** %3, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %41 = call i32 @archive_write_header(%struct.archive* %39, %struct.archive_entry* %40)
  %42 = call i32 @assertEqualIntA(%struct.archive* %37, i32 %38, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_entry_free(%struct.archive_entry* %43)
  %45 = load %struct.archive*, %struct.archive** %3, align 8
  %46 = load %struct.archive*, %struct.archive** %3, align 8
  %47 = call i32 @archive_write_data(%struct.archive* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %48 = call i32 @assertEqualIntA(%struct.archive* %45, i32 8, i32 %47)
  %49 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %49, %struct.archive_entry** %2, align 8
  %50 = icmp ne %struct.archive_entry* %49, null
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %54 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %53, i8* bitcast ([6 x i32]* @.str.3 to i8*))
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = load i32, i32* @S_IFREG, align 4
  %57 = or i32 %56, 493
  %58 = call i32 @archive_entry_set_mode(%struct.archive_entry* %55, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %60 = call i32 @archive_entry_set_size(%struct.archive_entry* %59, i32 819200)
  %61 = load %struct.archive*, %struct.archive** %3, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %3, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %65 = call i32 @archive_write_header(%struct.archive* %63, %struct.archive_entry* %64)
  %66 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %65)
  %67 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %68 = call i32 @archive_entry_free(%struct.archive_entry* %67)
  %69 = load %struct.archive*, %struct.archive** %3, align 8
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = load %struct.archive*, %struct.archive** %3, align 8
  %72 = call i32 @archive_write_close(%struct.archive* %71)
  %73 = call i32 @assertEqualIntA(%struct.archive* %69, i32 %70, i32 %72)
  %74 = load i32, i32* @ARCHIVE_OK, align 4
  %75 = load %struct.archive*, %struct.archive** %3, align 8
  %76 = call i32 @archive_write_free(%struct.archive* %75)
  %77 = call i32 @assertEqualInt(i32 %74, i32 %76)
  %78 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %78, %struct.archive** %3, align 8
  %79 = icmp ne %struct.archive* %78, null
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load %struct.archive*, %struct.archive** %3, align 8
  %83 = load i32, i32* @ARCHIVE_OK, align 4
  %84 = load %struct.archive*, %struct.archive** %3, align 8
  %85 = call i32 @archive_read_support_format_all(%struct.archive* %84)
  %86 = call i32 @assertEqualIntA(%struct.archive* %82, i32 %83, i32 %85)
  %87 = load %struct.archive*, %struct.archive** %3, align 8
  %88 = load i32, i32* @ARCHIVE_OK, align 4
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = call i32 @archive_read_support_filter_all(%struct.archive* %89)
  %91 = call i32 @assertEqualIntA(%struct.archive* %87, i32 %88, i32 %90)
  %92 = load %struct.archive*, %struct.archive** %3, align 8
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  %94 = load %struct.archive*, %struct.archive** %3, align 8
  %95 = call i32 @archive_read_open_filename_w(%struct.archive* %94, i8* bitcast ([9 x i32]* @.str to i8*), i32 512)
  %96 = call i32 @assertEqualIntA(%struct.archive* %92, i32 %93, i32 %95)
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = load %struct.archive*, %struct.archive** %3, align 8
  %100 = call i32 @archive_read_next_header(%struct.archive* %99, %struct.archive_entry** %2)
  %101 = call i32 @assertEqualIntA(%struct.archive* %97, i32 %98, i32 %100)
  %102 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %103 = call i32 @archive_entry_mtime(%struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 1, i32 %103)
  %105 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %106 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %105)
  %107 = call i32 @assertEqualInt(i32 0, i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %109 = call i32 @archive_entry_atime(%struct.archive_entry* %108)
  %110 = call i32 @assertEqualInt(i32 0, i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %112 = call i32 @archive_entry_ctime(%struct.archive_entry* %111)
  %113 = call i32 @assertEqualInt(i32 0, i32 %112)
  %114 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %115 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %114)
  %116 = call i32 @assertEqualWString(i8* bitcast ([5 x i32]* @.str.1 to i8*), i32 %115)
  %117 = load i32, i32* @S_IFREG, align 4
  %118 = or i32 %117, 493
  %119 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %120 = call i32 @archive_entry_mode(%struct.archive_entry* %119)
  %121 = icmp eq i32 %118, %120
  %122 = zext i1 %121 to i32
  %123 = call i32 @assert(i32 %122)
  %124 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %125 = call i32 @archive_entry_size(%struct.archive_entry* %124)
  %126 = call i32 @assertEqualInt(i32 8, i32 %125)
  %127 = load %struct.archive*, %struct.archive** %3, align 8
  %128 = load %struct.archive*, %struct.archive** %3, align 8
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %130 = call i32 @archive_read_data(%struct.archive* %128, i8* %129, i32 10)
  %131 = call i32 @assertEqualIntA(%struct.archive* %127, i32 8, i32 %130)
  %132 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %133 = call i32 @assertEqualMem(i8* %132, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %134 = load %struct.archive*, %struct.archive** %3, align 8
  %135 = load i32, i32* @ARCHIVE_OK, align 4
  %136 = load %struct.archive*, %struct.archive** %3, align 8
  %137 = call i32 @archive_read_next_header(%struct.archive* %136, %struct.archive_entry** %2)
  %138 = call i32 @assertEqualIntA(%struct.archive* %134, i32 %135, i32 %137)
  %139 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %140 = call i32 @archive_entry_pathname_w(%struct.archive_entry* %139)
  %141 = call i32 @assertEqualWString(i8* bitcast ([6 x i32]* @.str.3 to i8*), i32 %140)
  %142 = load i32, i32* @S_IFREG, align 4
  %143 = or i32 %142, 493
  %144 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %145 = call i32 @archive_entry_mode(%struct.archive_entry* %144)
  %146 = icmp eq i32 %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %150 = call i32 @archive_entry_size(%struct.archive_entry* %149)
  %151 = call i32 @assertEqualInt(i32 819200, i32 %150)
  %152 = load %struct.archive*, %struct.archive** %3, align 8
  %153 = load i32, i32* @ARCHIVE_OK, align 4
  %154 = load %struct.archive*, %struct.archive** %3, align 8
  %155 = call i32 @archive_read_data_skip(%struct.archive* %154)
  %156 = call i32 @assertEqualIntA(%struct.archive* %152, i32 %153, i32 %155)
  %157 = load %struct.archive*, %struct.archive** %3, align 8
  %158 = load i32, i32* @ARCHIVE_EOF, align 4
  %159 = load %struct.archive*, %struct.archive** %3, align 8
  %160 = call i32 @archive_read_next_header(%struct.archive* %159, %struct.archive_entry** %2)
  %161 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %158, i32 %160)
  %162 = load %struct.archive*, %struct.archive** %3, align 8
  %163 = load i32, i32* @ARCHIVE_OK, align 4
  %164 = load %struct.archive*, %struct.archive** %3, align 8
  %165 = call i32 @archive_read_close(%struct.archive* %164)
  %166 = call i32 @assertEqualIntA(%struct.archive* %162, i32 %163, i32 %165)
  %167 = load i32, i32* @ARCHIVE_OK, align 4
  %168 = load %struct.archive*, %struct.archive** %3, align 8
  %169 = call i32 @archive_read_free(%struct.archive* %168)
  %170 = call i32 @assertEqualInt(i32 %167, i32 %169)
  %171 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %171, %struct.archive** %3, align 8
  %172 = icmp ne %struct.archive* %171, null
  %173 = zext i1 %172 to i32
  %174 = call i32 @assert(i32 %173)
  %175 = load %struct.archive*, %struct.archive** %3, align 8
  %176 = load i32, i32* @ARCHIVE_OK, align 4
  %177 = load %struct.archive*, %struct.archive** %3, align 8
  %178 = call i32 @archive_read_support_format_all(%struct.archive* %177)
  %179 = call i32 @assertEqualIntA(%struct.archive* %175, i32 %176, i32 %178)
  %180 = load %struct.archive*, %struct.archive** %3, align 8
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = load %struct.archive*, %struct.archive** %3, align 8
  %183 = call i32 @archive_read_support_filter_all(%struct.archive* %182)
  %184 = call i32 @assertEqualIntA(%struct.archive* %180, i32 %181, i32 %183)
  %185 = load %struct.archive*, %struct.archive** %3, align 8
  %186 = load i32, i32* @ARCHIVE_FATAL, align 4
  %187 = load %struct.archive*, %struct.archive** %3, align 8
  %188 = call i32 @archive_read_open_filename_w(%struct.archive* %187, i8* bitcast ([16 x i32]* @.str.4 to i8*), i32 512)
  %189 = call i32 @assertEqualIntA(%struct.archive* %185, i32 %186, i32 %188)
  %190 = load %struct.archive*, %struct.archive** %3, align 8
  %191 = load i32, i32* @ARCHIVE_OK, align 4
  %192 = load %struct.archive*, %struct.archive** %3, align 8
  %193 = call i32 @archive_read_close(%struct.archive* %192)
  %194 = call i32 @assertEqualIntA(%struct.archive* %190, i32 %191, i32 %193)
  %195 = load i32, i32* @ARCHIVE_OK, align 4
  %196 = load %struct.archive*, %struct.archive** %3, align 8
  %197 = call i32 @archive_read_free(%struct.archive* %196)
  %198 = call i32 @assertEqualInt(i32 %195, i32 %197)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_set_format_ustar(%struct.archive*) #1

declare dso_local i32 @archive_write_add_filter_none(%struct.archive*) #1

declare dso_local i32 @archive_write_open_filename_w(%struct.archive*, i8*) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_close(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename_w(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualWString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname_w(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #1

declare dso_local i32 @archive_read_data_skip(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
