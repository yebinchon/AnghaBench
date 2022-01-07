; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_resolve_backslashes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sqlite3/extr_shell.c_resolve_backslashes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @resolve_backslashes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_backslashes(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i8*, i8** %2, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load i8*, i8** %2, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 92
  br label %16

16:                                               ; preds = %11, %6
  %17 = phi i1 [ false, %6 ], [ %15, %11 ]
  br i1 %17, label %18, label %21

18:                                               ; preds = %16
  %19 = load i8*, i8** %2, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %2, align 8
  br label %6

21:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %195, %21
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %5, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %200

30:                                               ; preds = %22
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 92
  br i1 %33, label %34, label %189

34:                                               ; preds = %30
  %35 = load i8*, i8** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %35, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %189

43:                                               ; preds = %34
  %44 = load i8*, i8** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  %49 = load i8, i8* %48, align 1
  store i8 %49, i8* %5, align 1
  %50 = load i8, i8* %5, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 97
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  store i8 7, i8* %5, align 1
  br label %188

54:                                               ; preds = %43
  %55 = load i8, i8* %5, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 98
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i8 8, i8* %5, align 1
  br label %187

59:                                               ; preds = %54
  %60 = load i8, i8* %5, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 116
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i8 9, i8* %5, align 1
  br label %186

64:                                               ; preds = %59
  %65 = load i8, i8* %5, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 110
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  store i8 10, i8* %5, align 1
  br label %185

69:                                               ; preds = %64
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 118
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store i8 11, i8* %5, align 1
  br label %184

74:                                               ; preds = %69
  %75 = load i8, i8* %5, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 102
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i8 12, i8* %5, align 1
  br label %183

79:                                               ; preds = %74
  %80 = load i8, i8* %5, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 114
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i8 13, i8* %5, align 1
  br label %182

84:                                               ; preds = %79
  %85 = load i8, i8* %5, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 34
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  store i8 34, i8* %5, align 1
  br label %181

89:                                               ; preds = %84
  %90 = load i8, i8* %5, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 39
  br i1 %92, label %93, label %94

93:                                               ; preds = %89
  store i8 39, i8* %5, align 1
  br label %180

94:                                               ; preds = %89
  %95 = load i8, i8* %5, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 92
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i8 92, i8* %5, align 1
  br label %179

99:                                               ; preds = %94
  %100 = load i8, i8* %5, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp sge i32 %101, 48
  br i1 %102, label %103, label %178

103:                                              ; preds = %99
  %104 = load i8, i8* %5, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 55
  br i1 %106, label %107, label %178

107:                                              ; preds = %103
  %108 = load i8, i8* %5, align 1
  %109 = sext i8 %108 to i32
  %110 = sub nsw i32 %109, 48
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %5, align 1
  %112 = load i8*, i8** %2, align 8
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %112, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp sge i32 %118, 48
  br i1 %119, label %120, label %177

120:                                              ; preds = %107
  %121 = load i8*, i8** %2, align 8
  %122 = load i32, i32* %3, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp sle i32 %127, 55
  br i1 %128, label %129, label %177

129:                                              ; preds = %120
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  %132 = load i8, i8* %5, align 1
  %133 = sext i8 %132 to i32
  %134 = shl i32 %133, 3
  %135 = load i8*, i8** %2, align 8
  %136 = load i32, i32* %3, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = add nsw i32 %134, %140
  %142 = sub nsw i32 %141, 48
  %143 = trunc i32 %142 to i8
  store i8 %143, i8* %5, align 1
  %144 = load i8*, i8** %2, align 8
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp sge i32 %150, 48
  br i1 %151, label %152, label %176

152:                                              ; preds = %129
  %153 = load i8*, i8** %2, align 8
  %154 = load i32, i32* %3, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp sle i32 %159, 55
  br i1 %160, label %161, label %176

161:                                              ; preds = %152
  %162 = load i32, i32* %3, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %3, align 4
  %164 = load i8, i8* %5, align 1
  %165 = sext i8 %164 to i32
  %166 = shl i32 %165, 3
  %167 = load i8*, i8** %2, align 8
  %168 = load i32, i32* %3, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = add nsw i32 %166, %172
  %174 = sub nsw i32 %173, 48
  %175 = trunc i32 %174 to i8
  store i8 %175, i8* %5, align 1
  br label %176

176:                                              ; preds = %161, %152, %129
  br label %177

177:                                              ; preds = %176, %120, %107
  br label %178

178:                                              ; preds = %177, %103, %99
  br label %179

179:                                              ; preds = %178, %98
  br label %180

180:                                              ; preds = %179, %93
  br label %181

181:                                              ; preds = %180, %88
  br label %182

182:                                              ; preds = %181, %83
  br label %183

183:                                              ; preds = %182, %78
  br label %184

184:                                              ; preds = %183, %73
  br label %185

185:                                              ; preds = %184, %68
  br label %186

186:                                              ; preds = %185, %63
  br label %187

187:                                              ; preds = %186, %58
  br label %188

188:                                              ; preds = %187, %53
  br label %189

189:                                              ; preds = %188, %34, %30
  %190 = load i8, i8* %5, align 1
  %191 = load i8*, i8** %2, align 8
  %192 = load i32, i32* %4, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 %190, i8* %194, align 1
  br label %195

195:                                              ; preds = %189
  %196 = load i32, i32* %3, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %3, align 4
  %198 = load i32, i32* %4, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %4, align 4
  br label %22

200:                                              ; preds = %22
  %201 = load i32, i32* %4, align 4
  %202 = load i32, i32* %3, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  %205 = load i8*, i8** %2, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  store i8 0, i8* %208, align 1
  br label %209

209:                                              ; preds = %204, %200
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
