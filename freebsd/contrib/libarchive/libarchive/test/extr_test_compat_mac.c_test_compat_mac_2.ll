; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_mac.c_test_compat_mac_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_mac.c_test_compat_mac_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@__const.test_compat_mac_2.name = private unnamed_addr constant [24 x i8] c"test_compat_mac-2.tar.Z\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"mac-ext\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tim\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"staff\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"./mydir/\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"\00\05\16\07\00\02\00\00Mac OS X\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"./myfile\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_COMPRESS = common dso_local global i64 0, align 8
@ARCHIVE_FORMAT_TAR_USTAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_compat_mac_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_compat_mac_2() #0 {
  %1 = alloca [24 x i8], align 16
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = bitcast [24 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.test_compat_mac_2.name, i32 0, i32 0), i64 24, i1 false)
  %7 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %7, %struct.archive** %3, align 8
  %8 = icmp ne %struct.archive* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  %13 = load %struct.archive*, %struct.archive** %3, align 8
  %14 = call i32 @archive_read_support_filter_all(%struct.archive* %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %11, i32 %12, i32 %14)
  %16 = load %struct.archive*, %struct.archive** %3, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = call i32 @archive_read_support_format_all(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %3, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %3, align 8
  %24 = call i32 @archive_read_set_options(%struct.archive* %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %24)
  %26 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %27 = call i32 @extract_reference_file(i8* %26)
  %28 = load %struct.archive*, %struct.archive** %3, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %3, align 8
  %31 = getelementptr inbounds [24 x i8], [24 x i8]* %1, i64 0, i64 0
  %32 = call i32 @archive_read_open_filename(%struct.archive* %30, i8* %31, i32 10240)
  %33 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %3, align 8
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  %36 = load %struct.archive*, %struct.archive** %3, align 8
  %37 = call i32 @archive_read_next_header(%struct.archive* %36, %struct.archive_entry** %2)
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %40 = call i32 @archive_entry_pathname(%struct.archive_entry* %39)
  %41 = call i32 @assertEqualString(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %43 = call i64 @archive_entry_mtime(%struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 1303628303, i64 %43)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %46 = call i64 @archive_entry_uid(%struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 501, i64 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_entry_uname(%struct.archive_entry* %48)
  %50 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %52 = call i64 @archive_entry_gid(%struct.archive_entry* %51)
  %53 = call i32 @assertEqualInt(i32 20, i64 %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %55 = call i32 @archive_entry_gname(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %58 = call i64 @archive_entry_mode(%struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 16877, i64 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %61 = call i8* @archive_entry_mac_metadata(%struct.archive_entry* %60, i64* %5)
  store i8* %61, i8** %4, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = icmp eq i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @assert(i32 %64)
  %66 = load i64, i64* %5, align 8
  %67 = call i32 @assertEqualInt(i32 0, i64 %66)
  %68 = load %struct.archive*, %struct.archive** %3, align 8
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = load %struct.archive*, %struct.archive** %3, align 8
  %71 = call i32 @archive_read_next_header(%struct.archive* %70, %struct.archive_entry** %2)
  %72 = call i32 @assertEqualIntA(%struct.archive* %68, i32 %69, i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %74 = call i32 @archive_entry_pathname(%struct.archive_entry* %73)
  %75 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %77 = call i64 @archive_entry_mtime(%struct.archive_entry* %76)
  %78 = call i32 @assertEqualInt(i32 1303628303, i64 %77)
  %79 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %80 = call i64 @archive_entry_uid(%struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 501, i64 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %83 = call i32 @archive_entry_uname(%struct.archive_entry* %82)
  %84 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %86 = call i64 @archive_entry_gid(%struct.archive_entry* %85)
  %87 = call i32 @assertEqualInt(i32 20, i64 %86)
  %88 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %89 = call i32 @archive_entry_gname(%struct.archive_entry* %88)
  %90 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  %91 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %92 = call i64 @archive_entry_mode(%struct.archive_entry* %91)
  %93 = call i32 @assertEqualInt(i32 16877, i64 %92)
  %94 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %95 = call i8* @archive_entry_mac_metadata(%struct.archive_entry* %94, i64* %5)
  store i8* %95, i8** %4, align 8
  %96 = load i8*, i8** %4, align 8
  %97 = icmp ne i8* %96, null
  %98 = zext i1 %97 to i32
  %99 = call i32 @assert(i32 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @assertEqualInt(i32 267, i64 %100)
  %102 = load i8*, i8** %4, align 8
  %103 = call i32 @assertEqualMem(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %102, i32 16)
  %104 = load %struct.archive*, %struct.archive** %3, align 8
  %105 = load i32, i32* @ARCHIVE_OK, align 4
  %106 = load %struct.archive*, %struct.archive** %3, align 8
  %107 = call i32 @archive_read_next_header(%struct.archive* %106, %struct.archive_entry** %2)
  %108 = call i32 @assertEqualIntA(%struct.archive* %104, i32 %105, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %110 = call i32 @archive_entry_pathname(%struct.archive_entry* %109)
  %111 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %110)
  %112 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %113 = call i64 @archive_entry_mtime(%struct.archive_entry* %112)
  %114 = call i32 @assertEqualInt(i32 1303628303, i64 %113)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %116 = call i64 @archive_entry_uid(%struct.archive_entry* %115)
  %117 = call i32 @assertEqualInt(i32 501, i64 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %119 = call i32 @archive_entry_uname(%struct.archive_entry* %118)
  %120 = call i32 @assertEqualString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %119)
  %121 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %122 = call i64 @archive_entry_gid(%struct.archive_entry* %121)
  %123 = call i32 @assertEqualInt(i32 20, i64 %122)
  %124 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %125 = call i32 @archive_entry_gname(%struct.archive_entry* %124)
  %126 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %128 = call i64 @archive_entry_mode(%struct.archive_entry* %127)
  %129 = call i32 @assertEqualInt(i32 33188, i64 %128)
  %130 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %131 = call i8* @archive_entry_mac_metadata(%struct.archive_entry* %130, i64* %5)
  store i8* %131, i8** %4, align 8
  %132 = load i8*, i8** %4, align 8
  %133 = icmp ne i8* %132, null
  %134 = zext i1 %133 to i32
  %135 = call i32 @assert(i32 %134)
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @assertEqualInt(i32 267, i64 %136)
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 @assertEqualMem(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %138, i32 16)
  %140 = load %struct.archive*, %struct.archive** %3, align 8
  %141 = load i32, i32* @ARCHIVE_EOF, align 4
  %142 = load %struct.archive*, %struct.archive** %3, align 8
  %143 = call i32 @archive_read_next_header(%struct.archive* %142, %struct.archive_entry** %2)
  %144 = call i32 @assertEqualIntA(%struct.archive* %140, i32 %141, i32 %143)
  %145 = load %struct.archive*, %struct.archive** %3, align 8
  %146 = call i32 @archive_filter_code(%struct.archive* %145, i32 0)
  %147 = load i64, i64* @ARCHIVE_FILTER_COMPRESS, align 8
  %148 = call i32 @assertEqualInt(i32 %146, i64 %147)
  %149 = load %struct.archive*, %struct.archive** %3, align 8
  %150 = call i32 @archive_format(%struct.archive* %149)
  %151 = load i64, i64* @ARCHIVE_FORMAT_TAR_USTAR, align 8
  %152 = call i32 @assertEqualInt(i32 %150, i64 %151)
  %153 = load i32, i32* @ARCHIVE_OK, align 4
  %154 = load %struct.archive*, %struct.archive** %3, align 8
  %155 = call i64 @archive_read_close(%struct.archive* %154)
  %156 = call i32 @assertEqualInt(i32 %153, i64 %155)
  %157 = load i32, i32* @ARCHIVE_OK, align 4
  %158 = load %struct.archive*, %struct.archive** %3, align 8
  %159 = call i64 @archive_read_free(%struct.archive* %158)
  %160 = call i32 @assertEqualInt(i32 %157, i64 %159)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_read_new(...) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #2

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #2

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #2

declare dso_local i32 @extract_reference_file(i8*) #2

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #2

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #2

declare dso_local i32 @assertEqualString(i8*, i32) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @assertEqualInt(i32, i64) #2

declare dso_local i64 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_gid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i8* @archive_entry_mac_metadata(%struct.archive_entry*, i64*) #2

declare dso_local i32 @assertEqualMem(i8*, i8*, i32) #2

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #2

declare dso_local i32 @archive_format(%struct.archive*) #2

declare dso_local i64 @archive_read_close(%struct.archive*) #2

declare dso_local i64 @archive_read_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
