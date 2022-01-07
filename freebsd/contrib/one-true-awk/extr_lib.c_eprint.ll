; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_eprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/one-true-awk/extr_lib.c_eprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@eprint.been_here = internal global i32 0, align 4
@compile_time = common dso_local global i32 0, align 4
@ebuf = external dso_local global [0 x i8], align 1
@ep = external dso_local global i8*, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c" context is\0A\09\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" >>> \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" <<< \00", align 1
@EOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eprint() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @compile_time, align 4
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @compile_time, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @eprint.been_here, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @eprint.been_here, align 4
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i8*, i8** @ep, align 8
  %15 = icmp eq i8* getelementptr inbounds ([0 x i8], [0 x i8]* @ebuf, i64 0, i64 0), %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %9, %6, %0
  br label %161

17:                                               ; preds = %13
  %18 = load i8*, i8** @ep, align 8
  %19 = icmp eq i8* getelementptr inbounds ([0 x i8], [0 x i8]* @ebuf, i64 0, i64 0), %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %161

21:                                               ; preds = %17
  %22 = load i8*, i8** @ep, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 -1
  store i8* %23, i8** %1, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = icmp ugt i8* %24, getelementptr inbounds ([0 x i8], [0 x i8]* @ebuf, i64 0, i64 0)
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %1, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i8*, i8** %1, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 -1
  store i8* %33, i8** %1, align 8
  br label %34

34:                                               ; preds = %31, %26, %21
  br label %35

35:                                               ; preds = %51, %34
  %36 = load i8*, i8** %1, align 8
  %37 = icmp ugt i8* %36, getelementptr inbounds ([0 x i8], [0 x i8]* @ebuf, i64 0, i64 0)
  br i1 %37, label %38, label %48

38:                                               ; preds = %35
  %39 = load i8*, i8** %1, align 8
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 10
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load i8*, i8** %1, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %43, %38, %35
  %49 = phi i1 [ false, %38 ], [ false, %35 ], [ %47, %43 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %1, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 -1
  store i8* %53, i8** %1, align 8
  br label %35

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i8*, i8** %1, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 10
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i8*, i8** %1, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %1, align 8
  br label %55

63:                                               ; preds = %55
  %64 = load i32, i32* @stderr, align 4
  %65 = call i32 @fprintf(i32 %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %66 = load i8*, i8** @ep, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 -1
  store i8* %67, i8** %2, align 8
  br label %68

68:                                               ; preds = %90, %63
  %69 = load i8*, i8** %2, align 8
  %70 = load i8*, i8** %1, align 8
  %71 = icmp uge i8* %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i8*, i8** %2, align 8
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 32
  br i1 %76, label %77, label %87

77:                                               ; preds = %72
  %78 = load i8*, i8** %2, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 9
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load i8*, i8** %2, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 10
  br label %87

87:                                               ; preds = %82, %77, %72, %68
  %88 = phi i1 [ false, %77 ], [ false, %72 ], [ false, %68 ], [ %86, %82 ]
  br i1 %88, label %89, label %93

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89
  %91 = load i8*, i8** %2, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %2, align 8
  br label %68

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %108, %93
  %95 = load i8*, i8** %1, align 8
  %96 = load i8*, i8** %2, align 8
  %97 = icmp ult i8* %95, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load i8*, i8** %1, align 8
  %100 = load i8, i8* %99, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8*, i8** %1, align 8
  %104 = load i8, i8* %103, align 1
  %105 = load i32, i32* @stderr, align 4
  %106 = call i32 @putc(i8 signext %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %98
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** %1, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %1, align 8
  br label %94

111:                                              ; preds = %94
  %112 = load i32, i32* @stderr, align 4
  %113 = call i32 @fprintf(i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %128, %111
  %115 = load i8*, i8** %1, align 8
  %116 = load i8*, i8** @ep, align 8
  %117 = icmp ult i8* %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load i8*, i8** %1, align 8
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load i8*, i8** %1, align 8
  %124 = load i8, i8* %123, align 1
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 @putc(i8 signext %124, i32 %125)
  br label %127

127:                                              ; preds = %122, %118
  br label %128

128:                                              ; preds = %127
  %129 = load i8*, i8** %1, align 8
  %130 = getelementptr inbounds i8, i8* %129, i32 1
  store i8* %130, i8** %1, align 8
  br label %114

131:                                              ; preds = %114
  %132 = load i32, i32* @stderr, align 4
  %133 = call i32 @fprintf(i32 %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i8*, i8** @ep, align 8
  %135 = load i8, i8* %134, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  br label %138

138:                                              ; preds = %150, %137
  %139 = call i32 (...) @input()
  store i32 %139, i32* %3, align 4
  %140 = icmp ne i32 %139, 10
  br i1 %140, label %141, label %148

141:                                              ; preds = %138
  %142 = load i32, i32* %3, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load i32, i32* %3, align 4
  %146 = load i32, i32* @EOF, align 4
  %147 = icmp ne i32 %145, %146
  br label %148

148:                                              ; preds = %144, %141, %138
  %149 = phi i1 [ false, %141 ], [ false, %138 ], [ %147, %144 ]
  br i1 %149, label %150, label %157

150:                                              ; preds = %148
  %151 = load i32, i32* %3, align 4
  %152 = trunc i32 %151 to i8
  %153 = load i32, i32* @stderr, align 4
  %154 = call i32 @putc(i8 signext %152, i32 %153)
  %155 = load i32, i32* %3, align 4
  %156 = call i32 @bclass(i32 %155)
  br label %138

157:                                              ; preds = %148
  br label %158

158:                                              ; preds = %157, %131
  %159 = load i32, i32* @stderr, align 4
  %160 = call i32 @putc(i8 signext 10, i32 %159)
  store i8* getelementptr inbounds ([0 x i8], [0 x i8]* @ebuf, i64 0, i64 0), i8** @ep, align 8
  br label %161

161:                                              ; preds = %158, %20, %16
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @input(...) #1

declare dso_local i32 @bclass(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
