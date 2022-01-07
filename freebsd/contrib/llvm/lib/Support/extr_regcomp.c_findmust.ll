; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_findmust.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/llvm/lib/Support/extr_regcomp.c_findmust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse = type { i64 }
%struct.re_guts = type { i64, i8*, i32, i32* }

@O_QUEST = common dso_local global i32 0, align 4
@O_CH = common dso_local global i32 0, align 4
@OOR2 = common dso_local global i32 0, align 4
@REGEX_BAD = common dso_local global i32 0, align 4
@OEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parse*, %struct.re_guts*)* @findmust to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @findmust(%struct.parse* %0, %struct.re_guts* %1) #0 {
  %3 = alloca %struct.parse*, align 8
  %4 = alloca %struct.re_guts*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.parse* %0, %struct.parse** %3, align 8
  store %struct.re_guts* %1, %struct.re_guts** %4, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  %12 = load %struct.parse*, %struct.parse** %3, align 8
  %13 = getelementptr inbounds %struct.parse, %struct.parse* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %174

17:                                               ; preds = %2
  store i64 0, i64* %8, align 8
  %18 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %19 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32* %21, i32** %5, align 8
  br label %22

22:                                               ; preds = %95, %17
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %5, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @OP(i32 %26)
  switch i32 %27, label %82 [
    i32 133, label %28
    i32 130, label %37
    i32 131, label %37
    i32 128, label %37
    i32 129, label %38
    i32 132, label %38
  ]

28:                                               ; preds = %22
  %29 = load i64, i64* %8, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %7, align 8
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %8, align 8
  br label %94

37:                                               ; preds = %22, %22, %22
  br label %94

38:                                               ; preds = %22, %22
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 -1
  store i32* %40, i32** %5, align 8
  br label %41

41:                                               ; preds = %79, %38
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @OPND(i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 %43
  store i32* %45, i32** %5, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @OP(i32 %48)
  %50 = load i32, i32* @O_QUEST, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %41
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @OP(i32 %53)
  %55 = load i32, i32* @O_CH, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @OP(i32 %58)
  %60 = load i32, i32* @OOR2, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load i32, i32* @REGEX_BAD, align 4
  %64 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %65 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %174

68:                                               ; preds = %57, %52, %41
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @OP(i32 %70)
  %72 = load i32, i32* @O_QUEST, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @OP(i32 %75)
  %77 = load i32, i32* @O_CH, align 4
  %78 = icmp ne i32 %76, %77
  br label %79

79:                                               ; preds = %74, %69
  %80 = phi i1 [ false, %69 ], [ %78, %74 ]
  br i1 %80, label %41, label %81

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %22, %81
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %85 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82
  %89 = load i32*, i32** %7, align 8
  store i32* %89, i32** %6, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %92 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %82
  store i64 0, i64* %8, align 8
  br label %94

94:                                               ; preds = %93, %37, %34
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @OP(i32 %96)
  %98 = load i32, i32* @OEND, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %22, label %100

100:                                              ; preds = %95
  %101 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %102 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %174

106:                                              ; preds = %100
  %107 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %108 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, 1
  %111 = call i8* @malloc(i64 %110)
  %112 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %113 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %115 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = icmp eq i8* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %106
  %119 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %120 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %174

121:                                              ; preds = %106
  %122 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %123 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %122, i32 0, i32 1
  %124 = load i8*, i8** %123, align 8
  store i8* %124, i8** %10, align 8
  %125 = load i32*, i32** %6, align 8
  store i32* %125, i32** %5, align 8
  %126 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %127 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %11, align 8
  br label %129

129:                                              ; preds = %157, %121
  %130 = load i64, i64* %11, align 8
  %131 = icmp sgt i64 %130, 0
  br i1 %131, label %132, label %160

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %139, %132
  %134 = load i32*, i32** %5, align 8
  %135 = getelementptr inbounds i32, i32* %134, i32 1
  store i32* %135, i32** %5, align 8
  %136 = load i32, i32* %134, align 4
  store i32 %136, i32* %9, align 4
  %137 = call i32 @OP(i32 %136)
  %138 = icmp ne i32 %137, 133
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %133

140:                                              ; preds = %133
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %143 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %146 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = icmp ult i8* %141, %148
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %9, align 4
  %153 = call i64 @OPND(i32 %152)
  %154 = trunc i64 %153 to i8
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %10, align 8
  store i8 %154, i8* %155, align 1
  br label %157

157:                                              ; preds = %140
  %158 = load i64, i64* %11, align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %11, align 8
  br label %129

160:                                              ; preds = %129
  %161 = load i8*, i8** %10, align 8
  %162 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %163 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.re_guts*, %struct.re_guts** %4, align 8
  %166 = getelementptr inbounds %struct.re_guts, %struct.re_guts* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds i8, i8* %164, i64 %167
  %169 = icmp eq i8* %161, %168
  %170 = zext i1 %169 to i32
  %171 = call i32 @assert(i32 %170)
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %10, align 8
  store i8 0, i8* %172, align 1
  br label %174

174:                                              ; preds = %160, %118, %105, %62, %16
  ret void
}

declare dso_local i32 @OP(i32) #1

declare dso_local i64 @OPND(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
