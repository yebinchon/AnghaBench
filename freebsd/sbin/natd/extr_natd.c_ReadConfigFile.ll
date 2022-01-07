; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_ReadConfigFile.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/natd/extr_natd.c_ReadConfigFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"cannot open config file %s\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"config file format error: last line should end with newline\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ReadConfigFile(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32* @fopen(i8* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %10, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  br label %16

16:                                               ; preds = %13, %1
  br label %17

17:                                               ; preds = %123, %58, %16
  %18 = load i32*, i32** %3, align 8
  %19 = call i8* @fgetln(i32* %18, i64* %5)
  store i8* %19, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %126

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub i64 %23, 1
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 10
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i8*, i8** %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8 0, i8* %33, align 1
  br label %36

34:                                               ; preds = %21
  %35 = call i32 @errx(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i8*, i8** %4, align 8
  %38 = call i8* @strchr(i8* %37, i8 signext 35)
  store i8* %38, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i8*, i8** %4, align 8
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %50, %42
  %45 = load i8*, i8** %6, align 8
  %46 = load i8, i8* %45, align 1
  %47 = call i64 @isspace(i8 signext %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load i8*, i8** %6, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %6, align 8
  br label %44

53:                                               ; preds = %44
  %54 = load i8*, i8** %6, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %17

59:                                               ; preds = %53
  %60 = load i8*, i8** %4, align 8
  %61 = call i8* @strchr(i8* %60, i8 signext 0)
  store i8* %61, i8** %7, align 8
  br label %62

62:                                               ; preds = %68, %59
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 -1
  store i8* %64, i8** %7, align 8
  %65 = load i8, i8* %64, align 1
  %66 = call i64 @isspace(i8 signext %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %62

69:                                               ; preds = %62
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  store i8 0, i8* %71, align 1
  %72 = load i8*, i8** %6, align 8
  store i8* %72, i8** %8, align 8
  br label %73

73:                                               ; preds = %86, %69
  %74 = load i8*, i8** %6, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i8*, i8** %6, align 8
  %80 = load i8, i8* %79, align 1
  %81 = call i64 @isspace(i8 signext %80)
  %82 = icmp ne i64 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %78, %73
  %85 = phi i1 [ false, %73 ], [ %83, %78 ]
  br i1 %85, label %86, label %89

86:                                               ; preds = %84
  %87 = load i8*, i8** %6, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %6, align 8
  br label %73

89:                                               ; preds = %84
  %90 = load i8*, i8** %6, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = load i8*, i8** %6, align 8
  store i8 0, i8* %95, align 1
  %96 = load i8*, i8** %6, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %6, align 8
  br label %98

98:                                               ; preds = %94, %89
  br label %99

99:                                               ; preds = %111, %98
  %100 = load i8*, i8** %6, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i8*, i8** %6, align 8
  %106 = load i8, i8* %105, align 1
  %107 = call i64 @isspace(i8 signext %106)
  %108 = icmp ne i64 %107, 0
  br label %109

109:                                              ; preds = %104, %99
  %110 = phi i1 [ false, %99 ], [ %108, %104 ]
  br i1 %110, label %111, label %114

111:                                              ; preds = %109
  %112 = load i8*, i8** %6, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %6, align 8
  br label %99

114:                                              ; preds = %109
  %115 = load i8*, i8** %8, align 8
  %116 = load i8*, i8** %6, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %114
  %121 = load i8*, i8** %6, align 8
  br label %123

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %120
  %124 = phi i8* [ %121, %120 ], [ null, %122 ]
  %125 = call i32 @ParseOption(i8* %115, i8* %124)
  br label %17

126:                                              ; preds = %17
  %127 = load i32*, i32** %3, align 8
  %128 = call i32 @fclose(i32* %127)
  ret void
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i32 @ParseOption(i8*, i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
