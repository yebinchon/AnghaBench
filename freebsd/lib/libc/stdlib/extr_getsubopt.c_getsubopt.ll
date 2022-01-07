; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getsubopt.c_getsubopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdlib/extr_getsubopt.c_getsubopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@suboptarg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getsubopt(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8** %0, i8*** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i8**, i8*** %7, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** @suboptarg, align 8
  %11 = load i8**, i8*** %5, align 8
  %12 = icmp ne i8** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8**, i8*** %5, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %13, %3
  store i32 -1, i32* %4, align 4
  br label %190

18:                                               ; preds = %13
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %46, %18
  %22 = load i8*, i8** %9, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load i8*, i8** %9, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 44
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 9
  br label %41

41:                                               ; preds = %36, %31, %26
  %42 = phi i1 [ true, %31 ], [ true, %26 ], [ %40, %36 ]
  br label %43

43:                                               ; preds = %41, %21
  %44 = phi i1 [ false, %21 ], [ %42, %41 ]
  br i1 %44, label %45, label %49

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %9, align 8
  br label %21

49:                                               ; preds = %43
  %50 = load i8*, i8** %9, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i8**, i8*** %5, align 8
  store i8* %54, i8** %55, align 8
  store i32 -1, i32* %4, align 4
  br label %190

56:                                               ; preds = %49
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** @suboptarg, align 8
  br label %58

58:                                               ; preds = %86, %56
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %9, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load i8*, i8** %9, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 44
  br i1 %68, label %69, label %84

69:                                               ; preds = %64
  %70 = load i8*, i8** %9, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 61
  br i1 %73, label %74, label %84

74:                                               ; preds = %69
  %75 = load i8*, i8** %9, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 32
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i8*, i8** %9, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 9
  br label %84

84:                                               ; preds = %79, %74, %69, %64, %58
  %85 = phi i1 [ false, %74 ], [ false, %69 ], [ false, %64 ], [ false, %58 ], [ %83, %79 ]
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  br label %58

87:                                               ; preds = %84
  %88 = load i8*, i8** %9, align 8
  %89 = load i8, i8* %88, align 1
  %90 = icmp ne i8 %89, 0
  br i1 %90, label %91, label %168

91:                                               ; preds = %87
  %92 = load i8*, i8** %9, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 61
  br i1 %95, label %96, label %135

96:                                               ; preds = %91
  %97 = load i8*, i8** %9, align 8
  store i8 0, i8* %97, align 1
  %98 = load i8*, i8** %9, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %9, align 8
  %100 = load i8**, i8*** %7, align 8
  store i8* %99, i8** %100, align 8
  br label %101

101:                                              ; preds = %124, %96
  %102 = load i8*, i8** %9, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %101
  %107 = load i8*, i8** %9, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp ne i32 %109, 44
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load i8*, i8** %9, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 32
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load i8*, i8** %9, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 9
  br label %121

121:                                              ; preds = %116, %111, %106, %101
  %122 = phi i1 [ false, %111 ], [ false, %106 ], [ false, %101 ], [ %120, %116 ]
  br i1 %122, label %123, label %127

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %9, align 8
  br label %101

127:                                              ; preds = %121
  %128 = load i8*, i8** %9, align 8
  %129 = load i8, i8* %128, align 1
  %130 = icmp ne i8 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i8*, i8** %9, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %9, align 8
  store i8 0, i8* %132, align 1
  br label %134

134:                                              ; preds = %131, %127
  br label %138

135:                                              ; preds = %91
  %136 = load i8*, i8** %9, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %9, align 8
  store i8 0, i8* %136, align 1
  br label %138

138:                                              ; preds = %135, %134
  br label %139

139:                                              ; preds = %164, %138
  %140 = load i8*, i8** %9, align 8
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %139
  %145 = load i8*, i8** %9, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 44
  br i1 %148, label %159, label %149

149:                                              ; preds = %144
  %150 = load i8*, i8** %9, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 32
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load i8*, i8** %9, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp eq i32 %157, 9
  br label %159

159:                                              ; preds = %154, %149, %144
  %160 = phi i1 [ true, %149 ], [ true, %144 ], [ %158, %154 ]
  br label %161

161:                                              ; preds = %159, %139
  %162 = phi i1 [ false, %139 ], [ %160, %159 ]
  br i1 %162, label %163, label %167

163:                                              ; preds = %161
  br label %164

164:                                              ; preds = %163
  %165 = load i8*, i8** %9, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %9, align 8
  br label %139

167:                                              ; preds = %161
  br label %168

168:                                              ; preds = %167, %87
  %169 = load i8*, i8** %9, align 8
  %170 = load i8**, i8*** %5, align 8
  store i8* %169, i8** %170, align 8
  store i32 0, i32* %8, align 4
  br label %171

171:                                              ; preds = %184, %168
  %172 = load i8**, i8*** %6, align 8
  %173 = load i8*, i8** %172, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %189

175:                                              ; preds = %171
  %176 = load i8*, i8** @suboptarg, align 8
  %177 = load i8**, i8*** %6, align 8
  %178 = load i8*, i8** %177, align 8
  %179 = call i32 @strcmp(i8* %176, i8* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %183, label %181

181:                                              ; preds = %175
  %182 = load i32, i32* %8, align 4
  store i32 %182, i32* %4, align 4
  br label %190

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183
  %185 = load i8**, i8*** %6, align 8
  %186 = getelementptr inbounds i8*, i8** %185, i32 1
  store i8** %186, i8*** %6, align 8
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %8, align 4
  br label %171

189:                                              ; preds = %171
  store i32 -1, i32* %4, align 4
  br label %190

190:                                              ; preds = %189, %181, %53, %17
  %191 = load i32, i32* %4, align 4
  ret i32 %191
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
