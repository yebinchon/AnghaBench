; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_open_binary_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/extr_rtld.c_open_binary_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"-p and no PATH environment variable\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Cannot allocate memory\00", align 1
@ENOENT = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_VERIFY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"Cannot open %s: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @open_binary_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_binary_fd(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @PATH_MAX, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %83

16:                                               ; preds = %2
  %17 = load i8*, i8** %3, align 8
  %18 = call i32* @strchr(i8* %17, i8 signext 47)
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %83

20:                                               ; preds = %16
  %21 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %5, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = call i32 (i8*, ...) @_rtld_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 (...) @rtld_die()
  br label %27

27:                                               ; preds = %24, %20
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @strdup(i8* %28)
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = call i32 (i8*, ...) @_rtld_error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %34 = call i32 (...) @rtld_die()
  br label %35

35:                                               ; preds = %32, %27
  store i32 -1, i32* %9, align 4
  %36 = load i64, i64* @ENOENT, align 8
  store i64 %36, i64* @errno, align 8
  br label %37

37:                                               ; preds = %79, %64, %57, %46, %35
  %38 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %38, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %80

40:                                               ; preds = %37
  %41 = load i8*, i8** %6, align 8
  %42 = trunc i64 %11 to i32
  %43 = call i32 @strlcpy(i8* %13, i8* %41, i32 %42)
  %44 = sext i32 %43 to i64
  %45 = icmp uge i64 %44, %11
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %37

47:                                               ; preds = %40
  %48 = getelementptr inbounds i8, i8* %13, i64 0
  %49 = load i8, i8* %48, align 16
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = trunc i64 %11 to i32
  %54 = call i32 @strlcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = sext i32 %54 to i64
  %56 = icmp uge i64 %55, %11
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %37

58:                                               ; preds = %52, %47
  %59 = load i8*, i8** %3, align 8
  %60 = trunc i64 %11 to i32
  %61 = call i32 @strlcat(i8* %13, i8* %59, i32 %60)
  %62 = sext i32 %61 to i64
  %63 = icmp uge i64 %62, %11
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %37

65:                                               ; preds = %58
  %66 = load i32, i32* @O_RDONLY, align 4
  %67 = load i32, i32* @O_CLOEXEC, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @O_VERIFY, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @open(i8* %13, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %78, label %74

74:                                               ; preds = %65
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @ENOENT, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74, %65
  br label %80

79:                                               ; preds = %74
  br label %37

80:                                               ; preds = %78, %37
  %81 = load i8*, i8** %5, align 8
  %82 = call i32 @free(i8* %81)
  br label %91

83:                                               ; preds = %16, %2
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* @O_RDONLY, align 4
  %86 = load i32, i32* @O_CLOEXEC, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @O_VERIFY, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @open(i8* %84, i32 %89)
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %83, %80
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, -1
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load i8*, i8** %3, align 8
  %96 = load i64, i64* @errno, align 8
  %97 = call i32 @rtld_strerror(i64 %96)
  %98 = call i32 (i8*, ...) @_rtld_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* %95, i32 %97)
  %99 = call i32 (...) @rtld_die()
  br label %100

100:                                              ; preds = %94, %91
  %101 = load i32, i32* %9, align 4
  %102 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @strchr(i8*, i8 signext) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i32 @_rtld_error(i8*, ...) #2

declare dso_local i32 @rtld_die(...) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @rtld_strerror(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
