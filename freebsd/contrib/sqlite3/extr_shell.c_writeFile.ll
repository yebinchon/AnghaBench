; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_writeFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_writeFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.timeval = type { i8*, i64 }

@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@AT_SYMLINK_NOFOLLOW = common dso_local global i32 0, align 4
@FILE_FLAG_BACKUP_SEMANTICS = common dso_local global i32 0, align 4
@FILE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@INVALID_HANDLE_VALUE = common dso_local global i64 0, align 8
@OPEN_EXISTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32, i64)* @writeFile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @writeFile(i32* %0, i8* %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [2 x %struct.timeval], align 16
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call i64 @S_ISLNK(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %5
  %24 = load i32*, i32** %9, align 8
  %25 = call i64 @sqlite3_value_text(i32* %24)
  %26 = inttoptr i64 %25 to i8*
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @symlink(i8* %27, i8* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  br label %142

32:                                               ; preds = %23
  br label %120

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %71

37:                                               ; preds = %33
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i64 @mkdir(i8* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %37
  %43 = load i64, i64* @errno, align 8
  %44 = load i64, i64* @EEXIST, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %68, label %46

46:                                               ; preds = %42
  %47 = load i8*, i8** %8, align 8
  %48 = call i64 @fileStat(i8* %47, %struct.stat* %13)
  %49 = icmp ne i64 0, %48
  br i1 %49, label %68, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @S_ISDIR(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 511
  %59 = load i32, i32* %10, align 4
  %60 = and i32 %59, 511
  %61 = icmp ne i32 %58, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %55
  %63 = load i8*, i8** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 511
  %66 = call i64 @chmod(i8* %63, i32 %65)
  %67 = icmp ne i64 0, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %50, %46, %42
  store i32 1, i32* %6, align 4
  br label %142

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %37
  br label %119

71:                                               ; preds = %33
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  %72 = load i8*, i8** %8, align 8
  %73 = call i32* @fopen(i8* %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %73, i32** %17, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %6, align 4
  br label %142

77:                                               ; preds = %71
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @sqlite3_value_blob(i32* %78)
  %80 = inttoptr i64 %79 to i8*
  store i8* %80, i8** %15, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %96

83:                                               ; preds = %77
  %84 = load i8*, i8** %15, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i64 @sqlite3_value_bytes(i32* %85)
  %87 = load i32*, i32** %17, align 8
  %88 = call i64 @fwrite(i8* %84, i32 1, i64 %86, i32* %87)
  store i64 %88, i64* %18, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i64 @sqlite3_value_bytes(i32* %89)
  store i64 %90, i64* %14, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %18, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %83
  store i32 1, i32* %16, align 4
  br label %95

95:                                               ; preds = %94, %83
  br label %96

96:                                               ; preds = %95, %77
  %97 = load i32*, i32** %17, align 8
  %98 = call i32 @fclose(i32* %97)
  %99 = load i32, i32* %16, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %96
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %101
  %105 = load i8*, i8** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 511
  %108 = call i64 @chmod(i8* %105, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %104
  store i32 1, i32* %16, align 4
  br label %111

111:                                              ; preds = %110, %104, %101, %96
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 2, i32* %6, align 4
  br label %142

115:                                              ; preds = %111
  %116 = load i32*, i32** %7, align 8
  %117 = load i64, i64* %14, align 8
  %118 = call i32 @sqlite3_result_int64(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %115, %70
  br label %120

120:                                              ; preds = %119, %32
  %121 = load i64, i64* %11, align 8
  %122 = icmp sge i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %19, i64 0, i64 1
  %125 = getelementptr inbounds %struct.timeval, %struct.timeval* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %19, i64 0, i64 0
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %126, i32 0, i32 1
  store i64 0, i64* %127, align 8
  %128 = call i8* @time(i32 0)
  %129 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %19, i64 0, i64 0
  %130 = getelementptr inbounds %struct.timeval, %struct.timeval* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 16
  %131 = load i64, i64* %11, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %19, i64 0, i64 1
  %134 = getelementptr inbounds %struct.timeval, %struct.timeval* %133, i32 0, i32 0
  store i8* %132, i8** %134, align 16
  %135 = load i8*, i8** %8, align 8
  %136 = getelementptr inbounds [2 x %struct.timeval], [2 x %struct.timeval]* %19, i64 0, i64 0
  %137 = call i64 @utimes(i8* %135, %struct.timeval* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  store i32 1, i32* %6, align 4
  br label %142

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140, %120
  store i32 0, i32* %6, align 4
  br label %142

142:                                              ; preds = %141, %139, %114, %76, %68, %31
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @sqlite3_value_text(i32*) #1

declare dso_local i64 @symlink(i8*, i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @mkdir(i8*, i32) #1

declare dso_local i64 @fileStat(i8*, %struct.stat*) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @sqlite3_value_blob(i32*) #1

declare dso_local i64 @fwrite(i8*, i32, i64, i32*) #1

declare dso_local i64 @sqlite3_value_bytes(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @sqlite3_result_int64(i32*, i64) #1

declare dso_local i8* @time(i32) #1

declare dso_local i64 @utimes(i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
