; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cfb128.c_cfbr_encrypt_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cfb128.c_cfbr_encrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*, i8*, i32, i32 (i8*, i8*, i8*)*)* @cfbr_encrypt_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfbr_encrypt_block(i8* %0, i8* %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 (i8*, i8*, i8*)* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32 (i8*, i8*, i8*)*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [33 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 (i8*, i8*, i8*)* %6, i32 (i8*, i8*, i8*)** %14, align 8
  %19 = load i32, i32* %10, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = icmp sgt i32 %22, 128
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %7
  br label %152

25:                                               ; preds = %21
  %26 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @memcpy(i8* %26, i8* %27, i32 16)
  %29 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %14, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = call i32 %29(i8* %30, i8* %31, i8* %32)
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 7
  %36 = sdiv i32 %35, 8
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %71

39:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %67, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %70

44:                                               ; preds = %40
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8*, i8** %12, align 8
  %52 = load i32, i32* %15, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = xor i32 %50, %56
  %58 = trunc i32 %57 to i8
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 16, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %61
  store i8 %58, i8* %62, align 1
  %63 = load i8*, i8** %9, align 8
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 %58, i8* %66, align 1
  br label %67

67:                                               ; preds = %44
  %68 = load i32, i32* %15, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %15, align 4
  br label %40

70:                                               ; preds = %40
  br label %103

71:                                               ; preds = %25
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %99, %71
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = load i8*, i8** %8, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 16, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %84
  store i8 %81, i8* %85, align 1
  %86 = zext i8 %81 to i32
  %87 = load i8*, i8** %12, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = xor i32 %86, %92
  %94 = trunc i32 %93 to i8
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %15, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  store i8 %94, i8* %98, align 1
  br label %99

99:                                               ; preds = %76
  %100 = load i32, i32* %15, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %15, align 4
  br label %72

102:                                              ; preds = %72
  br label %103

103:                                              ; preds = %102, %70
  %104 = load i32, i32* %10, align 4
  %105 = srem i32 %104, 8
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %10, align 4
  %107 = sdiv i32 %106, 8
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %16, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %103
  %111 = load i8*, i8** %12, align 8
  %112 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 0
  %113 = load i32, i32* %17, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = call i32 @memcpy(i8* %111, i8* %115, i32 16)
  br label %152

117:                                              ; preds = %103
  store i32 0, i32* %15, align 4
  br label %118

118:                                              ; preds = %148, %117
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 16
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %17, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = load i32, i32* %16, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [33 x i8], [33 x i8]* %18, i64 0, i64 %135
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = load i32, i32* %16, align 4
  %140 = sub nsw i32 8, %139
  %141 = ashr i32 %138, %140
  %142 = or i32 %130, %141
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %12, align 8
  %145 = load i32, i32* %15, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  store i8 %143, i8* %147, align 1
  br label %148

148:                                              ; preds = %121
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %15, align 4
  br label %118

151:                                              ; preds = %118
  br label %152

152:                                              ; preds = %24, %151, %110
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
