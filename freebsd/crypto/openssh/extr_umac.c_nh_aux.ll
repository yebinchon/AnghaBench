; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_nh_aux.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_umac.c_nh_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*, i32)* @nh_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nh_aux(i8* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = sdiv i32 %34, 32
  store i32 %35, i32* %11, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %12, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = bitcast i8* %38 to i32*
  store i32* %39, i32** %13, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = bitcast i8* %40 to i32*
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %10, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %22, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %23, align 4
  %53 = load i32*, i32** %12, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %24, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %25, align 4
  br label %59

59:                                               ; preds = %204, %4
  %60 = load i32*, i32** %13, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i32 @LOAD_UINT32_LITTLE(i32* %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @LOAD_UINT32_LITTLE(i32* %64)
  store i32 %65, i32* %15, align 4
  %66 = load i32*, i32** %13, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i32 @LOAD_UINT32_LITTLE(i32* %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = call i32 @LOAD_UINT32_LITTLE(i32* %70)
  store i32 %71, i32* %17, align 4
  %72 = load i32*, i32** %13, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 4
  %74 = call i32 @LOAD_UINT32_LITTLE(i32* %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32*, i32** %13, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = call i32 @LOAD_UINT32_LITTLE(i32* %76)
  store i32 %77, i32* %19, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 6
  %80 = call i32 @LOAD_UINT32_LITTLE(i32* %79)
  store i32 %80, i32* %20, align 4
  %81 = load i32*, i32** %13, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 7
  %83 = call i32 @LOAD_UINT32_LITTLE(i32* %82)
  store i32 %83, i32* %21, align 4
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %26, align 4
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 5
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %27, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 6
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %28, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 7
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %29, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 8
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %30, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 9
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %31, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 10
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %32, align 4
  %105 = load i32*, i32** %12, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 11
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %33, align 4
  %108 = load i32, i32* %22, align 4
  %109 = load i32, i32* %14, align 4
  %110 = add nsw i32 %108, %109
  %111 = load i32, i32* %26, align 4
  %112 = load i32, i32* %18, align 4
  %113 = add nsw i32 %111, %112
  %114 = call i64 @MUL64(i32 %110, i32 %113)
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %114
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %26, align 4
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %30, align 4
  %123 = load i32, i32* %18, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i64 @MUL64(i32 %121, i32 %124)
  %126 = load i32, i32* %10, align 4
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %127, %125
  %129 = trunc i64 %128 to i32
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %23, align 4
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %27, align 4
  %134 = load i32, i32* %19, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i64 @MUL64(i32 %132, i32 %135)
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = add nsw i64 %138, %136
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %27, align 4
  %142 = load i32, i32* %15, align 4
  %143 = add nsw i32 %141, %142
  %144 = load i32, i32* %31, align 4
  %145 = load i32, i32* %19, align 4
  %146 = add nsw i32 %144, %145
  %147 = call i64 @MUL64(i32 %143, i32 %146)
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = add nsw i64 %149, %147
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* %16, align 4
  %154 = add nsw i32 %152, %153
  %155 = load i32, i32* %28, align 4
  %156 = load i32, i32* %20, align 4
  %157 = add nsw i32 %155, %156
  %158 = call i64 @MUL64(i32 %154, i32 %157)
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %158
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %9, align 4
  %163 = load i32, i32* %28, align 4
  %164 = load i32, i32* %16, align 4
  %165 = add nsw i32 %163, %164
  %166 = load i32, i32* %32, align 4
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %166, %167
  %169 = call i64 @MUL64(i32 %165, i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = sext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %174, %175
  %177 = load i32, i32* %29, align 4
  %178 = load i32, i32* %21, align 4
  %179 = add nsw i32 %177, %178
  %180 = call i64 @MUL64(i32 %176, i32 %179)
  %181 = load i32, i32* %9, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %9, align 4
  %185 = load i32, i32* %29, align 4
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %33, align 4
  %189 = load i32, i32* %21, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i64 @MUL64(i32 %187, i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = add nsw i64 %193, %191
  %195 = trunc i64 %194 to i32
  store i32 %195, i32* %10, align 4
  %196 = load i32, i32* %30, align 4
  store i32 %196, i32* %22, align 4
  %197 = load i32, i32* %31, align 4
  store i32 %197, i32* %23, align 4
  %198 = load i32, i32* %32, align 4
  store i32 %198, i32* %24, align 4
  %199 = load i32, i32* %33, align 4
  store i32 %199, i32* %25, align 4
  %200 = load i32*, i32** %13, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 8
  store i32* %201, i32** %13, align 8
  %202 = load i32*, i32** %12, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 8
  store i32* %203, i32** %12, align 8
  br label %204

204:                                              ; preds = %59
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %11, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %59, label %208

208:                                              ; preds = %204
  %209 = load i32, i32* %9, align 4
  %210 = load i8*, i8** %7, align 8
  %211 = bitcast i8* %210 to i32*
  %212 = getelementptr inbounds i32, i32* %211, i64 0
  store i32 %209, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load i8*, i8** %7, align 8
  %215 = bitcast i8* %214 to i32*
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %213, i32* %216, align 4
  ret void
}

declare dso_local i32 @LOAD_UINT32_LITTLE(i32*) #1

declare dso_local i64 @MUL64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
