; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_CompleteLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_ed.inputl.c_CompleteLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LastChar = common dso_local global i8* null, align 8
@Cursor = common dso_local global i8* null, align 8
@InputBuf = common dso_local global i8* null, align 8
@RECOGNIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CompleteLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CompleteLine() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = load i8*, i8** @LastChar, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i8*, i8** @Cursor, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** @InputBuf, align 8
  store i8* %9, i8** %4, align 8
  store i32 1, i32* %2, align 4
  br label %10

10:                                               ; preds = %129, %0
  br label %11

11:                                               ; preds = %23, %10
  %12 = load i8*, i8** %4, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @ismetahash(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = call i64 @iscmdmeta(i8 signext %18)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %16, %11
  %22 = phi i1 [ true, %11 ], [ %20, %16 ]
  br i1 %22, label %23, label %26

23:                                               ; preds = %21
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %4, align 8
  br label %11

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  store i8* %27, i8** @Cursor, align 8
  br label %28

28:                                               ; preds = %61, %26
  %29 = load i8*, i8** @Cursor, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i8*, i8** @Cursor, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = icmp ne i8* %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i8*, i8** @Cursor, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 92
  br i1 %42, label %56, label %43

43:                                               ; preds = %37, %33
  %44 = load i8*, i8** @Cursor, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @ismetahash(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load i8*, i8** @Cursor, align 8
  %50 = load i8, i8* %49, align 1
  %51 = call i64 @iscmdmeta(i8 signext %50)
  %52 = icmp ne i64 %51, 0
  %53 = xor i1 %52, true
  br label %54

54:                                               ; preds = %48, %43
  %55 = phi i1 [ false, %43 ], [ %53, %48 ]
  br label %56

56:                                               ; preds = %54, %37
  %57 = phi i1 [ true, %37 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %28
  %59 = phi i1 [ false, %28 ], [ %57, %56 ]
  br i1 %59, label %60, label %64

60:                                               ; preds = %58
  br label %61

61:                                               ; preds = %60
  %62 = load i8*, i8** @Cursor, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** @Cursor, align 8
  br label %28

64:                                               ; preds = %58
  %65 = load i8*, i8** @Cursor, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i8*, i8** @LastChar, align 8
  store i8* %70, i8** @Cursor, align 8
  %71 = load i8*, i8** @LastChar, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 -1
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 10
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i8*, i8** @Cursor, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 -1
  store i8* %78, i8** @Cursor, align 8
  br label %79

79:                                               ; preds = %76, %69
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %64
  %81 = load i8*, i8** %4, align 8
  %82 = load i8, i8* %81, align 1
  %83 = call i32 @MISMATCH(i8 signext %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %127, label %85

85:                                               ; preds = %80
  %86 = load i8*, i8** %4, align 8
  %87 = load i8*, i8** @InputBuf, align 8
  %88 = call i64 @starting_a_command(i8* %86, i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %127

90:                                               ; preds = %85
  %91 = load i8*, i8** @InputBuf, align 8
  %92 = load i8*, i8** @Cursor, align 8
  %93 = load i8*, i8** @InputBuf, align 8
  %94 = ptrtoint i8* %92 to i64
  %95 = ptrtoint i8* %93 to i64
  %96 = sub i64 %94, %95
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @RECOGNIZE, align 4
  %99 = call i32 @tenematch(i8* %91, i32 %97, i32 %98)
  store i32 %99, i32* %3, align 4
  %100 = load i32, i32* %3, align 4
  %101 = icmp sle i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %90
  store i32 0, i32* %1, align 4
  br label %134

103:                                              ; preds = %90
  %104 = load i32, i32* %3, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 2, i32* %1, align 4
  br label %134

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107
  %109 = load i8*, i8** @LastChar, align 8
  %110 = load i8*, i8** %6, align 8
  %111 = icmp ne i8* %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i8*, i8** %4, align 8
  %114 = load i8*, i8** %5, align 8
  %115 = icmp ult i8* %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load i8*, i8** @LastChar, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = ptrtoint i8* %117 to i64
  %120 = ptrtoint i8* %118 to i64
  %121 = sub i64 %119, %120
  %122 = load i8*, i8** %5, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 %121
  store i8* %123, i8** %5, align 8
  br label %124

124:                                              ; preds = %116, %112
  %125 = load i8*, i8** @LastChar, align 8
  store i8* %125, i8** %6, align 8
  br label %126

126:                                              ; preds = %124, %108
  br label %127

127:                                              ; preds = %126, %85, %80
  %128 = load i8*, i8** @Cursor, align 8
  store i8* %128, i8** %4, align 8
  br label %129

129:                                              ; preds = %127
  %130 = load i32, i32* %2, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %10, label %132

132:                                              ; preds = %129
  %133 = load i8*, i8** %5, align 8
  store i8* %133, i8** @Cursor, align 8
  store i32 1, i32* %1, align 4
  br label %134

134:                                              ; preds = %132, %106, %102
  %135 = load i32, i32* %1, align 4
  ret i32 %135
}

declare dso_local i64 @ismetahash(i8 signext) #1

declare dso_local i64 @iscmdmeta(i8 signext) #1

declare dso_local i32 @MISMATCH(i8 signext) #1

declare dso_local i64 @starting_a_command(i8*, i8*) #1

declare dso_local i32 @tenematch(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
