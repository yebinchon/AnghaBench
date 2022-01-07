; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fns = type { i32, i64, i64, i32*, i64 }
%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"rockridge\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"joliet\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32, %struct.fns*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(i8* %0, i64 %1, i32 %2, %struct.fns* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fns*, align 8
  %9 = alloca %struct.archive*, align 8
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fns* %3, %struct.fns** %8, align 8
  %12 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %12, %struct.archive** %9, align 8
  %13 = icmp ne %struct.archive* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load %struct.archive*, %struct.archive** %9, align 8
  %17 = load %struct.archive*, %struct.archive** %9, align 8
  %18 = call i32 @archive_read_support_format_all(%struct.archive* %17)
  %19 = call i32 @assertEqualIntA(%struct.archive* %16, i32 0, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %9, align 8
  %21 = load %struct.archive*, %struct.archive** %9, align 8
  %22 = call i32 @archive_read_support_filter_all(%struct.archive* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %20, i32 0, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = icmp uge i32 %24, 1
  br i1 %25, label %26, label %32

26:                                               ; preds = %4
  %27 = load %struct.archive*, %struct.archive** %9, align 8
  %28 = call i64 @archive_read_set_option(%struct.archive* %27, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* null)
  %29 = icmp eq i64 0, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assertA(i32 %30)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %7, align 4
  %34 = icmp uge i32 %33, 2
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.archive*, %struct.archive** %9, align 8
  %37 = call i64 @archive_read_set_option(%struct.archive* %36, i32* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null)
  %38 = icmp eq i64 0, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assertA(i32 %39)
  br label %41

41:                                               ; preds = %35, %32
  %42 = load %struct.archive*, %struct.archive** %9, align 8
  %43 = load %struct.archive*, %struct.archive** %9, align 8
  %44 = load i8*, i8** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @archive_read_open_memory(%struct.archive* %43, i8* %44, i64 %45)
  %47 = call i32 @assertEqualIntA(%struct.archive* %42, i32 0, i32 %46)
  %48 = load %struct.archive*, %struct.archive** %9, align 8
  %49 = load %struct.archive*, %struct.archive** %9, align 8
  %50 = call i32 @archive_read_next_header(%struct.archive* %49, %struct.archive_entry** %10)
  %51 = call i32 @assertEqualIntA(%struct.archive* %48, i32 0, i32 %50)
  %52 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %53 = call i32 @archive_entry_atime(%struct.archive_entry* %52)
  %54 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %55 = call i32 @archive_entry_ctime(%struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 %53, i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %58 = call i32 @archive_entry_atime(%struct.archive_entry* %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %60 = call i32 @archive_entry_mtime(%struct.archive_entry* %59)
  %61 = call i32 @assertEqualInt(i32 %58, i32 %60)
  %62 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %63 = call i32 @archive_entry_pathname(%struct.archive_entry* %62)
  %64 = call i32 @assertEqualString(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  switch i32 %65, label %90 [
    i32 128, label %66
    i32 129, label %74
    i32 130, label %82
  ]

66:                                               ; preds = %41
  %67 = load i32, i32* @S_IFDIR, align 4
  %68 = or i32 %67, 365
  %69 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %70 = call i32 @archive_entry_mode(%struct.archive_entry* %69)
  %71 = icmp eq i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @assert(i32 %72)
  br label %90

74:                                               ; preds = %41
  %75 = load i32, i32* @S_IFDIR, align 4
  %76 = or i32 %75, 448
  %77 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %78 = call i32 @archive_entry_mode(%struct.archive_entry* %77)
  %79 = icmp eq i32 %76, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  br label %90

82:                                               ; preds = %41
  %83 = load i32, i32* @S_IFDIR, align 4
  %84 = or i32 %83, 448
  %85 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %86 = call i32 @archive_entry_mode(%struct.archive_entry* %85)
  %87 = icmp eq i32 %84, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @assert(i32 %88)
  br label %90

90:                                               ; preds = %41, %82, %74, %66
  %91 = load %struct.fns*, %struct.fns** %8, align 8
  %92 = getelementptr inbounds %struct.fns, %struct.fns* %91, i32 0, i32 3
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.fns*, %struct.fns** %8, align 8
  %95 = getelementptr inbounds %struct.fns, %struct.fns* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = sext i32 %96 to i64
  %98 = mul i64 8, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @memset(i32* %93, i32 0, i32 %99)
  %101 = load %struct.fns*, %struct.fns** %8, align 8
  %102 = getelementptr inbounds %struct.fns, %struct.fns* %101, i32 0, i32 4
  store i64 0, i64* %102, align 8
  store i64 0, i64* %11, align 8
  br label %103

103:                                              ; preds = %115, %90
  %104 = load i64, i64* %11, align 8
  %105 = load %struct.fns*, %struct.fns** %8, align 8
  %106 = getelementptr inbounds %struct.fns, %struct.fns* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = icmp ult i64 %104, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %103
  %111 = load %struct.archive*, %struct.archive** %9, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.fns*, %struct.fns** %8, align 8
  %114 = call i32 @verify_file(%struct.archive* %111, i32 %112, %struct.fns* %113)
  br label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %11, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %11, align 8
  br label %103

118:                                              ; preds = %103
  store i64 0, i64* %11, align 8
  br label %119

119:                                              ; preds = %134, %118
  %120 = load i64, i64* %11, align 8
  %121 = load %struct.fns*, %struct.fns** %8, align 8
  %122 = getelementptr inbounds %struct.fns, %struct.fns* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %120, %124
  br i1 %125, label %126, label %137

126:                                              ; preds = %119
  %127 = load %struct.fns*, %struct.fns** %8, align 8
  %128 = getelementptr inbounds %struct.fns, %struct.fns* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @free(i32 %132)
  br label %134

134:                                              ; preds = %126
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %11, align 8
  br label %119

137:                                              ; preds = %119
  %138 = load %struct.fns*, %struct.fns** %8, align 8
  %139 = getelementptr inbounds %struct.fns, %struct.fns* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = trunc i64 %140 to i32
  %142 = load %struct.fns*, %struct.fns** %8, align 8
  %143 = getelementptr inbounds %struct.fns, %struct.fns* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @assertEqualInt(i32 %141, i32 %145)
  %147 = load %struct.archive*, %struct.archive** %9, align 8
  %148 = load i32, i32* @ARCHIVE_EOF, align 4
  %149 = load %struct.archive*, %struct.archive** %9, align 8
  %150 = call i32 @archive_read_next_header(%struct.archive* %149, %struct.archive_entry** %10)
  %151 = call i32 @assertEqualIntA(%struct.archive* %147, i32 %148, i32 %150)
  %152 = load %struct.archive*, %struct.archive** %9, align 8
  %153 = load i32, i32* @ARCHIVE_OK, align 4
  %154 = load %struct.archive*, %struct.archive** %9, align 8
  %155 = call i32 @archive_read_close(%struct.archive* %154)
  %156 = call i32 @assertEqualIntA(%struct.archive* %152, i32 %153, i32 %155)
  %157 = load %struct.archive*, %struct.archive** %9, align 8
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = load %struct.archive*, %struct.archive** %9, align 8
  %160 = call i32 @archive_read_free(%struct.archive* %159)
  %161 = call i32 @assertEqualIntA(%struct.archive* %157, i32 %158, i32 %160)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_read_set_option(%struct.archive*, i32*, i8*, i32*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i64) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @verify_file(%struct.archive*, i32, %struct.fns*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
