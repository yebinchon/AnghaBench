; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Times.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Times.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct._7z_header_info = type { i64 }
%struct._7zip = type { i32, %struct._7zip_entry* }
%struct._7zip_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@UMAX_ENTRY = common dso_local global i64 0, align 8
@CTIME_IS_SET = common dso_local global i32 0, align 4
@ATIME_IS_SET = common dso_local global i32 0, align 4
@MTIME_IS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_header_info*, i32)* @read_Times to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_Times(%struct.archive_read* %0, %struct._7z_header_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct._7z_header_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._7zip_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct._7z_header_info* %1, %struct._7z_header_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %15 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct._7zip*
  store %struct._7zip* %19, %struct._7zip** %8, align 8
  %20 = load %struct._7zip*, %struct._7zip** %8, align 8
  %21 = getelementptr inbounds %struct._7zip, %struct._7zip* %20, i32 0, i32 1
  %22 = load %struct._7zip_entry*, %struct._7zip_entry** %21, align 8
  store %struct._7zip_entry* %22, %struct._7zip_entry** %10, align 8
  %23 = load %struct._7zip*, %struct._7zip** %8, align 8
  %24 = getelementptr inbounds %struct._7zip, %struct._7zip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = zext i32 %25 to i64
  %27 = call i8* @calloc(i64 %26, i32 1)
  store i8* %27, i8** %11, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %182

31:                                               ; preds = %3
  %32 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %33 = call i8* @header_bytes(%struct.archive_read* %32, i32 1)
  store i8* %33, i8** %9, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %179

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct._7zip*, %struct._7zip** %8, align 8
  %45 = getelementptr inbounds %struct._7zip, %struct._7zip* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = zext i32 %46 to i64
  %48 = call i32 @memset(i8* %43, i32 1, i64 %47)
  br label %60

49:                                               ; preds = %36
  %50 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = load %struct._7zip*, %struct._7zip** %8, align 8
  %53 = getelementptr inbounds %struct._7zip, %struct._7zip* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = zext i32 %54 to i64
  %56 = call i64 @read_Bools(%struct.archive_read* %50, i8* %51, i64 %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %179

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %42
  %61 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %62 = call i8* @header_bytes(%struct.archive_read* %61, i32 1)
  store i8* %62, i8** %9, align 8
  %63 = icmp eq i8* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %179

65:                                               ; preds = %60
  %66 = load i8*, i8** %9, align 8
  %67 = load i8, i8* %66, align 1
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %65
  %70 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %71 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %72 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %71, i32 0, i32 0
  %73 = call i64 @parse_7zip_uint64(%struct.archive_read* %70, i64* %72)
  %74 = icmp slt i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %179

76:                                               ; preds = %69
  %77 = load i64, i64* @UMAX_ENTRY, align 8
  %78 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %79 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp slt i64 %77, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %179

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %65
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %173, %84
  %86 = load i32, i32* %13, align 4
  %87 = load %struct._7zip*, %struct._7zip** %8, align 8
  %88 = getelementptr inbounds %struct._7zip, %struct._7zip* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ult i32 %86, %89
  br i1 %90, label %91, label %176

91:                                               ; preds = %85
  %92 = load i8*, i8** %11, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = icmp ne i8 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %91
  br label %173

99:                                               ; preds = %91
  %100 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %101 = call i8* @header_bytes(%struct.archive_read* %100, i32 8)
  store i8* %101, i8** %9, align 8
  %102 = icmp eq i8* %101, null
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %179

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  switch i32 %105, label %172 [
    i32 129, label %106
    i32 130, label %128
    i32 128, label %150
  ]

106:                                              ; preds = %104
  %107 = load i8*, i8** %9, align 8
  %108 = call i32 @archive_le64dec(i8* %107)
  %109 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %112, i32 0, i32 6
  %114 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %114, i64 %116
  %118 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %117, i32 0, i32 5
  %119 = call i32 @fileTimeToUtc(i32 %108, i32* %113, i32* %118)
  %120 = load i32, i32* @CTIME_IS_SET, align 4
  %121 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %121, i64 %123
  %125 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %120
  store i32 %127, i32* %125, align 4
  br label %172

128:                                              ; preds = %104
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @archive_le64dec(i8* %129)
  %131 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %132 = load i32, i32* %13, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %131, i64 %133
  %135 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %134, i32 0, i32 4
  %136 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %137 = load i32, i32* %13, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %136, i64 %138
  %140 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %139, i32 0, i32 3
  %141 = call i32 @fileTimeToUtc(i32 %130, i32* %135, i32* %140)
  %142 = load i32, i32* @ATIME_IS_SET, align 4
  %143 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %144 = load i32, i32* %13, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %143, i64 %145
  %147 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %142
  store i32 %149, i32* %147, align 4
  br label %172

150:                                              ; preds = %104
  %151 = load i8*, i8** %9, align 8
  %152 = call i32 @archive_le64dec(i8* %151)
  %153 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %154 = load i32, i32* %13, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %153, i64 %155
  %157 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %156, i32 0, i32 2
  %158 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %159 = load i32, i32* %13, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %158, i64 %160
  %162 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %161, i32 0, i32 1
  %163 = call i32 @fileTimeToUtc(i32 %152, i32* %157, i32* %162)
  %164 = load i32, i32* @MTIME_IS_SET, align 4
  %165 = load %struct._7zip_entry*, %struct._7zip_entry** %10, align 8
  %166 = load i32, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %165, i64 %167
  %169 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %164
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %104, %150, %128, %106
  br label %173

173:                                              ; preds = %172, %98
  %174 = load i32, i32* %13, align 4
  %175 = add i32 %174, 1
  store i32 %175, i32* %13, align 4
  br label %85

176:                                              ; preds = %85
  %177 = load i8*, i8** %11, align 8
  %178 = call i32 @free(i8* %177)
  store i32 0, i32* %4, align 4
  br label %182

179:                                              ; preds = %103, %82, %75, %64, %58, %35
  %180 = load i8*, i8** %11, align 8
  %181 = call i32 @free(i8* %180)
  store i32 -1, i32* %4, align 4
  br label %182

182:                                              ; preds = %179, %176, %30
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @read_Bools(%struct.archive_read*, i8*, i64) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i64*) #1

declare dso_local i32 @fileTimeToUtc(i32, i32*, i32*) #1

declare dso_local i32 @archive_le64dec(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
