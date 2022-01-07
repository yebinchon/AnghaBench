; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_open_filename.c_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.stat = type { i32, i32, i32, i32 }
%struct.read_file_data = type { i64, i64, i32, i32, i32, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i32* }

@FNT_STDIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FNT_MBS = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Failed to open '%s'\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Unexpedted operation in archive_read_open_filename\00", align 1
@FNT_WCS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"Can't stat '%S'\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Can't stat '%s'\00", align 1
@SEEK_CUR = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@SEEK_END = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@DIOCGDINFO = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@DIOCGPART = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*)* @file_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @file_open(%struct.archive* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.read_file_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.read_file_data*
  store %struct.read_file_data* %15, %struct.read_file_data** %7, align 8
  store i8* null, i8** %9, align 8
  store i32* null, i32** %10, align 8
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.archive*, %struct.archive** %4, align 8
  %17 = call i32 @archive_clear_error(%struct.archive* %16)
  %18 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %19 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @FNT_STDIN, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %11, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %59

24:                                               ; preds = %2
  %25 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %26 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FNT_MBS, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  %31 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %32 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %9, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @O_RDONLY, align 4
  %37 = load i32, i32* @O_BINARY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @O_CLOEXEC, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @open(i8* %35, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = call i32 @__archive_ensure_cloexec_flag(i32 %42)
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %30
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = load i64, i64* @errno, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %47, i64 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %51, i32* %3, align 4
  br label %182

52:                                               ; preds = %30
  br label %58

53:                                               ; preds = %24
  %54 = load %struct.archive*, %struct.archive** %4, align 8
  %55 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %56 = sext i32 %55 to i64
  %57 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %54, i64 %56, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %171

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %23
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @fstat(i32 %60, %struct.stat* %6)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %59
  %64 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %65 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @FNT_WCS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.archive*, %struct.archive** %4, align 8
  %71 = load i64, i64* @errno, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %70, i64 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %72)
  br label %79

74:                                               ; preds = %63
  %75 = load %struct.archive*, %struct.archive** %4, align 8
  %76 = load i64, i64* @errno, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %75, i64 %76, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %171

80:                                               ; preds = %59
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @S_ISREG(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.archive*, %struct.archive** %4, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @archive_read_extract_set_skip_file(%struct.archive* %86, i32 %88, i32 %90)
  store i32 1, i32* %12, align 4
  br label %119

92:                                               ; preds = %80
  %93 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @S_ISBLK(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %118

97:                                               ; preds = %92
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @SEEK_CUR, align 4
  %100 = call i64 @lseek(i32 %98, i32 0, i32 %99)
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %118

102:                                              ; preds = %97
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SEEK_SET, align 4
  %105 = call i64 @lseek(i32 %103, i32 0, i32 %104)
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %102
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @SEEK_END, align 4
  %110 = call i64 @lseek(i32 %108, i32 0, i32 %109)
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* @SEEK_SET, align 4
  %115 = call i64 @lseek(i32 %113, i32 0, i32 %114)
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %12, align 4
  br label %118

118:                                              ; preds = %117, %112, %107, %102, %97, %92
  br label %119

119:                                              ; preds = %118, %85
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %141

122:                                              ; preds = %119
  store i64 65536, i64* %13, align 8
  br label %123

123:                                              ; preds = %134, %122
  %124 = load i64, i64* %13, align 8
  %125 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %126 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i64, i64* %13, align 8
  %131 = icmp ult i64 %130, 67108864
  br label %132

132:                                              ; preds = %129, %123
  %133 = phi i1 [ false, %123 ], [ %131, %129 ]
  br i1 %133, label %134, label %137

134:                                              ; preds = %132
  %135 = load i64, i64* %13, align 8
  %136 = mul i64 %135, 2
  store i64 %136, i64* %13, align 8
  br label %123

137:                                              ; preds = %132
  %138 = load i64, i64* %13, align 8
  %139 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %140 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %139, i32 0, i32 1
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %137, %119
  %142 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %143 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @malloc(i64 %144)
  store i8* %145, i8** %8, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = icmp eq i8* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %141
  %149 = load %struct.archive*, %struct.archive** %4, align 8
  %150 = load i32, i32* @ENOMEM, align 4
  %151 = sext i32 %150 to i64
  %152 = call i32 (%struct.archive*, i64, i8*, ...) @archive_set_error(%struct.archive* %149, i64 %151, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %171

153:                                              ; preds = %141
  %154 = load i8*, i8** %8, align 8
  %155 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %156 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %155, i32 0, i32 5
  store i8* %154, i8** %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %159 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %163 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %153
  %167 = load %struct.read_file_data*, %struct.read_file_data** %7, align 8
  %168 = getelementptr inbounds %struct.read_file_data, %struct.read_file_data* %167, i32 0, i32 3
  store i32 1, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %153
  %170 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %170, i32* %3, align 4
  br label %182

171:                                              ; preds = %148, %79, %53
  %172 = load i32, i32* %11, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @close(i32 %178)
  br label %180

180:                                              ; preds = %177, %174, %171
  %181 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %180, %169, %46
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @archive_clear_error(%struct.archive*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i32) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i64, i8*, ...) #1

declare dso_local i64 @fstat(i32, %struct.stat*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @archive_read_extract_set_skip_file(%struct.archive*, i32, i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @lseek(i32, i32, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
