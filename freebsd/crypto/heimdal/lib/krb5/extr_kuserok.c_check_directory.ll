; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_check_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_kuserok.c_check_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i64 }
%struct.dirent = type { i8* }
%struct.stat = type { i32, i64, i64, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i64 0, align 8
@EACCES = common dso_local global i64 0, align 8
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, %struct.passwd*, i32, i64*)* @check_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_directory(i32 %0, i8* %1, %struct.passwd* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.passwd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dirent*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.stat, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.stat, align 8
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store %struct.passwd* %2, %struct.passwd** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i64 0, i64* %16, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @lstat(i8* %27, %struct.stat* %17)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i64, i64* @errno, align 8
  store i64 %31, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @S_ISDIR(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @ENOTDIR, align 8
  store i64 %38, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.passwd*, %struct.passwd** %9, align 8
  %43 = getelementptr inbounds %struct.passwd, %struct.passwd* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %41, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @EACCES, align 8
  store i64 %51, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

52:                                               ; preds = %46, %39
  %53 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @S_IWGRP, align 4
  %56 = load i32, i32* @S_IWOTH, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i64, i64* @EACCES, align 8
  store i64 %61, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

62:                                               ; preds = %52
  %63 = load i8*, i8** %8, align 8
  %64 = call i32* @opendir(i8* %63)
  store i32* %64, i32** %12, align 8
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i64, i64* @errno, align 8
  store i64 %67, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

68:                                               ; preds = %62
  %69 = load i32*, i32** %12, align 8
  %70 = call i32 @dirfd(i32* %69)
  store i32 %70, i32* %19, align 4
  %71 = load i32, i32* %19, align 4
  %72 = call i64 @fstat(i32 %71, %struct.stat* %20)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @closedir(i32* %75)
  %77 = load i64, i64* @errno, align 8
  store i64 %77, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %80, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %20, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %86, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84, %78
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @closedir(i32* %91)
  %93 = load i64, i64* @EACCES, align 8
  store i64 %93, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

94:                                               ; preds = %84
  br label %95

95:                                               ; preds = %154, %133, %94
  %96 = load i32*, i32** %12, align 8
  %97 = call %struct.dirent* @readdir(i32* %96)
  store %struct.dirent* %97, %struct.dirent** %13, align 8
  %98 = icmp ne %struct.dirent* %97, null
  br i1 %98, label %99, label %155

99:                                               ; preds = %95
  %100 = load %struct.dirent*, %struct.dirent** %13, align 8
  %101 = getelementptr inbounds %struct.dirent, %struct.dirent* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i64 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %133, label %105

105:                                              ; preds = %99
  %106 = load %struct.dirent*, %struct.dirent** %13, align 8
  %107 = getelementptr inbounds %struct.dirent, %struct.dirent* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %133, label %111

111:                                              ; preds = %105
  %112 = load %struct.dirent*, %struct.dirent** %13, align 8
  %113 = getelementptr inbounds %struct.dirent, %struct.dirent* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 0
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 35
  br i1 %118, label %133, label %119

119:                                              ; preds = %111
  %120 = load %struct.dirent*, %struct.dirent** %13, align 8
  %121 = getelementptr inbounds %struct.dirent, %struct.dirent* %120, i32 0, i32 0
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.dirent*, %struct.dirent** %13, align 8
  %124 = getelementptr inbounds %struct.dirent, %struct.dirent* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strlen(i8* %125)
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %122, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 126
  br i1 %132, label %133, label %134

133:                                              ; preds = %119, %111, %105, %99
  br label %95

134:                                              ; preds = %119
  %135 = trunc i64 %22 to i32
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.dirent*, %struct.dirent** %13, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = call i32 @snprintf(i8* %24, i32 %135, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %136, i8* %139)
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.passwd*, %struct.passwd** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i64*, i64** %11, align 8
  %145 = call i64 @check_one_file(i32 %141, i8* %24, %struct.passwd* %142, i32 %143, i64* %144)
  store i64 %145, i64* %16, align 8
  %146 = load i64, i64* %16, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %134
  %149 = load i64*, i64** %11, align 8
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @TRUE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %155

154:                                              ; preds = %148, %134
  store i64 0, i64* %16, align 8
  br label %95

155:                                              ; preds = %153, %95
  %156 = load i32*, i32** %12, align 8
  %157 = call i32 @closedir(i32* %156)
  %158 = load i64, i64* %16, align 8
  store i64 %158, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %159

159:                                              ; preds = %155, %90, %74, %66, %60, %50, %37, %30
  %160 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %160)
  %161 = load i64, i64* %6, align 8
  ret i64 %161
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISDIR(i32) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @dirfd(i32*) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @check_one_file(i32, i8*, %struct.passwd*, i32, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
