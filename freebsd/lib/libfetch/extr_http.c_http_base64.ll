; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_base64.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_http.c_http_base64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@http_base64.base64 = internal constant [65 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/\00", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @http_base64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @http_base64(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @strlen(i8* %9)
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = add i64 %11, 2
  %13 = udiv i64 %12, 3
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 1
  %16 = call i8* @malloc(i64 %15)
  store i8* %16, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %159

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %5, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %24, %19
  %22 = load i64, i64* %6, align 8
  %23 = icmp uge i64 %22, 3
  br i1 %23, label %24, label %81

24:                                               ; preds = %21
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = shl i32 %28, 16
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = or i32 %29, %34
  %36 = load i8*, i8** %3, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = or i32 %35, %39
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 18
  %43 = and i32 %42, 63
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  store i8 %46, i8* %48, align 1
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 12
  %51 = and i32 %50, 63
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %7, align 4
  %58 = ashr i32 %57, 6
  %59 = and i32 %58, 63
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = load i8*, i8** %5, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 0
  %67 = and i32 %66, 63
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = load i8*, i8** %5, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 3
  store i8 %70, i8* %72, align 1
  %73 = load i8*, i8** %3, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 3
  store i8* %74, i8** %3, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub i64 %75, 3
  store i64 %76, i64* %6, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 4
  store i8* %78, i8** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, 4
  store i32 %80, i32* %8, align 4
  br label %21

81:                                               ; preds = %21
  %82 = load i64, i64* %6, align 8
  switch i64 %82, label %156 [
    i64 2, label %83
    i64 1, label %125
    i64 0, label %155
  ]

83:                                               ; preds = %81
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = shl i32 %87, 16
  %89 = load i8*, i8** %3, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 1
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = shl i32 %92, 8
  %94 = or i32 %88, %93
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = ashr i32 %95, 18
  %97 = and i32 %96, 63
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 0
  store i8 %100, i8* %102, align 1
  %103 = load i32, i32* %7, align 4
  %104 = ashr i32 %103, 12
  %105 = and i32 %104, 63
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 1
  store i8 %108, i8* %110, align 1
  %111 = load i32, i32* %7, align 4
  %112 = ashr i32 %111, 6
  %113 = and i32 %112, 63
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = load i8*, i8** %5, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 2
  store i8 %116, i8* %118, align 1
  %119 = load i8*, i8** %5, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 61, i8* %120, align 1
  %121 = load i8*, i8** %5, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 4
  store i8* %122, i8** %5, align 8
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %123, 4
  store i32 %124, i32* %8, align 4
  br label %156

125:                                              ; preds = %81
  %126 = load i8*, i8** %3, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 0
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = shl i32 %129, 16
  store i32 %130, i32* %7, align 4
  %131 = load i32, i32* %7, align 4
  %132 = ashr i32 %131, 18
  %133 = and i32 %132, 63
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %136, i8* %138, align 1
  %139 = load i32, i32* %7, align 4
  %140 = ashr i32 %139, 12
  %141 = and i32 %140, 63
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [65 x i8], [65 x i8]* @http_base64.base64, i64 0, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = load i8*, i8** %5, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8 %144, i8* %146, align 1
  %147 = load i8*, i8** %5, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 3
  store i8 61, i8* %148, align 1
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 2
  store i8 61, i8* %150, align 1
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 4
  store i8* %152, i8** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = add nsw i32 %153, 4
  store i32 %154, i32* %8, align 4
  br label %156

155:                                              ; preds = %81
  br label %156

156:                                              ; preds = %81, %155, %125, %83
  %157 = load i8*, i8** %5, align 8
  store i8 0, i8* %157, align 1
  %158 = load i8*, i8** %4, align 8
  store i8* %158, i8** %2, align 8
  br label %159

159:                                              ; preds = %156, %18
  %160 = load i8*, i8** %2, align 8
  ret i8* %160
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
