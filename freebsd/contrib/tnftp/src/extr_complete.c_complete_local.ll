; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_local.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tnftp/src/extr_complete.c_complete_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8** }
%struct.dirent = type { i8*, i64 }
%struct.stat = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@CC_ERROR = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@CC_REFRESH = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@__const.complete_local.suffix = private unnamed_addr constant [2 x i8] c" \00", align 1
@el = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8*, i32)* @complete_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @complete_local(i8* %0, i32 %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dirent*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.stat, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [2 x i8], align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %21 = load i32, i32* @MAXPATHLEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %7, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %8, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i8* @strrchr(i8* %25, i8 signext 47)
  store i8* %26, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 46, i8* %29, align 16
  %30 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %30, align 1
  %31 = load i8*, i8** %4, align 8
  store i8* %31, i8** %9, align 8
  br label %52

32:                                               ; preds = %2
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp eq i8* %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 47, i8* %37, align 16
  %38 = getelementptr inbounds i8, i8* %24, i64 1
  store i8 0, i8* %38, align 1
  br label %49

39:                                               ; preds = %32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = ptrtoint i8* %41 to i64
  %44 = ptrtoint i8* %42 to i64
  %45 = sub i64 %43, %44
  %46 = add nsw i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i32 @strlcpy(i8* %24, i8* %40, i32 %47)
  br label %49

49:                                               ; preds = %39, %36
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %9, align 8
  br label %52

52:                                               ; preds = %49, %28
  %53 = getelementptr inbounds i8, i8* %24, i64 0
  %54 = load i8, i8* %53, align 16
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 126
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = call i8* @globulize(i8* %24)
  store i8* %58, i8** %14, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i8, i8* @CC_ERROR, align 1
  store i8 %61, i8* %3, align 1
  store i32 1, i32* %15, align 4
  br label %174

62:                                               ; preds = %57
  %63 = load i8*, i8** %14, align 8
  %64 = trunc i64 %22 to i32
  %65 = call i32 @strlcpy(i8* %24, i8* %63, i32 %64)
  %66 = load i8*, i8** %14, align 8
  %67 = call i32 @free(i8* %66)
  br label %68

68:                                               ; preds = %62, %52
  %69 = call i32* @opendir(i8* %24)
  store i32* %69, i32** %10, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i8, i8* @CC_ERROR, align 1
  store i8 %72, i8* %3, align 1
  store i32 1, i32* %15, align 4
  br label %174

73:                                               ; preds = %68
  %74 = call %struct.TYPE_6__* (...) @ftp_sl_init()
  store %struct.TYPE_6__* %74, %struct.TYPE_6__** %6, align 8
  %75 = load i8*, i8** %9, align 8
  %76 = call i64 @strlen(i8* %75)
  store i64 %76, i64* %13, align 8
  %77 = load i32*, i32** %10, align 8
  %78 = call %struct.dirent* @readdir(i32* %77)
  store %struct.dirent* %78, %struct.dirent** %11, align 8
  br label %79

79:                                               ; preds = %119, %73
  %80 = load %struct.dirent*, %struct.dirent** %11, align 8
  %81 = icmp ne %struct.dirent* %80, null
  br i1 %81, label %82, label %122

82:                                               ; preds = %79
  %83 = load %struct.dirent*, %struct.dirent** %11, align 8
  %84 = getelementptr inbounds %struct.dirent, %struct.dirent* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.dirent*, %struct.dirent** %11, align 8
  %90 = getelementptr inbounds %struct.dirent, %struct.dirent* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %88, %82
  br label %119

95:                                               ; preds = %88
  %96 = load i64, i64* %13, align 8
  %97 = load %struct.dirent*, %struct.dirent** %11, align 8
  %98 = getelementptr inbounds %struct.dirent, %struct.dirent* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ugt i64 %96, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %119

102:                                              ; preds = %95
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.dirent*, %struct.dirent** %11, align 8
  %105 = getelementptr inbounds %struct.dirent, %struct.dirent* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @strncmp(i8* %103, i8* %106, i64 %107)
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %102
  %111 = load %struct.dirent*, %struct.dirent** %11, align 8
  %112 = getelementptr inbounds %struct.dirent, %struct.dirent* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i8* @ftp_strdup(i8* %113)
  store i8* %114, i8** %16, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = load i8*, i8** %16, align 8
  %117 = call i32 @ftp_sl_add(%struct.TYPE_6__* %115, i8* %116)
  br label %118

118:                                              ; preds = %110, %102
  br label %119

119:                                              ; preds = %118, %101, %94
  %120 = load i32*, i32** %10, align 8
  %121 = call %struct.dirent* @readdir(i32* %120)
  store %struct.dirent* %121, %struct.dirent** %11, align 8
  br label %79

122:                                              ; preds = %79
  %123 = load i32*, i32** %10, align 8
  %124 = call i32 @closedir(i32* %123)
  %125 = load i8*, i8** %9, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %128 = call zeroext i8 @complete_ambiguous(i8* %125, i32 %126, %struct.TYPE_6__* %127)
  store i8 %128, i8* %12, align 1
  %129 = load i8, i8* %12, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* @CC_REFRESH, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %170

134:                                              ; preds = %122
  %135 = load i32, i32* @MAXPATHLEN, align 4
  %136 = zext i32 %135 to i64
  %137 = call i8* @llvm.stacksave()
  store i8* %137, i8** %18, align 8
  %138 = alloca i8, i64 %136, align 16
  store i64 %136, i64* %19, align 8
  %139 = trunc i64 %136 to i32
  %140 = call i32 @strlcpy(i8* %138, i8* %24, i32 %139)
  %141 = trunc i64 %136 to i32
  %142 = call i32 @strlcat(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = load i8**, i8*** %144, align 8
  %146 = getelementptr inbounds i8*, i8** %145, i64 0
  %147 = load i8*, i8** %146, align 8
  %148 = trunc i64 %136 to i32
  %149 = call i32 @strlcat(i8* %138, i8* %147, i32 %148)
  %150 = call i64 @stat(i8* %138, %struct.stat* %17)
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %168

152:                                              ; preds = %134
  %153 = bitcast [2 x i8]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %153, i8* align 1 getelementptr inbounds ([2 x i8], [2 x i8]* @__const.complete_local.suffix, i32 0, i32 0), i64 2, i1 false)
  %154 = getelementptr inbounds %struct.stat, %struct.stat* %17, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @S_ISDIR(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  store i8 47, i8* %159, align 1
  br label %160

160:                                              ; preds = %158, %152
  %161 = load i32, i32* @el, align 4
  %162 = getelementptr inbounds [2 x i8], [2 x i8]* %20, i64 0, i64 0
  %163 = call i32 @el_insertstr(i32 %161, i8* %162)
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8, i8* @CC_ERROR, align 1
  store i8 %166, i8* %12, align 1
  br label %167

167:                                              ; preds = %165, %160
  br label %168

168:                                              ; preds = %167, %134
  %169 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %168, %122
  %171 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %172 = call i32 @sl_free(%struct.TYPE_6__* %171, i32 1)
  %173 = load i8, i8* %12, align 1
  store i8 %173, i8* %3, align 1
  store i32 1, i32* %15, align 4
  br label %174

174:                                              ; preds = %170, %71, %60
  %175 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i8, i8* %3, align 1
  ret i8 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i8* @globulize(i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32* @opendir(i8*) #2

declare dso_local %struct.TYPE_6__* @ftp_sl_init(...) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i64) #2

declare dso_local i8* @ftp_strdup(i8*) #2

declare dso_local i32 @ftp_sl_add(%struct.TYPE_6__*, i8*) #2

declare dso_local i32 @closedir(i32*) #2

declare dso_local zeroext i8 @complete_ambiguous(i8*, i32, %struct.TYPE_6__*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @stat(i8*, %struct.stat*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32 @el_insertstr(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @sl_free(%struct.TYPE_6__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
