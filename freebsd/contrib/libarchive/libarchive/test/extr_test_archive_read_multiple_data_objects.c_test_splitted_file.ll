; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_splitted_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_multiple_data_objects.c_test_splitted_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@test_splitted_file.reffiles = internal global [5 x i8*] [i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_aa\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ab\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ac\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"test_read_splitted_rar_ad\00", align 1
@__const.test_splitted_file.test_txt = private unnamed_addr constant [21 x i8] c"test text document\0D\0A\00", align 16
@.str.4 = private unnamed_addr constant [9 x i8] c"test.txt\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"testlink\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"testdir/test.txt\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"testdir\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"testemptydir\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_splitted_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_splitted_file() #0 {
  %1 = alloca [64 x i8], align 16
  %2 = alloca [21 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.archive*, align 8
  %6 = bitcast [21 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([21 x i8], [21 x i8]* @__const.test_splitted_file.test_txt, i32 0, i32 0), i64 21, i1 false)
  store i32 20, i32* %3, align 4
  %7 = call i32 @extract_reference_files(i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_splitted_file.reffiles, i64 0, i64 0))
  %8 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %8, %struct.archive** %5, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %5, align 8
  %13 = call i64 @archive_read_support_filter_all(%struct.archive* %12)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assertA(i32 %15)
  %17 = load %struct.archive*, %struct.archive** %5, align 8
  %18 = call i64 @archive_read_support_format_all(%struct.archive* %17)
  %19 = icmp eq i64 0, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assertA(i32 %20)
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = call i64 @archive_read_open_filenames(%struct.archive* %22, i8** getelementptr inbounds ([5 x i8*], [5 x i8*]* @test_splitted_file.reffiles, i64 0, i64 0), i32 10240)
  %24 = icmp eq i64 0, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @assertA(i32 %25)
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = call i32 @archive_read_next_header(%struct.archive* %27, %struct.archive_entry** %4)
  %29 = icmp eq i32 0, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assertA(i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %33 = call i32 @archive_entry_pathname(%struct.archive_entry* %32)
  %34 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %36 = call i64 @archive_entry_mtime(%struct.archive_entry* %35)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @assertA(i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %40 = call i64 @archive_entry_ctime(%struct.archive_entry* %39)
  %41 = trunc i64 %40 to i32
  %42 = call i32 @assertA(i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %44 = call i64 @archive_entry_atime(%struct.archive_entry* %43)
  %45 = trunc i64 %44 to i32
  %46 = call i32 @assertA(i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %48 = call i32 @archive_entry_size(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 20, i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %51 = call i32 @archive_entry_mode(%struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 33188, i32 %51)
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.archive*, %struct.archive** %5, align 8
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %56 = load i32, i32* %3, align 4
  %57 = call i32 @archive_read_data(%struct.archive* %54, i8* %55, i32 %56)
  %58 = icmp eq i32 %53, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @assertA(i32 %59)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %62 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @assertEqualMem(i8* %61, i8* %62, i32 %63)
  %65 = load %struct.archive*, %struct.archive** %5, align 8
  %66 = call i32 @archive_read_next_header(%struct.archive* %65, %struct.archive_entry** %4)
  %67 = icmp eq i32 0, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assertA(i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %71 = call i32 @archive_entry_pathname(%struct.archive_entry* %70)
  %72 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %74 = call i64 @archive_entry_mtime(%struct.archive_entry* %73)
  %75 = trunc i64 %74 to i32
  %76 = call i32 @assertA(i32 %75)
  %77 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %78 = call i64 @archive_entry_ctime(%struct.archive_entry* %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 @assertA(i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %82 = call i64 @archive_entry_atime(%struct.archive_entry* %81)
  %83 = trunc i64 %82 to i32
  %84 = call i32 @assertA(i32 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %86 = call i32 @archive_entry_size(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualInt(i32 0, i32 %86)
  %88 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %89 = call i32 @archive_entry_mode(%struct.archive_entry* %88)
  %90 = call i32 @assertEqualInt(i32 41471, i32 %89)
  %91 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %92 = call i32 @archive_entry_symlink(%struct.archive_entry* %91)
  %93 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.archive*, %struct.archive** %5, align 8
  %95 = load %struct.archive*, %struct.archive** %5, align 8
  %96 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %97 = call i32 @archive_read_data(%struct.archive* %95, i8* %96, i32 64)
  %98 = call i32 @assertEqualIntA(%struct.archive* %94, i32 0, i32 %97)
  %99 = load %struct.archive*, %struct.archive** %5, align 8
  %100 = call i32 @archive_read_next_header(%struct.archive* %99, %struct.archive_entry** %4)
  %101 = icmp eq i32 0, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @assertA(i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %105 = call i32 @archive_entry_pathname(%struct.archive_entry* %104)
  %106 = call i32 @assertEqualString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %108 = call i64 @archive_entry_mtime(%struct.archive_entry* %107)
  %109 = trunc i64 %108 to i32
  %110 = call i32 @assertA(i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %112 = call i64 @archive_entry_ctime(%struct.archive_entry* %111)
  %113 = trunc i64 %112 to i32
  %114 = call i32 @assertA(i32 %113)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %116 = call i64 @archive_entry_atime(%struct.archive_entry* %115)
  %117 = trunc i64 %116 to i32
  %118 = call i32 @assertA(i32 %117)
  %119 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %120 = call i32 @archive_entry_size(%struct.archive_entry* %119)
  %121 = call i32 @assertEqualInt(i32 20, i32 %120)
  %122 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %123 = call i32 @archive_entry_mode(%struct.archive_entry* %122)
  %124 = call i32 @assertEqualInt(i32 33188, i32 %123)
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.archive*, %struct.archive** %5, align 8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @archive_read_data(%struct.archive* %126, i8* %127, i32 %128)
  %130 = icmp eq i32 %125, %129
  %131 = zext i1 %130 to i32
  %132 = call i32 @assertA(i32 %131)
  %133 = getelementptr inbounds [64 x i8], [64 x i8]* %1, i64 0, i64 0
  %134 = getelementptr inbounds [21 x i8], [21 x i8]* %2, i64 0, i64 0
  %135 = load i32, i32* %3, align 4
  %136 = call i32 @assertEqualMem(i8* %133, i8* %134, i32 %135)
  %137 = load %struct.archive*, %struct.archive** %5, align 8
  %138 = call i32 @archive_read_next_header(%struct.archive* %137, %struct.archive_entry** %4)
  %139 = icmp eq i32 0, %138
  %140 = zext i1 %139 to i32
  %141 = call i32 @assertA(i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %143 = call i32 @archive_entry_pathname(%struct.archive_entry* %142)
  %144 = call i32 @assertEqualString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %143)
  %145 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %146 = call i64 @archive_entry_mtime(%struct.archive_entry* %145)
  %147 = trunc i64 %146 to i32
  %148 = call i32 @assertA(i32 %147)
  %149 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %150 = call i64 @archive_entry_ctime(%struct.archive_entry* %149)
  %151 = trunc i64 %150 to i32
  %152 = call i32 @assertA(i32 %151)
  %153 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %154 = call i64 @archive_entry_atime(%struct.archive_entry* %153)
  %155 = trunc i64 %154 to i32
  %156 = call i32 @assertA(i32 %155)
  %157 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %158 = call i32 @archive_entry_size(%struct.archive_entry* %157)
  %159 = call i32 @assertEqualInt(i32 0, i32 %158)
  %160 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %161 = call i32 @archive_entry_mode(%struct.archive_entry* %160)
  %162 = call i32 @assertEqualInt(i32 16877, i32 %161)
  %163 = load %struct.archive*, %struct.archive** %5, align 8
  %164 = call i32 @archive_read_next_header(%struct.archive* %163, %struct.archive_entry** %4)
  %165 = icmp eq i32 0, %164
  %166 = zext i1 %165 to i32
  %167 = call i32 @assertA(i32 %166)
  %168 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %169 = call i32 @archive_entry_pathname(%struct.archive_entry* %168)
  %170 = call i32 @assertEqualString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %169)
  %171 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %172 = call i64 @archive_entry_mtime(%struct.archive_entry* %171)
  %173 = trunc i64 %172 to i32
  %174 = call i32 @assertA(i32 %173)
  %175 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %176 = call i64 @archive_entry_ctime(%struct.archive_entry* %175)
  %177 = trunc i64 %176 to i32
  %178 = call i32 @assertA(i32 %177)
  %179 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %180 = call i64 @archive_entry_atime(%struct.archive_entry* %179)
  %181 = trunc i64 %180 to i32
  %182 = call i32 @assertA(i32 %181)
  %183 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %184 = call i32 @archive_entry_size(%struct.archive_entry* %183)
  %185 = call i32 @assertEqualInt(i32 0, i32 %184)
  %186 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %187 = call i32 @archive_entry_mode(%struct.archive_entry* %186)
  %188 = call i32 @assertEqualInt(i32 16877, i32 %187)
  %189 = load %struct.archive*, %struct.archive** %5, align 8
  %190 = call i32 @archive_read_next_header(%struct.archive* %189, %struct.archive_entry** %4)
  %191 = icmp eq i32 1, %190
  %192 = zext i1 %191 to i32
  %193 = call i32 @assertA(i32 %192)
  %194 = load %struct.archive*, %struct.archive** %5, align 8
  %195 = call i32 @archive_file_count(%struct.archive* %194)
  %196 = call i32 @assertEqualInt(i32 5, i32 %195)
  %197 = load %struct.archive*, %struct.archive** %5, align 8
  %198 = load i32, i32* @ARCHIVE_OK, align 4
  %199 = load %struct.archive*, %struct.archive** %5, align 8
  %200 = call i32 @archive_read_close(%struct.archive* %199)
  %201 = call i32 @assertEqualIntA(%struct.archive* %197, i32 %198, i32 %200)
  %202 = load i32, i32* @ARCHIVE_OK, align 4
  %203 = load %struct.archive*, %struct.archive** %5, align 8
  %204 = call i32 @archive_read_free(%struct.archive* %203)
  %205 = call i32 @assertEqualInt(i32 %202, i32 %204)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @extract_reference_files(i8**) #2

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertA(i32) #2

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i64 @archive_read_open_filenames(%struct.archive*, i8**, i32) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_ctime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_atime(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i32) #2

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_file_count(%struct.archive*) #2

declare dso_local i32 @archive_read_close(%struct.archive*) #2

declare dso_local i32 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
