; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_base64_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64_decode.digits = internal constant [64 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16
@base64_decode.decode_table = internal global [128 x i8] zeroinitializer, align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*)* @base64_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base64_decode(i8* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i8*, i8** %5, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @base64_decode.digits, i64 0, i64 1), align 1
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* @base64_decode.decode_table, i64 0, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %40

21:                                               ; preds = %3
  %22 = call i32 @memset(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @base64_decode.decode_table, i64 0, i64 0), i32 255, i32 128)
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %36, %21
  %24 = load i32, i32* %11, align 4
  %25 = zext i32 %24 to i64
  %26 = icmp ult i64 %25, 64
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, i32* %11, align 4
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* %11, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds [64 x i8], [64 x i8]* @base64_decode.digits, i64 0, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i64
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* @base64_decode.decode_table, i64 0, i64 %34
  store i8 %29, i8* %35, align 1
  br label %36

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %23

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39, %3
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* %6, align 8
  %43 = udiv i64 %42, 4
  %44 = sub i64 %41, %43
  %45 = add i64 %44, 1
  %46 = call i64 @malloc(i64 %45)
  %47 = inttoptr i64 %46 to i8*
  store i8* %47, i8** %8, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %40
  %51 = load i64*, i64** %7, align 8
  store i64 0, i64* %51, align 8
  store i8* null, i8** %4, align 8
  br label %159

52:                                               ; preds = %40
  %53 = load i8*, i8** %8, align 8
  store i8* %53, i8** %9, align 8
  br label %54

54:                                               ; preds = %144, %52
  %55 = load i64, i64* %6, align 8
  %56 = icmp ugt i64 %55, 0
  br i1 %56, label %57, label %151

57:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %100, %95, %57
  %59 = load i32, i32* %13, align 4
  %60 = icmp slt i32 %59, 4
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = icmp ugt i64 %62, 0
  br label %64

64:                                               ; preds = %61, %58
  %65 = phi i1 [ false, %58 ], [ %63, %61 ]
  br i1 %65, label %66, label %116

66:                                               ; preds = %64
  %67 = load i8*, i8** %10, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 61
  br i1 %70, label %76, label %71

71:                                               ; preds = %66
  %72 = load i8*, i8** %10, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 95
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %66
  store i64 0, i64* %6, align 8
  br label %116

77:                                               ; preds = %71
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sgt i32 %80, 127
  br i1 %81, label %95, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %10, align 8
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp slt i32 %85, 32
  br i1 %86, label %95, label %87

87:                                               ; preds = %82
  %88 = load i8*, i8** %10, align 8
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* @base64_decode.decode_table, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 255
  br i1 %94, label %95, label %100

95:                                               ; preds = %87, %82, %77
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, -1
  store i64 %97, i64* %6, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %10, align 8
  br label %58

100:                                              ; preds = %87
  %101 = load i32, i32* %12, align 4
  %102 = shl i32 %101, 6
  store i32 %102, i32* %12, align 4
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %10, align 8
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* @base64_decode.decode_table, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = load i32, i32* %12, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %12, align 4
  %112 = load i64, i64* %6, align 8
  %113 = add i64 %112, -1
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %58

116:                                              ; preds = %76, %64
  %117 = load i32, i32* %13, align 4
  %118 = sub nsw i32 4, %117
  %119 = mul nsw i32 6, %118
  %120 = load i32, i32* %12, align 4
  %121 = shl i32 %120, %119
  store i32 %121, i32* %12, align 4
  %122 = load i32, i32* %13, align 4
  switch i32 %122, label %144 [
    i32 4, label %123
    i32 3, label %129
    i32 2, label %136
    i32 1, label %143
  ]

123:                                              ; preds = %116
  %124 = load i32, i32* %12, align 4
  %125 = and i32 %124, 255
  %126 = trunc i32 %125 to i8
  %127 = load i8*, i8** %9, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 2
  store i8 %126, i8* %128, align 1
  br label %129

129:                                              ; preds = %116, %123
  %130 = load i32, i32* %12, align 4
  %131 = ashr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = trunc i32 %132 to i8
  %134 = load i8*, i8** %9, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 1
  store i8 %133, i8* %135, align 1
  br label %136

136:                                              ; preds = %116, %129
  %137 = load i32, i32* %12, align 4
  %138 = ashr i32 %137, 16
  %139 = and i32 %138, 255
  %140 = trunc i32 %139 to i8
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 0
  store i8 %140, i8* %142, align 1
  br label %144

143:                                              ; preds = %116
  br label %144

144:                                              ; preds = %116, %143, %136
  %145 = load i32, i32* %13, align 4
  %146 = mul nsw i32 %145, 3
  %147 = sdiv i32 %146, 4
  %148 = load i8*, i8** %9, align 8
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i8, i8* %148, i64 %149
  store i8* %150, i8** %9, align 8
  br label %54

151:                                              ; preds = %54
  %152 = load i8*, i8** %9, align 8
  %153 = load i8*, i8** %8, align 8
  %154 = ptrtoint i8* %152 to i64
  %155 = ptrtoint i8* %153 to i64
  %156 = sub i64 %154, %155
  %157 = load i64*, i64** %7, align 8
  store i64 %156, i64* %157, align 8
  %158 = load i8*, i8** %8, align 8
  store i8* %158, i8** %4, align 8
  br label %159

159:                                              ; preds = %151, %50
  %160 = load i8*, i8** %4, align 8
  ret i8* %160
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
