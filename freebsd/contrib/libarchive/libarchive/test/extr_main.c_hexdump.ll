; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_hexdump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_main.c_hexdump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"(null)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%04x\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c%02x\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%c  \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64, i64)* @hexdump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hexdump(i8* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %147

17:                                               ; preds = %4
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %144, %17
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %147

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %8, align 8
  %25 = add i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  store i8 32, i8* %11, align 1
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %91, %22
  %29 = load i64, i64* %10, align 8
  %30 = icmp ult i64 %29, 16
  br i1 %30, label %31, label %37

31:                                               ; preds = %28
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %32, %33
  %35 = load i64, i64* %7, align 8
  %36 = icmp ult i64 %34, %35
  br label %37

37:                                               ; preds = %31, %28
  %38 = phi i1 [ false, %28 ], [ %36, %31 ]
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load i8*, i8** %5, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add i64 %44, %45
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = load i8*, i8** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %51, %52
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %42
  store i8 95, i8* %11, align 1
  br label %59

59:                                               ; preds = %58, %42, %39
  %60 = load i8, i8* %11, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8*, i8** %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %63, %64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = and i32 255, %68
  %70 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %69)
  %71 = load i8*, i8** %6, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %90

73:                                               ; preds = %59
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add i64 %75, %76
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8*, i8** %6, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = add i64 %82, %83
  %85 = getelementptr inbounds i8, i8* %81, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %80, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %73
  store i8 32, i8* %11, align 1
  br label %90

90:                                               ; preds = %89, %73, %59
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %10, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %28

94:                                               ; preds = %37
  br label %95

95:                                               ; preds = %102, %94
  %96 = load i64, i64* %10, align 8
  %97 = icmp ult i64 %96, 16
  br i1 %97, label %98, label %105

98:                                               ; preds = %95
  %99 = load i8, i8* %11, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  store i8 32, i8* %11, align 1
  br label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %95

105:                                              ; preds = %95
  %106 = load i8, i8* %11, align 1
  %107 = sext i8 %106 to i32
  %108 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %107)
  store i64 0, i64* %10, align 8
  br label %109

109:                                              ; preds = %139, %105
  %110 = load i64, i64* %10, align 8
  %111 = icmp ult i64 %110, 16
  br i1 %111, label %112, label %118

112:                                              ; preds = %109
  %113 = load i64, i64* %9, align 8
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* %7, align 8
  %117 = icmp ult i64 %115, %116
  br label %118

118:                                              ; preds = %112, %109
  %119 = phi i1 [ false, %109 ], [ %117, %112 ]
  br i1 %119, label %120, label %142

120:                                              ; preds = %118
  %121 = load i8*, i8** %5, align 8
  %122 = load i64, i64* %9, align 8
  %123 = load i64, i64* %10, align 8
  %124 = add i64 %122, %123
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp sge i32 %128, 32
  br i1 %129, label %130, label %136

130:                                              ; preds = %120
  %131 = load i32, i32* %12, align 4
  %132 = icmp sle i32 %131, 126
  br i1 %132, label %133, label %136

133:                                              ; preds = %130
  %134 = load i32, i32* %12, align 4
  %135 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %134)
  br label %138

136:                                              ; preds = %130, %120
  %137 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %10, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %10, align 8
  br label %109

142:                                              ; preds = %118
  %143 = call i32 (i8*, ...) @logprintf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %144

144:                                              ; preds = %142
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %145, 16
  store i64 %146, i64* %9, align 8
  br label %18

147:                                              ; preds = %15, %18
  ret void
}

declare dso_local i32 @logprintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
