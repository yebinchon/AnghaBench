; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_tr_partialcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/dictBuilder/extr_divsufsort.c_tr_partialcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*, i32)* @tr_partialcopy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tr_partialcopy(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 -1, i32* %22, align 4
  %23 = load i32*, i32** %12, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = ptrtoint i32* %23 to i64
  %26 = ptrtoint i32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 4
  %29 = sub nsw i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %19, align 4
  store i32 -1, i32* %21, align 4
  %31 = load i32*, i32** %10, align 8
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 -1
  store i32* %33, i32** %16, align 8
  br label %34

34:                                               ; preds = %82, %7
  %35 = load i32*, i32** %15, align 8
  %36 = load i32*, i32** %16, align 8
  %37 = icmp ule i32* %35, %36
  br i1 %37, label %38, label %85

38:                                               ; preds = %34
  %39 = load i32*, i32** %15, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %14, align 4
  %42 = sub nsw i32 %40, %41
  store i32 %42, i32* %18, align 4
  %43 = icmp sle i32 0, %42
  br i1 %43, label %44, label %81

44:                                               ; preds = %38
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %18, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %19, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %81

52:                                               ; preds = %44
  %53 = load i32, i32* %18, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %16, align 8
  store i32 %53, i32* %55, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %20, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %52
  %67 = load i32, i32* %20, align 4
  store i32 %67, i32* %21, align 4
  %68 = load i32*, i32** %16, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %22, align 4
  br label %75

75:                                               ; preds = %66, %52
  %76 = load i32, i32* %22, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %18, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %75, %44, %38
  br label %82

82:                                               ; preds = %81
  %83 = load i32*, i32** %15, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %15, align 8
  br label %34

85:                                               ; preds = %34
  store i32 -1, i32* %21, align 4
  %86 = load i32*, i32** %16, align 8
  store i32* %86, i32** %17, align 8
  br label %87

87:                                               ; preds = %122, %85
  %88 = load i32*, i32** %10, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = icmp ule i32* %88, %89
  br i1 %90, label %91, label %125

91:                                               ; preds = %87
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %20, align 4
  %98 = load i32, i32* %21, align 4
  %99 = load i32, i32* %20, align 4
  %100 = icmp ne i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %91
  %102 = load i32, i32* %20, align 4
  store i32 %102, i32* %21, align 4
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %22, align 4
  br label %110

110:                                              ; preds = %101, %91
  %111 = load i32, i32* %22, align 4
  %112 = load i32, i32* %20, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %110
  %115 = load i32, i32* %22, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %17, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 %115, i32* %120, align 4
  br label %121

121:                                              ; preds = %114, %110
  br label %122

122:                                              ; preds = %121
  %123 = load i32*, i32** %17, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 -1
  store i32* %124, i32** %17, align 8
  br label %87

125:                                              ; preds = %87
  store i32 -1, i32* %21, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 -1
  store i32* %127, i32** %15, align 8
  %128 = load i32*, i32** %16, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32* %129, i32** %17, align 8
  %130 = load i32*, i32** %12, align 8
  store i32* %130, i32** %16, align 8
  br label %131

131:                                              ; preds = %179, %125
  %132 = load i32*, i32** %17, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = icmp ult i32* %132, %133
  br i1 %134, label %135, label %182

135:                                              ; preds = %131
  %136 = load i32*, i32** %15, align 8
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  store i32 %139, i32* %18, align 4
  %140 = icmp sle i32 0, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %135
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %18, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %178

149:                                              ; preds = %141
  %150 = load i32, i32* %18, align 4
  %151 = load i32*, i32** %16, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 -1
  store i32* %152, i32** %16, align 8
  store i32 %150, i32* %152, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %20, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load i32, i32* %20, align 4
  %162 = icmp ne i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %149
  %164 = load i32, i32* %20, align 4
  store i32 %164, i32* %21, align 4
  %165 = load i32*, i32** %16, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = ptrtoint i32* %165 to i64
  %168 = ptrtoint i32* %166 to i64
  %169 = sub i64 %167, %168
  %170 = sdiv exact i64 %169, 4
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %22, align 4
  br label %172

172:                                              ; preds = %163, %149
  %173 = load i32, i32* %22, align 4
  %174 = load i32*, i32** %8, align 8
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  store i32 %173, i32* %177, align 4
  br label %178

178:                                              ; preds = %172, %141, %135
  br label %179

179:                                              ; preds = %178
  %180 = load i32*, i32** %15, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 -1
  store i32* %181, i32** %15, align 8
  br label %131

182:                                              ; preds = %131
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
