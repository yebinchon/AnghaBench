; ModuleID = '/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prtext.c'
source_filename = "/home/carl/AnghaBench/freebsd/gnu/usr.bin/grep/extr_grep.c_prtext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@prtext.used = internal global i32 0, align 4
@eolbyte = common dso_local global i8 0, align 1
@out_quiet = common dso_local global i64 0, align 8
@pending = common dso_local global i64 0, align 8
@lastout = common dso_local global i8* null, align 8
@bufbeg = common dso_local global i8* null, align 8
@out_before = common dso_local global i32 0, align 4
@out_after = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"--\00", align 1
@outleft = common dso_local global i32 0, align 4
@bufoffset = common dso_local global i32 0, align 4
@buflim = common dso_local global i8* null, align 8
@after_last_match = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32*)* @prtext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prtext(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load i8, i8* @eolbyte, align 1
  store i8 %14, i8* %9, align 1
  %15 = load i64, i64* @out_quiet, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* @pending, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @prpending(i8* %21)
  br label %23

23:                                               ; preds = %20, %17, %3
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %8, align 8
  %25 = load i64, i64* @out_quiet, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %98, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** @lastout, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8*, i8** @lastout, align 8
  br label %34

32:                                               ; preds = %27
  %33 = load i8*, i8** @bufbeg, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i8* [ %31, %30 ], [ %33, %32 ]
  store i8* %35, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %58, %34
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @out_before, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = load i8*, i8** %8, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = icmp ugt i8* %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %48, %44
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 -1
  store i8* %47, i8** %8, align 8
  br label %48

48:                                               ; preds = %45
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 -1
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %9, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp ne i32 %52, %54
  br i1 %55, label %45, label %56

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %56, %40
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* @out_before, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* @out_after, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64, %61
  %68 = load i32, i32* @prtext.used, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** @lastout, align 8
  %73 = icmp ne i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = call i32 @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %70, %67, %64
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %4, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  %83 = load i8, i8* %9, align 1
  %84 = load i8*, i8** %4, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i8* @memchr(i8* %82, i8 signext %83, i32 %89)
  store i8* %90, i8** %12, align 8
  %91 = load i8*, i8** %12, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %12, align 8
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @prline(i8* %93, i8* %94, i8 signext 45)
  %96 = load i8*, i8** %12, align 8
  store i8* %96, i8** %8, align 8
  br label %77

97:                                               ; preds = %77
  br label %98

98:                                               ; preds = %97, %23
  %99 = load i32*, i32** %6, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %147

101:                                              ; preds = %98
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %132, %101
  %103 = load i8*, i8** %8, align 8
  %104 = load i8*, i8** %5, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %102
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* @outleft, align 4
  %109 = icmp slt i32 %107, %108
  br label %110

110:                                              ; preds = %106, %102
  %111 = phi i1 [ false, %102 ], [ %109, %106 ]
  br i1 %111, label %112, label %135

112:                                              ; preds = %110
  %113 = load i8*, i8** %8, align 8
  %114 = load i8, i8* %9, align 1
  %115 = load i8*, i8** %5, align 8
  %116 = load i8*, i8** %8, align 8
  %117 = ptrtoint i8* %115 to i64
  %118 = ptrtoint i8* %116 to i64
  %119 = sub i64 %117, %118
  %120 = trunc i64 %119 to i32
  %121 = call i8* @memchr(i8* %113, i8 signext %114, i32 %120)
  store i8* %121, i8** %13, align 8
  %122 = load i8*, i8** %13, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %13, align 8
  %124 = load i64, i64* @out_quiet, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %112
  %127 = load i8*, i8** %8, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = call i32 @prline(i8* %127, i8* %128, i8 signext 58)
  br label %130

130:                                              ; preds = %126, %112
  %131 = load i8*, i8** %13, align 8
  store i8* %131, i8** %8, align 8
  br label %132

132:                                              ; preds = %130
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %102

135:                                              ; preds = %110
  %136 = load i32, i32* %11, align 4
  %137 = load i32*, i32** %6, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @bufoffset, align 4
  %139 = sext i32 %138 to i64
  %140 = load i8*, i8** @buflim, align 8
  %141 = load i8*, i8** %8, align 8
  %142 = ptrtoint i8* %140 to i64
  %143 = ptrtoint i8* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sub nsw i64 %139, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* @after_last_match, align 4
  br label %155

147:                                              ; preds = %98
  %148 = load i64, i64* @out_quiet, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load i8*, i8** %4, align 8
  %152 = load i8*, i8** %5, align 8
  %153 = call i32 @prline(i8* %151, i8* %152, i8 signext 58)
  br label %154

154:                                              ; preds = %150, %147
  br label %155

155:                                              ; preds = %154, %135
  %156 = load i64, i64* @out_quiet, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  br label %161

159:                                              ; preds = %155
  %160 = load i64, i64* @out_after, align 8
  br label %161

161:                                              ; preds = %159, %158
  %162 = phi i64 [ 0, %158 ], [ %160, %159 ]
  store i64 %162, i64* @pending, align 8
  store i32 1, i32* @prtext.used, align 4
  ret void
}

declare dso_local i32 @prpending(i8*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @prline(i8*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
