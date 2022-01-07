; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_dodir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ldconfig/extr_ldconfig.c_dodir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@MAXPATHLEN = common dso_local global i32 0, align 4
@MAXDEWEY = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dodir(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.dirent*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load i32, i32* @MAXDEWEY, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @opendir(i8* %22)
  store i32* %23, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOENT, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

33:                                               ; preds = %28, %25
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %136, %135, %124, %116, %75, %65, %36
  %38 = load i32*, i32** %6, align 8
  %39 = call %struct.dirent* @readdir(i32* %38)
  store %struct.dirent* %39, %struct.dirent** %7, align 8
  %40 = icmp ne %struct.dirent* %39, null
  br i1 %40, label %41, label %143

41:                                               ; preds = %37
  %42 = load %struct.dirent*, %struct.dirent** %7, align 8
  %43 = getelementptr inbounds %struct.dirent, %struct.dirent* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 108
  br i1 %48, label %65, label %49

49:                                               ; preds = %41
  %50 = load %struct.dirent*, %struct.dirent** %7, align 8
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 105
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load %struct.dirent*, %struct.dirent** %7, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 98
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %49, %41
  br label %37

66:                                               ; preds = %57
  %67 = load %struct.dirent*, %struct.dirent** %7, align 8
  %68 = getelementptr inbounds %struct.dirent, %struct.dirent* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 3
  %71 = call i32 @strcpy(i8* %18, i8* %70)
  %72 = call i32 @strlen(i8* %18)
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %13, align 4
  %74 = icmp slt i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %37

76:                                               ; preds = %66
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %18, i64 %78
  %80 = getelementptr inbounds i8, i8* %79, i64 -4
  store i8* %80, i8** %14, align 8
  br label %81

81:                                               ; preds = %110, %76
  %82 = load i8*, i8** %14, align 8
  %83 = icmp ugt i8* %82, %18
  br i1 %83, label %84, label %113

84:                                               ; preds = %81
  %85 = load i8*, i8** %14, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 46
  br i1 %89, label %90, label %109

90:                                               ; preds = %84
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 115
  br i1 %95, label %96, label %109

96:                                               ; preds = %90
  %97 = load i8*, i8** %14, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 2
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 111
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i8*, i8** %14, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 46
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %113

109:                                              ; preds = %102, %96, %90, %84
  br label %110

110:                                              ; preds = %109
  %111 = load i8*, i8** %14, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 -1
  store i8* %112, i8** %14, align 8
  br label %81

113:                                              ; preds = %108, %81
  %114 = load i8*, i8** %14, align 8
  %115 = icmp ule i8* %114, %18
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  br label %37

117:                                              ; preds = %113
  %118 = load i8*, i8** %14, align 8
  store i8 0, i8* %118, align 1
  %119 = load i8*, i8** %14, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 4
  %121 = load i8, i8* %120, align 1
  %122 = call i32 @isdigit(i8 signext %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %117
  br label %37

125:                                              ; preds = %117
  %126 = ptrtoint i32* %21 to i32
  %127 = mul nuw i64 4, %20
  %128 = trunc i64 %127 to i32
  %129 = call i32 @bzero(i32 %126, i32 %128)
  %130 = load i8*, i8** %14, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 4
  %132 = call i32 @getdewey(i32* %21, i8* %131)
  store i32 %132, i32* %11, align 4
  %133 = load i32, i32* %11, align 4
  %134 = icmp slt i32 %133, 2
  br i1 %134, label %135, label %136

135:                                              ; preds = %125
  br label %37

136:                                              ; preds = %125
  %137 = load i8*, i8** %4, align 8
  %138 = load %struct.dirent*, %struct.dirent** %7, align 8
  %139 = getelementptr inbounds %struct.dirent, %struct.dirent* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = call i32 @enter(i8* %137, i8* %140, i8* %18, i32* %21, i32 %141)
  br label %37

143:                                              ; preds = %37
  %144 = load i32*, i32** %6, align 8
  %145 = call i32 @closedir(i32* %144)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %146

146:                                              ; preds = %143, %33, %32
  %147 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @opendir(i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local %struct.dirent* @readdir(i32*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @isdigit(i8 signext) #2

declare dso_local i32 @bzero(i32, i32) #2

declare dso_local i32 @getdewey(i32*, i8*) #2

declare dso_local i32 @enter(i8*, i8*, i8*, i32*, i32) #2

declare dso_local i32 @closedir(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
