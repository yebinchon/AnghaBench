; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_recover.c_rcv_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.dirent = type { i8* }
%struct.stat = type { i32 }

@O_RECDIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@M_SYSERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"recdir: %s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"recover.\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@M_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"066|%s: malformed recovery file\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"%.24s: %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: No files to recover\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rcv_list(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca %struct.stat, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = load i32, i32* @O_RECDIR, align 4
  %17 = call i64 @opts_empty(%struct.TYPE_10__* %15, i32 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = load i32, i32* @O_RECDIR, align 4
  %23 = call i8* @O_STR(%struct.TYPE_10__* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i64 @chdir(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = call i32* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %28, i32** %6, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27, %20
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i32, i32* @M_SYSERR, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @msgq_str(%struct.TYPE_10__* %31, i32 %32, i8* %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %159

35:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %36

36:                                               ; preds = %145, %61, %53, %46, %35
  %37 = load i32*, i32** %6, align 8
  %38 = call %struct.dirent* @readdir(i32* %37)
  store %struct.dirent* %38, %struct.dirent** %4, align 8
  %39 = icmp ne %struct.dirent* %38, null
  br i1 %39, label %40, label %146

40:                                               ; preds = %36
  %41 = load %struct.dirent*, %struct.dirent** %4, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strncmp(i8* %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %36

47:                                               ; preds = %40
  %48 = load %struct.dirent*, %struct.dirent** %4, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32* @fopen(i8* %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %36

54:                                               ; preds = %47
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @fileno(i32* %56)
  %58 = call i32 @file_lock(%struct.TYPE_10__* %55, i32* null, i32 %57, i32 1)
  switch i32 %58, label %64 [
    i32 130, label %59
    i32 129, label %60
    i32 128, label %61
  ]

59:                                               ; preds = %54
  br label %64

60:                                               ; preds = %54
  br label %64

61:                                               ; preds = %54
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @fclose(i32* %62)
  br label %36

64:                                               ; preds = %54, %60, %59
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  br label %65

65:                                               ; preds = %109, %92, %64
  %66 = load i8*, i8** %10, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i8*, i8** %11, align 8
  %70 = icmp eq i8* %69, null
  br label %71

71:                                               ; preds = %68, %65
  %72 = phi i1 [ true, %65 ], [ %70, %68 ]
  br i1 %72, label %73, label %110

73:                                               ; preds = %71
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @rcv_dlnread(%struct.TYPE_10__* %74, i8** %12, i8** %13, i32* %75)
  store i32 %76, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %83 = load i32, i32* @M_ERR, align 4
  %84 = load %struct.dirent*, %struct.dirent** %4, align 8
  %85 = getelementptr inbounds %struct.dirent, %struct.dirent* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @msgq_str(%struct.TYPE_10__* %82, i32 %83, i8* %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %81, %78
  br label %131

89:                                               ; preds = %73
  %90 = load i8*, i8** %12, align 8
  %91 = icmp eq i8* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  br label %65

93:                                               ; preds = %89
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @strcmp(i8* %94, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = load i8*, i8** %13, align 8
  store i8* %98, i8** %10, align 8
  br label %109

99:                                               ; preds = %93
  %100 = load i8*, i8** %12, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load i8*, i8** %13, align 8
  store i8* %104, i8** %11, align 8
  br label %108

105:                                              ; preds = %99
  %106 = load i8*, i8** %13, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %105, %103
  br label %109

109:                                              ; preds = %108, %97
  br label %65

110:                                              ; preds = %71
  store i64 0, i64* @errno, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = call i64 @stat(i8* %111, %struct.stat* %5)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %110
  %115 = load i64, i64* @errno, align 8
  %116 = load i64, i64* @ENOENT, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.dirent*, %struct.dirent** %4, align 8
  %120 = getelementptr inbounds %struct.dirent, %struct.dirent* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = call i32 @unlink(i8* %121)
  br label %131

123:                                              ; preds = %114, %110
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @fileno(i32* %124)
  %126 = call i32 @fstat(i32 %125, %struct.stat* %5)
  %127 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 0
  %128 = call i8* @ctime(i32* %127)
  %129 = load i8*, i8** %10, align 8
  %130 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8* %128, i8* %129)
  store i32 1, i32* %8, align 4
  br label %131

131:                                              ; preds = %123, %118, %88
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @fclose(i32* %132)
  %134 = load i8*, i8** %10, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i8*, i8** %10, align 8
  %138 = call i32 @free(i8* %137)
  br label %139

139:                                              ; preds = %136, %131
  %140 = load i8*, i8** %11, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i8*, i8** %11, align 8
  %144 = call i32 @free(i8* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %36

146:                                              ; preds = %36
  %147 = load i32, i32* %8, align 4
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %146
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8* %154)
  br label %156

156:                                              ; preds = %149, %146
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @closedir(i32* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %156, %30, %19
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @opts_empty(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @O_STR(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @chdir(i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @msgq_str(%struct.TYPE_10__*, i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @file_lock(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @rcv_dlnread(%struct.TYPE_10__*, i8**, i8**, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

declare dso_local i8* @ctime(i32*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
