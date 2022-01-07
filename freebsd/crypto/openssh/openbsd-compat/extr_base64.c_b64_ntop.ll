; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_base64.c_b64_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_base64.c_b64_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Base64 = common dso_local global i8* null, align 8
@Pad64 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b64_ntop(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %63, %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 2, %15
  br i1 %16, label %17, label %104

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 3
  store i64 %31, i64* %7, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 2
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = add nsw i32 %39, %42
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = shl i32 %47, 2
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 6
  %52 = add nsw i32 %48, %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %56, i32* %57, align 4
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, 4
  %60 = load i64, i64* %9, align 8
  %61 = icmp ugt i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %209

63:                                               ; preds = %17
  %64 = load i8*, i8** @Base64, align 8
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %66 = load i32, i32* %65, align 16
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %64, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  %73 = getelementptr inbounds i8, i8* %70, i64 %71
  store i8 %69, i8* %73, align 1
  %74 = load i8*, i8** @Base64, align 8
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %74, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  %83 = getelementptr inbounds i8, i8* %80, i64 %81
  store i8 %79, i8* %83, align 1
  %84 = load i8*, i8** @Base64, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %93, align 1
  %94 = load i8*, i8** @Base64, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %10, align 8
  %103 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 %99, i8* %103, align 1
  br label %14

104:                                              ; preds = %14
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 0, %105
  br i1 %106, label %107, label %198

107:                                              ; preds = %104
  %108 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %108, align 4
  %109 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %109, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %110, align 4
  store i64 0, i64* %13, align 8
  br label %111

111:                                              ; preds = %121, %107
  %112 = load i64, i64* %13, align 8
  %113 = load i64, i64* %7, align 8
  %114 = icmp ult i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load i32*, i32** %6, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %6, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %119
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %115
  %122 = load i64, i64* %13, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %111

124:                                              ; preds = %111
  %125 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 2
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %127, i32* %128, align 16
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 3
  %132 = shl i32 %131, 4
  %133 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = ashr i32 %134, 4
  %136 = add nsw i32 %132, %135
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %136, i32* %137, align 4
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = and i32 %139, 15
  %141 = shl i32 %140, 2
  %142 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %143 = load i32, i32* %142, align 4
  %144 = ashr i32 %143, 6
  %145 = add nsw i32 %141, %144
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %145, i32* %146, align 8
  %147 = load i64, i64* %10, align 8
  %148 = add i64 %147, 4
  %149 = load i64, i64* %9, align 8
  %150 = icmp ugt i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %124
  store i32 -1, i32* %5, align 4
  br label %209

152:                                              ; preds = %124
  %153 = load i8*, i8** @Base64, align 8
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %155 = load i32, i32* %154, align 16
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = load i8*, i8** %8, align 8
  %160 = load i64, i64* %10, align 8
  %161 = add i64 %160, 1
  store i64 %161, i64* %10, align 8
  %162 = getelementptr inbounds i8, i8* %159, i64 %160
  store i8 %158, i8* %162, align 1
  %163 = load i8*, i8** @Base64, align 8
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = load i8*, i8** %8, align 8
  %170 = load i64, i64* %10, align 8
  %171 = add i64 %170, 1
  store i64 %171, i64* %10, align 8
  %172 = getelementptr inbounds i8, i8* %169, i64 %170
  store i8 %168, i8* %172, align 1
  %173 = load i64, i64* %7, align 8
  %174 = icmp eq i64 %173, 1
  br i1 %174, label %175, label %181

175:                                              ; preds = %152
  %176 = load i8, i8* @Pad64, align 1
  %177 = load i8*, i8** %8, align 8
  %178 = load i64, i64* %10, align 8
  %179 = add i64 %178, 1
  store i64 %179, i64* %10, align 8
  %180 = getelementptr inbounds i8, i8* %177, i64 %178
  store i8 %176, i8* %180, align 1
  br label %192

181:                                              ; preds = %152
  %182 = load i8*, i8** @Base64, align 8
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %182, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = load i8*, i8** %8, align 8
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, 1
  store i64 %190, i64* %10, align 8
  %191 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8 %187, i8* %191, align 1
  br label %192

192:                                              ; preds = %181, %175
  %193 = load i8, i8* @Pad64, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %10, align 8
  %197 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8 %193, i8* %197, align 1
  br label %198

198:                                              ; preds = %192, %104
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* %9, align 8
  %201 = icmp uge i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %198
  store i32 -1, i32* %5, align 4
  br label %209

203:                                              ; preds = %198
  %204 = load i8*, i8** %8, align 8
  %205 = load i64, i64* %10, align 8
  %206 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 0, i8* %206, align 1
  %207 = load i64, i64* %10, align 8
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %203, %202, %151, %62
  %210 = load i32, i32* %5, align 4
  ret i32 %210
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
