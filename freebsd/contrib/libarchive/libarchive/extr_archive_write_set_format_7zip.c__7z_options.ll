; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_7zip.c__7z_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct._7zip = type { i8, i32 }

@.str = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"copy\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"COPY\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"store\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@_7Z_COPY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"DEFLATE\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lzma1\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"LZMA1\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"lzma2\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"LZMA2\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"ppmd\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"PPMD\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"PPMd\00", align 1
@_7Z_PPMD = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [31 x i8] c"Unknown compression name: `%s'\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [48 x i8] c"`%s' compression not supported on this platform\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"compression-level\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Illegal value `%s'\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@_7Z_BZIP2 = common dso_local global i32 0, align 4
@_7Z_DEFLATE = common dso_local global i32 0, align 4
@_7Z_LZMA1 = common dso_local global i32 0, align 4
@_7Z_LZMA2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*)* @_7z_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_7z_options(%struct.archive_write* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct._7zip*
  store %struct._7zip* %13, %struct._7zip** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i64 @strcmp(i8* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %116

17:                                               ; preds = %3
  store i8* null, i8** %9, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %7, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = call i64 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32, %28, %24, %20, %17
  %37 = load i32, i32* @_7Z_COPY, align 4
  %38 = load %struct._7zip*, %struct._7zip** %8, align 8
  %39 = getelementptr inbounds %struct._7zip, %struct._7zip* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %104

40:                                               ; preds = %32
  %41 = load i8*, i8** %7, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %40
  %45 = load i8*, i8** %7, align 8
  %46 = call i64 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %40
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %103

49:                                               ; preds = %44
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %7, align 8
  %55 = call i64 @strcmp(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %102

58:                                               ; preds = %53
  %59 = load i8*, i8** %7, align 8
  %60 = call i64 @strcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %7, align 8
  %64 = call i64 @strcmp(i8* %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %58
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %101

67:                                               ; preds = %62
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %7, align 8
  %73 = call i64 @strcmp(i8* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71, %67
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i8** %9, align 8
  br label %100

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = call i64 @strcmp(i8* %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %76
  %81 = load i8*, i8** %7, align 8
  %82 = call i64 @strcmp(i8* %81, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84, %80, %76
  %89 = load i32, i32* @_7Z_PPMD, align 4
  %90 = load %struct._7zip*, %struct._7zip** %8, align 8
  %91 = getelementptr inbounds %struct._7zip, %struct._7zip* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %99

92:                                               ; preds = %84
  %93 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %94 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %93, i32 0, i32 0
  %95 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = call i32 @archive_set_error(i32* %94, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i8* %96)
  %98 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %98, i32* %4, align 4
  br label %160

99:                                               ; preds = %88
  br label %100

100:                                              ; preds = %99, %75
  br label %101

101:                                              ; preds = %100, %66
  br label %102

102:                                              ; preds = %101, %57
  br label %103

103:                                              ; preds = %102, %48
  br label %104

104:                                              ; preds = %103, %36
  %105 = load i8*, i8** %9, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %104
  %108 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %109 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %108, i32 0, i32 0
  %110 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %111 = load i8*, i8** %9, align 8
  %112 = call i32 @archive_set_error(i32* %109, i32 %110, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.17, i64 0, i64 0), i8* %111)
  %113 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %113, i32* %4, align 4
  br label %160

114:                                              ; preds = %104
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %115, i32* %4, align 4
  br label %160

116:                                              ; preds = %3
  %117 = load i8*, i8** %6, align 8
  %118 = call i64 @strcmp(i8* %117, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %158

120:                                              ; preds = %116
  %121 = load i8*, i8** %7, align 8
  %122 = icmp eq i8* %121, null
  br i1 %122, label %141, label %123

123:                                              ; preds = %120
  %124 = load i8*, i8** %7, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sge i32 %127, 48
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load i8*, i8** %7, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 0
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sle i32 %133, 57
  br i1 %134, label %135, label %141

135:                                              ; preds = %129
  %136 = load i8*, i8** %7, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %135, %129, %123, %120
  %142 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %143 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %142, i32 0, i32 0
  %144 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @archive_set_error(i32* %143, i32 %144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i8* %145)
  %147 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %147, i32* %4, align 4
  br label %160

148:                                              ; preds = %135
  %149 = load i8*, i8** %7, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 0
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 48
  %154 = trunc i32 %153 to i8
  %155 = load %struct._7zip*, %struct._7zip** %8, align 8
  %156 = getelementptr inbounds %struct._7zip, %struct._7zip* %155, i32 0, i32 0
  store i8 %154, i8* %156, align 4
  %157 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %157, i32* %4, align 4
  br label %160

158:                                              ; preds = %116
  %159 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %159, i32* %4, align 4
  br label %160

160:                                              ; preds = %158, %148, %141, %114, %107, %92
  %161 = load i32, i32* %4, align 4
  ret i32 %161
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
