; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_b64_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_parseutil.c_sldns_b64_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_b64_ntop(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8 61, i8* %11, align 1
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i64 @sldns_b64_ntop_calculate_size(i64 %15)
  %17 = icmp ult i64 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %215

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %31, %19
  %21 = load i64, i64* %12, align 8
  %22 = add i64 %21, 3
  %23 = load i64, i64* %7, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %105

25:                                               ; preds = %20
  %26 = load i64, i64* %13, align 8
  %27 = add i64 %26, 4
  %28 = load i64, i64* %9, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %215

31:                                               ; preds = %25
  %32 = load i8*, i8** %10, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i64, i64* %12, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8, i8* %32, i64 %38
  %40 = load i8, i8* %39, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  store i8 %40, i8* %43, align 1
  %44 = load i8*, i8** %10, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %12, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = shl i32 %49, 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* %12, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = ashr i32 %55, 4
  %57 = or i32 %50, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %44, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %8, align 8
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 %60, i8* %64, align 1
  %65 = load i8*, i8** %10, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 15
  %72 = shl i32 %71, 2
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %12, align 8
  %75 = add i64 %74, 2
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 6
  %79 = or i32 %72, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %65, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %13, align 8
  %85 = add i64 %84, 2
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  store i8 %82, i8* %86, align 1
  %87 = load i8*, i8** %10, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, 2
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, 63
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %87, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 3
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  store i8 %96, i8* %100, align 1
  %101 = load i64, i64* %12, align 8
  %102 = add i64 %101, 3
  store i64 %102, i64* %12, align 8
  %103 = load i64, i64* %13, align 8
  %104 = add i64 %103, 4
  store i64 %104, i64* %13, align 8
  br label %20

105:                                              ; preds = %20
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %12, align 8
  %108 = sub i64 %106, %107
  switch i64 %108, label %202 [
    i64 2, label %109
    i64 1, label %164
    i64 0, label %201
  ]

109:                                              ; preds = %105
  %110 = load i8*, i8** %10, align 8
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 2
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %110, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = load i8*, i8** %8, align 8
  %120 = load i64, i64* %13, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  store i8 %118, i8* %121, align 1
  %122 = load i8*, i8** %10, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* %12, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 3
  %128 = shl i32 %127, 4
  %129 = load i32*, i32** %6, align 8
  %130 = load i64, i64* %12, align 8
  %131 = add i64 %130, 1
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = ashr i32 %133, 4
  %135 = or i32 %128, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %122, i64 %136
  %138 = load i8, i8* %137, align 1
  %139 = load i8*, i8** %8, align 8
  %140 = load i64, i64* %13, align 8
  %141 = add i64 %140, 1
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  store i8 %138, i8* %142, align 1
  %143 = load i8*, i8** %10, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i64, i64* %12, align 8
  %146 = add i64 %145, 1
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, 15
  %150 = shl i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %143, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = load i8*, i8** %8, align 8
  %155 = load i64, i64* %13, align 8
  %156 = add i64 %155, 2
  %157 = getelementptr inbounds i8, i8* %154, i64 %156
  store i8 %153, i8* %157, align 1
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %13, align 8
  %160 = add i64 %159, 3
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  store i8 61, i8* %161, align 1
  %162 = load i64, i64* %13, align 8
  %163 = add i64 %162, 4
  store i64 %163, i64* %13, align 8
  br label %203

164:                                              ; preds = %105
  %165 = load i8*, i8** %10, align 8
  %166 = load i32*, i32** %6, align 8
  %167 = load i64, i64* %12, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = ashr i32 %169, 2
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %165, i64 %171
  %173 = load i8, i8* %172, align 1
  %174 = load i8*, i8** %8, align 8
  %175 = load i64, i64* %13, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8 %173, i8* %176, align 1
  %177 = load i8*, i8** %10, align 8
  %178 = load i32*, i32** %6, align 8
  %179 = load i64, i64* %12, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = and i32 %181, 3
  %183 = shl i32 %182, 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %177, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = load i8*, i8** %8, align 8
  %188 = load i64, i64* %13, align 8
  %189 = add i64 %188, 1
  %190 = getelementptr inbounds i8, i8* %187, i64 %189
  store i8 %186, i8* %190, align 1
  %191 = load i8*, i8** %8, align 8
  %192 = load i64, i64* %13, align 8
  %193 = add i64 %192, 2
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 61, i8* %194, align 1
  %195 = load i8*, i8** %8, align 8
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 3
  %198 = getelementptr inbounds i8, i8* %195, i64 %197
  store i8 61, i8* %198, align 1
  %199 = load i64, i64* %13, align 8
  %200 = add i64 %199, 4
  store i64 %200, i64* %13, align 8
  br label %203

201:                                              ; preds = %105
  br label %202

202:                                              ; preds = %105, %201
  br label %203

203:                                              ; preds = %202, %164, %109
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, 1
  %206 = load i64, i64* %9, align 8
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  store i32 -1, i32* %5, align 4
  br label %215

209:                                              ; preds = %203
  %210 = load i8*, i8** %8, align 8
  %211 = load i64, i64* %13, align 8
  %212 = getelementptr inbounds i8, i8* %210, i64 %211
  store i8 0, i8* %212, align 1
  %213 = load i64, i64* %13, align 8
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %209, %208, %30, %18
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i64 @sldns_b64_ntop_calculate_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
