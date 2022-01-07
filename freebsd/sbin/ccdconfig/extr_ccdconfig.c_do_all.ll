; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_do_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ccdconfig/extr_ccdconfig.c_do_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_POSIX2_LINE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"setegid failed\00", align 1
@ccdconf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"fopen: %s\00", align 1
@lineno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"no memory to configure ccds\00", align 1
@CCD_UNCONFIGALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* @_POSIX2_LINE_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %5, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %6, align 8
  store i32 0, i32* %10, align 4
  %17 = call i32 (...) @getegid()
  store i32 %17, i32* %11, align 4
  %18 = call i32 (...) @getgid()
  %19 = call i64 @setegid(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* @ccdconf, align 4
  %25 = call i32* @fopen(i32 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %4, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = call i64 @setegid(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* @ccdconf, align 4
  %35 = call i32 @warn(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %126

36:                                               ; preds = %23
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @setegid(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %121, %42
  %44 = trunc i64 %14 to i32
  %45 = load i32*, i32** %4, align 8
  %46 = call i32* @fgets(i8* %16, i32 %44, i32* %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %122

48:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  store i8** null, i8*** %8, align 8
  %49 = load i32, i32* @lineno, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* @lineno, align 4
  %51 = call i8* @strrchr(i8* %16, i8 signext 10)
  store i8* %51, i8** %7, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i8*, i8** %7, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %48
  %56 = getelementptr inbounds i8, i8* %16, i64 0
  %57 = load i8, i8* %56, align 16
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %115

61:                                               ; preds = %55
  store i8* %16, i8** %7, align 8
  br label %62

62:                                               ; preds = %102, %61
  %63 = load i8*, i8** %7, align 8
  %64 = call i8* @strtok(i8* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i8* %64, i8** %7, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %103

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 35
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %103

72:                                               ; preds = %66
  %73 = load i8**, i8*** %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 8, %76
  %78 = trunc i64 %77 to i32
  %79 = call i8** @realloc(i8** %73, i32 %78)
  store i8** %79, i8*** %8, align 8
  %80 = icmp eq i8** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %126

83:                                               ; preds = %72
  %84 = load i8*, i8** %7, align 8
  %85 = load i8**, i8*** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8*, i8** %85, i64 %88
  store i8* %84, i8** %89, align 8
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* @CCD_UNCONFIGALL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %83
  %94 = load i32, i32* %9, align 4
  %95 = load i8**, i8*** %8, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i64 @do_single(i32 %94, i8** %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %93
  br label %115

101:                                              ; preds = %83
  br label %102

102:                                              ; preds = %101
  store i8* null, i8** %7, align 8
  br label %62

103:                                              ; preds = %71, %62
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %103
  %107 = load i32, i32* %9, align 4
  %108 = load i8**, i8*** %8, align 8
  %109 = load i32, i32* %3, align 4
  %110 = call i64 @do_single(i32 %107, i8** %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 1, i32* %10, align 4
  br label %113

113:                                              ; preds = %112, %106
  br label %114

114:                                              ; preds = %113, %103
  br label %115

115:                                              ; preds = %114, %100, %60
  %116 = load i8**, i8*** %8, align 8
  %117 = icmp ne i8** %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i8**, i8*** %8, align 8
  %120 = call i32 @free(i8** %119)
  br label %121

121:                                              ; preds = %118, %115
  br label %43

122:                                              ; preds = %43
  %123 = load i32*, i32** %4, align 8
  %124 = call i32 @fclose(i32* %123)
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %2, align 4
  store i32 1, i32* %12, align 4
  br label %126

126:                                              ; preds = %122, %81, %33
  %127 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getegid(...) #2

declare dso_local i64 @setegid(i32) #2

declare dso_local i32 @getgid(...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32* @fopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, i32) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i8* @strrchr(i8*, i8 signext) #2

declare dso_local i8* @strtok(i8*, i8*) #2

declare dso_local i8** @realloc(i8**, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i64 @do_single(i32, i8**, i32) #2

declare dso_local i32 @free(i8**) #2

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
