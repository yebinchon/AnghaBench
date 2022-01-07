; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_n-fold.c_rr13.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_n-fold.c_rr13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @rr13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr13(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 7
  %18 = udiv i64 %17, 8
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

23:                                               ; preds = %2
  %24 = load i64, i64* %5, align 8
  %25 = urem i64 13, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %5, align 8
  %28 = urem i64 %27, 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i8* @malloc(i32 %30)
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %3, align 4
  br label %156

36:                                               ; preds = %23
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @memcpy(i8* %37, i8* %38, i32 %39)
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %83

43:                                               ; preds = %36
  %44 = load i32, i32* %10, align 4
  %45 = sub nsw i32 8, %44
  %46 = shl i32 255, %45
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = and i32 %53, %46
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %43
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %82

60:                                               ; preds = %57
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = ashr i32 %64, %65
  %67 = load i8*, i8** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sub nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = or i32 %73, %66
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %71, align 1
  br label %76

76:                                               ; preds = %60
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %8, align 4
  br label %57

82:                                               ; preds = %57
  br label %83

83:                                               ; preds = %82, %36
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %150, %83
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %153

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  %90 = mul nsw i32 8, %89
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %90, %91
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %96, %88
  %94 = load i32, i32* %11, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i64, i64* %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = add i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %11, align 4
  br label %93

102:                                              ; preds = %93
  %103 = load i32, i32* %11, align 4
  %104 = sdiv i32 %103, 8
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = srem i32 %105, 8
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 8
  %109 = load i32, i32* %7, align 4
  %110 = mul nsw i32 %109, 8
  %111 = icmp sgt i32 %108, %110
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load i64, i64* %5, align 8
  %114 = add i64 %113, 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = sub i64 %114, %116
  %118 = urem i64 %117, 8
  %119 = trunc i64 %118 to i32
  store i32 %119, i32* %15, align 4
  br label %123

120:                                              ; preds = %102
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 8, %121
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %120, %112
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = load i32, i32* %7, align 4
  %127 = srem i32 %125, %126
  store i32 %127, i32* %14, align 4
  %128 = load i8*, i8** %6, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = zext i8 %132 to i32
  %134 = load i32, i32* %13, align 4
  %135 = shl i32 %133, %134
  %136 = load i8*, i8** %6, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = load i32, i32* %15, align 4
  %143 = ashr i32 %141, %142
  %144 = or i32 %135, %143
  %145 = trunc i32 %144 to i8
  %146 = load i8*, i8** %4, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  store i8 %145, i8* %149, align 1
  br label %150

150:                                              ; preds = %123
  %151 = load i32, i32* %8, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %8, align 4
  br label %84

153:                                              ; preds = %84
  %154 = load i8*, i8** %6, align 8
  %155 = call i32 @free(i8* %154)
  store i32 0, i32* %3, align 4
  br label %156

156:                                              ; preds = %153, %34, %22
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
