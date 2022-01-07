; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob3.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_glob.c_glob3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i8*)*, %struct.dirent* (i8*)*, i64 (i8*, i64)* }
%struct.dirent = type { i64* }

@MaxPathLen = common dso_local global i32 0, align 4
@CHAR_EOS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_ABEND = common dso_local global i32 0, align 4
@GLOB_ALTDIRFUNC = common dso_local global i32 0, align 4
@readdir = common dso_local global i64 0, align 8
@CHAR_DOT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i64*, i64*, %struct.TYPE_5__*, i64*)* @glob3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob3(i64* %0, i64* %1, i64* %2, i64* %3, %struct.TYPE_5__* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.dirent*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.dirent* (i8*)*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i64*, align 8
  store i64* %0, i64** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %12, align 8
  store i64* %5, i64** %13, align 8
  %23 = load i32, i32* @MaxPathLen, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i64, i64* @CHAR_EOS, align 8
  %28 = load i64*, i64** %9, align 8
  store i64 %27, i64* %28, align 8
  store i64 0, i64* @errno, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %31 = call i8* @g_opendir(i64* %29, %struct.TYPE_5__* %30)
  store i8* %31, i8** %15, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %58

33:                                               ; preds = %6
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  %36 = load i64 (i8*, i64)*, i64 (i8*, i64)** %35, align 8
  %37 = icmp ne i64 (i8*, i64)* %36, null
  br i1 %37, label %38, label %57

38:                                               ; preds = %33
  %39 = load i64*, i64** %8, align 8
  %40 = call i32 @g_Ctoc(i64* %39, i8* %26)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  %43 = load i64 (i8*, i64)*, i64 (i8*, i64)** %42, align 8
  %44 = load i64, i64* @errno, align 8
  %45 = call i64 %43(i8* %26, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GLOB_ERR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47, %38
  %55 = load i32, i32* @GLOB_ABEND, align 4
  store i32 %55, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %147

56:                                               ; preds = %47
  br label %57

57:                                               ; preds = %56, %33
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %147

58:                                               ; preds = %6
  store i32 0, i32* %16, align 4
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %58
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load %struct.dirent* (i8*)*, %struct.dirent* (i8*)** %67, align 8
  store %struct.dirent* (i8*)* %68, %struct.dirent* (i8*)** %19, align 8
  br label %72

69:                                               ; preds = %58
  %70 = load i64, i64* @readdir, align 8
  %71 = inttoptr i64 %70 to %struct.dirent* (i8*)*
  store %struct.dirent* (i8*)* %71, %struct.dirent* (i8*)** %19, align 8
  br label %72

72:                                               ; preds = %69, %65
  br label %73

73:                                               ; preds = %128, %114, %91, %72
  %74 = load %struct.dirent* (i8*)*, %struct.dirent* (i8*)** %19, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = call %struct.dirent* %74(i8* %75)
  store %struct.dirent* %76, %struct.dirent** %14, align 8
  %77 = icmp ne %struct.dirent* %76, null
  br i1 %77, label %78, label %129

78:                                               ; preds = %73
  %79 = load %struct.dirent*, %struct.dirent** %14, align 8
  %80 = getelementptr inbounds %struct.dirent, %struct.dirent* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CHAR_DOT, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @CHAR_DOT, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %73

92:                                               ; preds = %86, %78
  %93 = load %struct.dirent*, %struct.dirent** %14, align 8
  %94 = getelementptr inbounds %struct.dirent, %struct.dirent* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = bitcast i64* %95 to i32*
  store i32* %96, i32** %21, align 8
  %97 = load i64*, i64** %9, align 8
  store i64* %97, i64** %22, align 8
  br label %98

98:                                               ; preds = %107, %92
  %99 = load i32*, i32** %21, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %21, align 8
  %101 = load i32, i32* %99, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64*, i64** %22, align 8
  %104 = getelementptr inbounds i64, i64* %103, i32 1
  store i64* %104, i64** %22, align 8
  store i64 %102, i64* %103, align 8
  %105 = load i64, i64* @CHAR_EOS, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %98

108:                                              ; preds = %98
  %109 = load i64*, i64** %9, align 8
  %110 = load i64*, i64** %10, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = call i32 @match(i64* %109, i64* %110, i64* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = load i64, i64* @CHAR_EOS, align 8
  %116 = load i64*, i64** %9, align 8
  store i64 %115, i64* %116, align 8
  br label %73

117:                                              ; preds = %108
  %118 = load i64*, i64** %8, align 8
  %119 = load i64*, i64** %22, align 8
  %120 = getelementptr inbounds i64, i64* %119, i32 -1
  store i64* %120, i64** %22, align 8
  %121 = load i64*, i64** %11, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = call i32 @glob2(i64* %118, i64* %120, i64* %121, %struct.TYPE_5__* %122, i64* %123)
  store i32 %124, i32* %16, align 4
  %125 = load i32, i32* %16, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %129

128:                                              ; preds = %117
  br label %73

129:                                              ; preds = %127, %73
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @GLOB_ALTDIRFUNC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32 (i8*)*, i32 (i8*)** %138, align 8
  %140 = load i8*, i8** %15, align 8
  %141 = call i32 %139(i8* %140)
  br label %145

142:                                              ; preds = %129
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 @closedir(i8* %143)
  br label %145

145:                                              ; preds = %142, %136
  %146 = load i32, i32* %16, align 4
  store i32 %146, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %147

147:                                              ; preds = %145, %57, %54
  %148 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @g_opendir(i64*, %struct.TYPE_5__*) #2

declare dso_local i32 @g_Ctoc(i64*, i8*) #2

declare dso_local i32 @match(i64*, i64*, i64*) #2

declare dso_local i32 @glob2(i64*, i64*, i64*, %struct.TYPE_5__*, i64*) #2

declare dso_local i32 @closedir(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
