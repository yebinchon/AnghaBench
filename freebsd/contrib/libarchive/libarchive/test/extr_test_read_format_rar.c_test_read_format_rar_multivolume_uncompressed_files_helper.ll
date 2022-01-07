; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_rar.c_test_read_format_rar_multivolume_uncompressed_files_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_rar.c_test_read_format_rar_multivolume_uncompressed_files_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"<!DOCTYPE HTML PUBLIC \22-//W3C//DTD HTML 4.0 Transitional//EN\22>\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"<HTML>\0A<HEAD>\0A\09<META HTTP-EQUIV=\22CONTENT-TYPE\22 CONTENT=\22text/ht\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"ml; charset=utf-8\22>\0A\09<TITLE></TITLE>\0A\09<META NAME=\22GENERATOR\22 CO\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @test_read_format_rar_multivolume_uncompressed_files_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_rar_multivolume_uncompressed_files_helper(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca [64 x i8], align 16
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = load %struct.archive*, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = load i32, i32* @SEEK_SET, align 4
  %7 = call i32 @archive_seek_data(%struct.archive* %5, i32 0, i32 %6)
  %8 = call i32 @assertEqualIntA(%struct.archive* %4, i32 0, i32 %7)
  %9 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %10 = call i32 @memset(i8* %9, i32 0, i32 64)
  %11 = load %struct.archive*, %struct.archive** %2, align 8
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = load i32, i32* @SEEK_SET, align 4
  %14 = call i32 @archive_seek_data(%struct.archive* %12, i32 -63, i32 %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %11, i32 -1, i32 %14)
  %16 = load %struct.archive*, %struct.archive** %2, align 8
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = load i32, i32* @SEEK_CUR, align 4
  %19 = call i32 @archive_seek_data(%struct.archive* %17, i32 0, i32 %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 0, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %2, align 8
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %24 = call i32 @archive_read_data(%struct.archive* %22, i8* %23, i32 63)
  %25 = call i32 @assertEqualIntA(%struct.archive* %21, i32 63, i32 %24)
  %26 = load %struct.archive*, %struct.archive** %2, align 8
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = load i32, i32* @SEEK_CUR, align 4
  %29 = call i32 @archive_seek_data(%struct.archive* %27, i32 0, i32 %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %26, i32 63, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %33 = call i32 @assertEqualStringA(%struct.archive* %31, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %32)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %35 = call i32 @memset(i8* %34, i32 0, i32 64)
  %36 = load %struct.archive*, %struct.archive** %2, align 8
  %37 = load %struct.archive*, %struct.archive** %2, align 8
  %38 = load i32, i32* @SEEK_CUR, align 4
  %39 = call i32 @archive_seek_data(%struct.archive* %37, i32 -126, i32 %38)
  %40 = call i32 @assertEqualIntA(%struct.archive* %36, i32 -1, i32 %39)
  %41 = load %struct.archive*, %struct.archive** %2, align 8
  %42 = load %struct.archive*, %struct.archive** %2, align 8
  %43 = load i32, i32* @SEEK_CUR, align 4
  %44 = call i32 @archive_seek_data(%struct.archive* %42, i32 0, i32 %43)
  %45 = call i32 @assertEqualIntA(%struct.archive* %41, i32 63, i32 %44)
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = load %struct.archive*, %struct.archive** %2, align 8
  %48 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %49 = call i32 @archive_read_data(%struct.archive* %47, i8* %48, i32 63)
  %50 = call i32 @assertEqualIntA(%struct.archive* %46, i32 63, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = load i32, i32* @SEEK_CUR, align 4
  %54 = call i32 @archive_seek_data(%struct.archive* %52, i32 0, i32 %53)
  %55 = call i32 @assertEqualIntA(%struct.archive* %51, i32 126, i32 %54)
  %56 = load %struct.archive*, %struct.archive** %2, align 8
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %58 = call i32 @assertEqualStringA(%struct.archive* %56, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i8* %57)
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %60 = call i32 @memset(i8* %59, i32 0, i32 64)
  %61 = load %struct.archive*, %struct.archive** %2, align 8
  %62 = load %struct.archive*, %struct.archive** %2, align 8
  %63 = load i32, i32* @SEEK_END, align 4
  %64 = call i32 @archive_seek_data(%struct.archive* %62, i32 -20143, i32 %63)
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 -1, i32 %64)
  %66 = load %struct.archive*, %struct.archive** %2, align 8
  %67 = load %struct.archive*, %struct.archive** %2, align 8
  %68 = load i32, i32* @SEEK_CUR, align 4
  %69 = call i32 @archive_seek_data(%struct.archive* %67, i32 0, i32 %68)
  %70 = call i32 @assertEqualIntA(%struct.archive* %66, i32 126, i32 %69)
  %71 = load %struct.archive*, %struct.archive** %2, align 8
  %72 = load %struct.archive*, %struct.archive** %2, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %74 = call i32 @archive_read_data(%struct.archive* %72, i8* %73, i32 63)
  %75 = call i32 @assertEqualIntA(%struct.archive* %71, i32 63, i32 %74)
  %76 = load %struct.archive*, %struct.archive** %2, align 8
  %77 = load %struct.archive*, %struct.archive** %2, align 8
  %78 = load i32, i32* @SEEK_CUR, align 4
  %79 = call i32 @archive_seek_data(%struct.archive* %77, i32 0, i32 %78)
  %80 = call i32 @assertEqualIntA(%struct.archive* %76, i32 189, i32 %79)
  %81 = load %struct.archive*, %struct.archive** %2, align 8
  %82 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %83 = call i32 @assertEqualStringA(%struct.archive* %81, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %82)
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %85 = call i32 @memset(i8* %84, i32 0, i32 64)
  %86 = load %struct.archive*, %struct.archive** %2, align 8
  %87 = load %struct.archive*, %struct.archive** %2, align 8
  %88 = load i32, i32* @SEEK_SET, align 4
  %89 = call i32 @archive_seek_data(%struct.archive* %87, i32 20111, i32 %88)
  %90 = call i32 @assertEqualIntA(%struct.archive* %86, i32 20111, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %2, align 8
  %92 = load %struct.archive*, %struct.archive** %2, align 8
  %93 = load i32, i32* @SEEK_CUR, align 4
  %94 = call i32 @archive_seek_data(%struct.archive* %92, i32 0, i32 %93)
  %95 = call i32 @assertEqualIntA(%struct.archive* %91, i32 20111, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %2, align 8
  %97 = load %struct.archive*, %struct.archive** %2, align 8
  %98 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %99 = call i32 @archive_read_data(%struct.archive* %97, i8* %98, i32 63)
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 0, i32 %99)
  %101 = load %struct.archive*, %struct.archive** %2, align 8
  %102 = load %struct.archive*, %struct.archive** %2, align 8
  %103 = load i32, i32* @SEEK_CUR, align 4
  %104 = call i32 @archive_seek_data(%struct.archive* %102, i32 0, i32 %103)
  %105 = call i32 @assertEqualIntA(%struct.archive* %101, i32 20111, i32 %104)
  %106 = load %struct.archive*, %struct.archive** %2, align 8
  %107 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %108 = call i32 @assertEqualStringA(%struct.archive* %106, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  %109 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %110 = call i32 @memset(i8* %109, i32 0, i32 64)
  %111 = load %struct.archive*, %struct.archive** %2, align 8
  %112 = load %struct.archive*, %struct.archive** %2, align 8
  %113 = load i32, i32* @SEEK_CUR, align 4
  %114 = call i32 @archive_seek_data(%struct.archive* %112, i32 63, i32 %113)
  %115 = call i32 @assertEqualIntA(%struct.archive* %111, i32 20174, i32 %114)
  %116 = load %struct.archive*, %struct.archive** %2, align 8
  %117 = load %struct.archive*, %struct.archive** %2, align 8
  %118 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %119 = call i32 @archive_read_data(%struct.archive* %117, i8* %118, i32 63)
  %120 = call i32 @assertEqualIntA(%struct.archive* %116, i32 0, i32 %119)
  %121 = load %struct.archive*, %struct.archive** %2, align 8
  %122 = load %struct.archive*, %struct.archive** %2, align 8
  %123 = load i32, i32* @SEEK_CUR, align 4
  %124 = call i32 @archive_seek_data(%struct.archive* %122, i32 0, i32 %123)
  %125 = call i32 @assertEqualIntA(%struct.archive* %121, i32 20174, i32 %124)
  %126 = load %struct.archive*, %struct.archive** %2, align 8
  %127 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %128 = call i32 @assertEqualStringA(%struct.archive* %126, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %127)
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %130 = call i32 @memset(i8* %129, i32 0, i32 64)
  %131 = load %struct.archive*, %struct.archive** %2, align 8
  %132 = load %struct.archive*, %struct.archive** %2, align 8
  %133 = load i32, i32* @SEEK_END, align 4
  %134 = call i32 @archive_seek_data(%struct.archive* %132, i32 126, i32 %133)
  %135 = call i32 @assertEqualIntA(%struct.archive* %131, i32 20237, i32 %134)
  %136 = load %struct.archive*, %struct.archive** %2, align 8
  %137 = load %struct.archive*, %struct.archive** %2, align 8
  %138 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %139 = call i32 @archive_read_data(%struct.archive* %137, i8* %138, i32 63)
  %140 = call i32 @assertEqualIntA(%struct.archive* %136, i32 0, i32 %139)
  %141 = load %struct.archive*, %struct.archive** %2, align 8
  %142 = load %struct.archive*, %struct.archive** %2, align 8
  %143 = load i32, i32* @SEEK_CUR, align 4
  %144 = call i32 @archive_seek_data(%struct.archive* %142, i32 0, i32 %143)
  %145 = call i32 @assertEqualIntA(%struct.archive* %141, i32 20237, i32 %144)
  %146 = load %struct.archive*, %struct.archive** %2, align 8
  %147 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %148 = call i32 @assertEqualStringA(%struct.archive* %146, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %147)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_seek_data(%struct.archive*, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @archive_read_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assertEqualStringA(%struct.archive*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
