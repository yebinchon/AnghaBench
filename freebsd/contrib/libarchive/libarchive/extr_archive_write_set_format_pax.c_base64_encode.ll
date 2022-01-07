; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_base64_encode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_base64_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_encode.digits = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @base64_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base64_encode(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 2
  %12 = udiv i64 %11, 3
  %13 = add i64 %12, 1
  %14 = call i64 @malloc(i64 %13)
  %15 = inttoptr i64 %14 to i8*
  store i8* %15, i8** %8, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %146

19:                                               ; preds = %2
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %7, align 8
  br label %21

21:                                               ; preds = %24, %19
  %22 = load i64, i64* %5, align 8
  %23 = icmp uge i64 %22, 3
  br i1 %23, label %24, label %79

24:                                               ; preds = %21
  %25 = load i8*, i8** %4, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = shl i32 %28, 16
  %30 = and i32 %29, 16711680
  %31 = load i8*, i8** %4, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = shl i32 %34, 8
  %36 = and i32 %35, 65280
  %37 = or i32 %30, %36
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 2
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = and i32 %41, 255
  %43 = or i32 %37, %42
  store i32 %43, i32* %6, align 4
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 3
  store i8* %45, i8** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, 3
  store i64 %47, i64* %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 18
  %50 = and i32 %49, 63
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %7, align 8
  store i8 %53, i8* %54, align 1
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %56, 12
  %58 = and i32 %57, 63
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = load i8*, i8** %7, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %7, align 8
  store i8 %61, i8* %62, align 1
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 6
  %66 = and i32 %65, 63
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i8*, i8** %7, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %7, align 8
  store i8 %69, i8* %70, align 1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, 63
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = load i8*, i8** %7, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %7, align 8
  store i8 %76, i8* %77, align 1
  br label %21

79:                                               ; preds = %21
  %80 = load i64, i64* %5, align 8
  switch i64 %80, label %143 [
    i64 0, label %81
    i64 1, label %82
    i64 2, label %105
  ]

81:                                               ; preds = %79
  br label %143

82:                                               ; preds = %79
  %83 = load i8*, i8** %4, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 0
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = shl i32 %86, 16
  %88 = and i32 %87, 16711680
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = ashr i32 %89, 18
  %91 = and i32 %90, 63
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %7, align 8
  store i8 %94, i8* %95, align 1
  %97 = load i32, i32* %6, align 4
  %98 = ashr i32 %97, 12
  %99 = and i32 %98, 63
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  store i8 %102, i8* %103, align 1
  br label %143

105:                                              ; preds = %79
  %106 = load i8*, i8** %4, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = shl i32 %109, 16
  %111 = and i32 %110, 16711680
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 1
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = shl i32 %115, 8
  %117 = and i32 %116, 65280
  %118 = or i32 %111, %117
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = ashr i32 %119, 18
  %121 = and i32 %120, 63
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = load i8*, i8** %7, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %7, align 8
  store i8 %124, i8* %125, align 1
  %127 = load i32, i32* %6, align 4
  %128 = ashr i32 %127, 12
  %129 = and i32 %128, 63
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = load i8*, i8** %7, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %7, align 8
  store i8 %132, i8* %133, align 1
  %135 = load i32, i32* %6, align 4
  %136 = ashr i32 %135, 6
  %137 = and i32 %136, 63
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_encode.digits, i64 0, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = load i8*, i8** %7, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %7, align 8
  store i8 %140, i8* %141, align 1
  br label %143

143:                                              ; preds = %79, %105, %82, %81
  %144 = load i8*, i8** %7, align 8
  store i8 0, i8* %144, align 1
  %145 = load i8*, i8** %8, align 8
  store i8* %145, i8** %3, align 8
  br label %146

146:                                              ; preds = %143, %18
  %147 = load i8*, i8** %3, align 8
  ret i8* %147
}

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
