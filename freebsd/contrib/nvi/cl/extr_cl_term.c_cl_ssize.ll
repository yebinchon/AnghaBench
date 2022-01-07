; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_ssize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_term.c_cl_ssize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winsize = type { i64, i64 }

@STDERR_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@O_LINES = common dso_local global i32 0, align 4
@O_COLUMNS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@M_SYSERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"tigetnum: lines\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cols\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"tigetnum: cols\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"LINES\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"COLUMNS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_ssize(i32* %0, i32 %1, i64* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.winsize, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32*, i32** %11, align 8
  store i32 1, i32* %20, align 4
  br label %21

21:                                               ; preds = %19, %5
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %22 = load i32, i32* @STDERR_FILENO, align 4
  %23 = load i32, i32* @TIOCGWINSZ, align 4
  %24 = call i32 @ioctl(i32 %22, i32 %23, %struct.winsize* %12)
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.winsize, %struct.winsize* %12, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %14, align 8
  %29 = getelementptr inbounds %struct.winsize, %struct.winsize* %12, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %26, %21
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %31
  %35 = load i64, i64* %14, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i64, i64* %13, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %34
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32*, i32** %11, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %40
  store i32 0, i32* %6, align 4
  br label %153

46:                                               ; preds = %37
  %47 = load i32*, i32** %7, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  %50 = load i64, i64* %14, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @O_LINES, align 4
  %53 = call i64 @O_VAL(i32* %51, i32 %52)
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load i64, i64* %13, align 8
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* @O_COLUMNS, align 4
  %59 = call i64 @O_VAL(i32* %57, i32 %58)
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32*, i32** %11, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %61
  store i32 0, i32* %6, align 4
  br label %153

67:                                               ; preds = %55, %49, %46
  %68 = load i64*, i64** %9, align 8
  %69 = icmp ne i64* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %14, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i64*, i64** %10, align 8
  %75 = icmp ne i64* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i64, i64* %13, align 8
  %78 = load i64*, i64** %10, align 8
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %73
  store i32 0, i32* %6, align 4
  br label %153

80:                                               ; preds = %31
  %81 = load i64, i64* %14, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %80
  %84 = load i64, i64* %13, align 8
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %119

86:                                               ; preds = %83, %80
  %87 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %87, i8** %16, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  br label %120

90:                                               ; preds = %86
  %91 = load i64, i64* %14, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = call i32 @tigetnum(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %94, i32* %15, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* @M_SYSERR, align 4
  %99 = call i32 @msgq(i32* %97, i32 %98, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %103

100:                                              ; preds = %93
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %100, %96
  br label %104

104:                                              ; preds = %103, %90
  %105 = load i64, i64* %13, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %104
  %108 = call i32 @tigetnum(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %108, i32* %15, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = load i32*, i32** %7, align 8
  %112 = load i32, i32* @M_SYSERR, align 4
  %113 = call i32 @msgq(i32* %111, i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %117

114:                                              ; preds = %107
  %115 = load i32, i32* %15, align 4
  %116 = sext i32 %115 to i64
  store i64 %116, i64* %13, align 8
  br label %117

117:                                              ; preds = %114, %110
  br label %118

118:                                              ; preds = %117, %104
  br label %119

119:                                              ; preds = %118, %83
  br label %120

120:                                              ; preds = %119, %89
  %121 = load i64, i64* %14, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  store i64 24, i64* %14, align 8
  br label %124

124:                                              ; preds = %123, %120
  %125 = load i64, i64* %13, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  store i64 80, i64* %13, align 8
  br label %128

128:                                              ; preds = %127, %124
  %129 = call i8* @getenv(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %129, i8** %16, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load i8*, i8** %16, align 8
  %133 = call i64 @strtol(i8* %132, i32* null, i32 10)
  store i64 %133, i64* %14, align 8
  br label %134

134:                                              ; preds = %131, %128
  %135 = call i8* @getenv(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  store i8* %135, i8** %16, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i8*, i8** %16, align 8
  %139 = call i64 @strtol(i8* %138, i32* null, i32 10)
  store i64 %139, i64* %13, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i64*, i64** %9, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, i64* %14, align 8
  %145 = load i64*, i64** %9, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i64*, i64** %10, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i64, i64* %13, align 8
  %151 = load i64*, i64** %10, align 8
  store i64 %150, i64* %151, align 8
  br label %152

152:                                              ; preds = %149, %146
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %152, %79, %66, %45
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i64 @O_VAL(i32*, i32) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @tigetnum(i8*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
