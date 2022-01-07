; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/kldload/extr_kldload.c_path_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/kldload/extr_kldload.c_path_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c".ko\00", align 1
@PATHCTL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"sysctlnametomib(%s)\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"getting path: sysctl(%s) - size only\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"allocating %lu bytes for the path\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"getting path: sysctl(%s)\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"%s will be loaded from %s, not the current directory\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"%s is not in the module path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @path_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @path_check(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.stat, align 8
  %10 = alloca [5 x i32], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %19 = load i32, i32* @MAXPATHLEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %11, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %12, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i32* @strchr(i8* %23, i8 signext 47)
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %148

27:                                               ; preds = %2
  %28 = load i8*, i8** %4, align 8
  %29 = call i32* @strstr(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %148

32:                                               ; preds = %27
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @stat(i8* %33, %struct.stat* %9)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %148

37:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  %38 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %15, align 8
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %16, align 8
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %43 = call i64 @nitems(i32* %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* @PATHCTL, align 8
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %46 = call i64 @sysctlnametomib(i64 %44, i32* %45, i64* %13)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %37
  %49 = load i64, i64* @PATHCTL, align 8
  %50 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  br label %51

51:                                               ; preds = %48, %37
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @sysctl(i32* %52, i64 %53, i8* null, i64* %14, i32* null, i32 0)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i64, i64* @PATHCTL, align 8
  %58 = call i32 @err(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i64, i64* %14, align 8
  %61 = add i64 %60, 1
  %62 = call i8* @malloc(i64 %61)
  store i8* %62, i8** %6, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = icmp eq i8* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %65, %59
  %70 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %71 = load i64, i64* %13, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i32 @sysctl(i32* %70, i64 %71, i8* %72, i64* %14, i32* null, i32 0)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load i64, i64* @PATHCTL, align 8
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load i8*, i8** %6, align 8
  store i8* %79, i8** %7, align 8
  br label %80

80:                                               ; preds = %134, %103, %78
  %81 = call i8* @strsep(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  store i8* %81, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %135

83:                                               ; preds = %80
  %84 = load i8*, i8** %8, align 8
  %85 = load i32, i32* @MAXPATHLEN, align 4
  %86 = call i32 @strlcpy(i8* %22, i8* %84, i32 %85)
  %87 = call i32 @strlen(i8* %22)
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %22, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 47
  br i1 %93, label %94, label %97

94:                                               ; preds = %83
  %95 = load i32, i32* @MAXPATHLEN, align 4
  %96 = call i32 @strlcat(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %83
  %98 = load i8*, i8** %4, align 8
  %99 = load i32, i32* @MAXPATHLEN, align 4
  %100 = call i32 @strlcat(i8* %22, i8* %98, i32 %99)
  %101 = call i32 @stat(i8* %22, %struct.stat* %9)
  %102 = icmp eq i32 %101, -1
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %80

104:                                              ; preds = %97
  store i32 1, i32* %17, align 4
  %105 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %15, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %16, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i8* %118, i8* %119)
  br label %121

121:                                              ; preds = %117, %114
  br label %135

122:                                              ; preds = %109
  %123 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %15, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* %16, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %135

133:                                              ; preds = %127, %122
  br label %134

134:                                              ; preds = %133
  br label %80

135:                                              ; preds = %132, %121, %80
  %136 = load i8*, i8** %6, align 8
  %137 = call i32 @free(i8* %136)
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i8*, i8** %4, align 8
  %145 = call i32 (i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i8* %144)
  br label %146

146:                                              ; preds = %143, %140
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %148

147:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  store i32 1, i32* %18, align 4
  br label %148

148:                                              ; preds = %147, %146, %36, %31, %26
  %149 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %149)
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i32* @strstr(i8*, i8*) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @nitems(i32*) #2

declare dso_local i64 @sysctlnametomib(i64, i32*, i64*) #2

declare dso_local i32 @err(i32, i8*, i64) #2

declare dso_local i32 @sysctl(i32*, i64, i8*, i64*, i32*, i32) #2

declare dso_local i8* @malloc(i64) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @warnx(i8*, i8*, ...) #2

declare dso_local i32 @free(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
