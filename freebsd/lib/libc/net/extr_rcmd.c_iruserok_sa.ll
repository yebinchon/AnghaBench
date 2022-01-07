; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c_iruserok_sa.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rcmd.c_iruserok_sa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32, i64 }
%struct.passwd = type { i64, i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@_PATH_HEQUIV = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"re\00", align 1
@__check_rhosts_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"/.rhosts\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c".rhosts lstat failed\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c".rhosts not regular file\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c".rhosts fstat failed\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"bad .rhosts owner\00", align 1
@S_IWGRP = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c".rhosts writeable by other than owner\00", align 1
@__rcmd_errstr = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iruserok_sa(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca %struct.passwd*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.sockaddr*, align 8
  %21 = alloca %struct.sockaddr_storage, align 4
  %22 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %23 = load i32, i32* @MAXPATHLEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %19, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 4
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

31:                                               ; preds = %5
  %32 = load i8*, i8** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @memcpy(%struct.sockaddr_storage* %21, i8* %32, i32 %33)
  %35 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %20, align 8
  store i32 1, i32* %17, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %42

39:                                               ; preds = %31
  %40 = load i8*, i8** @_PATH_HEQUIV, align 8
  %41 = call i32* @fopen(i8* %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %38
  %43 = phi i32* [ null, %38 ], [ %41, %39 ]
  store i32* %43, i32** %15, align 8
  br label %44

44:                                               ; preds = %142, %42
  %45 = load i32*, i32** %15, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i32*, i32** %15, align 8
  %49 = load %struct.sockaddr*, %struct.sockaddr** %20, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = call i64 @__ivaliduser_sa(i32* %48, %struct.sockaddr* %49, i32 %50, i8* %51, i8* %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %47
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @fclose(i32* %56)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

58:                                               ; preds = %47
  %59 = load i32*, i32** %15, align 8
  %60 = call i32 @fclose(i32* %59)
  br label %61

61:                                               ; preds = %58, %44
  %62 = load i32, i32* %17, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %143

64:                                               ; preds = %61
  %65 = load i64, i64* @__check_rhosts_file, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %143

70:                                               ; preds = %67, %64
  store i32 0, i32* %17, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = call %struct.passwd* @getpwnam(i8* %71)
  store %struct.passwd* %72, %struct.passwd** %14, align 8
  %73 = icmp eq %struct.passwd* %72, null
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

75:                                               ; preds = %70
  %76 = load %struct.passwd*, %struct.passwd** %14, align 8
  %77 = getelementptr inbounds %struct.passwd, %struct.passwd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = trunc i64 %24 to i32
  %80 = call i32 @strlcpy(i8* %26, i32 %78, i32 %79)
  %81 = trunc i64 %24 to i32
  %82 = call i32 @strlcat(i8* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = call i64 (...) @geteuid()
  store i64 %83, i64* %16, align 8
  %84 = load %struct.passwd*, %struct.passwd** %14, align 8
  %85 = getelementptr inbounds %struct.passwd, %struct.passwd* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @seteuid(i64 %86)
  %88 = call i32* @fopen(i8* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %88, i32** %15, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call i32 @seteuid(i64 %89)
  %91 = load i32*, i32** %15, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %75
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

94:                                               ; preds = %75
  store i8* null, i8** %12, align 8
  %95 = call i64 @lstat(i8* %26, %struct.stat* %13)
  %96 = icmp slt i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %12, align 8
  br label %135

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @S_ISREG(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %98
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  br label %134

104:                                              ; preds = %98
  %105 = load i32*, i32** %15, align 8
  %106 = call i32 @fileno(i32* %105)
  %107 = call i64 @_fstat(i32 %106, %struct.stat* %13)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %104
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %12, align 8
  br label %133

110:                                              ; preds = %104
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.passwd*, %struct.passwd** %14, align 8
  %118 = getelementptr inbounds %struct.passwd, %struct.passwd* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  br label %132

122:                                              ; preds = %114, %110
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @S_IWGRP, align 4
  %126 = load i32, i32* @S_IWOTH, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %122
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  br label %131

131:                                              ; preds = %130, %122
  br label %132

132:                                              ; preds = %131, %121
  br label %133

133:                                              ; preds = %132, %109
  br label %134

134:                                              ; preds = %133, %103
  br label %135

135:                                              ; preds = %134, %97
  %136 = load i8*, i8** %12, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %135
  %139 = load i8*, i8** %12, align 8
  store i8* %139, i8** @__rcmd_errstr, align 8
  %140 = load i32*, i32** %15, align 8
  %141 = call i32 @fclose(i32* %140)
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

142:                                              ; preds = %135
  br label %44

143:                                              ; preds = %67, %61
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %22, align 4
  br label %144

144:                                              ; preds = %143, %138, %93, %74, %55, %30
  %145 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %145)
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.sockaddr_storage*, i8*, i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @__ivaliduser_sa(i32*, %struct.sockaddr*, i32, i8*, i8*) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local %struct.passwd* @getpwnam(i8*) #2

declare dso_local i32 @strlcpy(i8*, i32, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i32 @seteuid(i64) #2

declare dso_local i64 @lstat(i8*, %struct.stat*) #2

declare dso_local i32 @S_ISREG(i32) #2

declare dso_local i64 @_fstat(i32, %struct.stat*) #2

declare dso_local i32 @fileno(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
