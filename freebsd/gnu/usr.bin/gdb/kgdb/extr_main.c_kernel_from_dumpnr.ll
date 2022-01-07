; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kernel_from_dumpnr.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/gdb/kgdb/extr_main.c_kernel_from_dumpnr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s/kernel.%d\00", align 1
@crashdir = common dso_local global i8* null, align 8
@kernel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s/kernel.%d/kernel\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s/info.%d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%s/kernel.debug\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @kernel_from_dumpnr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kernel_from_dumpnr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = trunc i64 %11 to i32
  %15 = load i8*, i8** @crashdir, align 8
  %16 = load i32, i32* %2, align 4
  %17 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %15, i32 %16)
  %18 = call i32 @stat(i8* %13, %struct.stat* %7)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @S_ISREG(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @strdup(i8* %13)
  store i32 %26, i32* @kernel, align 4
  store i32 1, i32* %9, align 4
  br label %125

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @S_ISDIR(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = trunc i64 %11 to i32
  %34 = load i8*, i8** @crashdir, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %34, i32 %35)
  %37 = call i32 @stat(i8* %13, %struct.stat* %7)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @S_ISREG(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = call i32 @strdup(i8* %13)
  store i32 %45, i32* @kernel, align 4
  store i32 1, i32* %9, align 4
  br label %125

46:                                               ; preds = %39, %32
  br label %47

47:                                               ; preds = %46, %27
  br label %48

48:                                               ; preds = %47, %1
  %49 = trunc i64 %11 to i32
  %50 = load i8*, i8** @crashdir, align 8
  %51 = load i32, i32* %2, align 4
  %52 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %49, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %50, i32 %51)
  %53 = call i32* @fopen(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %53, i32** %5, align 8
  %54 = load i32*, i32** %5, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %13)
  store i32 1, i32* %9, align 4
  br label %125

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %121, %58
  %60 = trunc i64 %11 to i32
  %61 = load i32*, i32** %5, align 8
  %62 = call i32* @fgets(i8* %13, i32 %60, i32* %61)
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %122

64:                                               ; preds = %59
  %65 = call i32 @strlen(i8* %13)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %13, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %81

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %13, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

81:                                               ; preds = %76, %68, %64
  %82 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %81
  %85 = call i8* @strchr(i8* %13, i8 signext 58)
  store i8* %85, i8** %6, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = getelementptr inbounds i8, i8* %13, i64 4
  br label %93

90:                                               ; preds = %84
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 1
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i8* [ %89, %88 ], [ %92, %90 ]
  store i8* %94, i8** %6, align 8
  %95 = trunc i64 %11 to i32
  %96 = load i8*, i8** %6, align 8
  %97 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %13, i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %96)
  store i32 %97, i32* %8, align 4
  %98 = call i32 @stat(i8* %13, %struct.stat* %7)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %105, label %100

100:                                              ; preds = %93
  %101 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @S_ISREG(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %119, label %105

105:                                              ; preds = %100, %93
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 6
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %13, i64 %108
  store i8 0, i8* %109, align 1
  %110 = call i32 @stat(i8* %13, %struct.stat* %7)
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %117, label %112

112:                                              ; preds = %105
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @S_ISREG(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112, %105
  br label %122

118:                                              ; preds = %112
  br label %119

119:                                              ; preds = %118, %100
  %120 = call i32 @strdup(i8* %13)
  store i32 %120, i32* @kernel, align 4
  br label %122

121:                                              ; preds = %81
  br label %59

122:                                              ; preds = %119, %117, %59
  %123 = load i32*, i32** %5, align 8
  %124 = call i32 @fclose(i32* %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %122, %56, %44, %25
  %126 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %9, align 4
  switch i32 %127, label %129 [
    i32 0, label %128
    i32 1, label %128
  ]

128:                                              ; preds = %125, %125
  ret void

129:                                              ; preds = %125
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #2

declare dso_local i64 @S_ISREG(i32) #2

declare dso_local i32 @strdup(i8*) #2

declare dso_local i64 @S_ISDIR(i32) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @warn(i8*, i8*) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
