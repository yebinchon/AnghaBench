; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_hex2bin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/sodium/extr_codecs.c_sodium_hex2bin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERANGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sodium_hex2bin(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64* %5, i8** %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  %21 = alloca i8, align 1
  %22 = alloca i8, align 1
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64* %5, i64** %13, align 8
  store i8** %6, i8*** %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  store i8 0, i8* %19, align 1
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %118, %76, %7
  %27 = load i64, i64* %16, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %125

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = load i64, i64* %16, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  store i8 %34, i8* %18, align 1
  %35 = load i8, i8* %18, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, 48
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %23, align 1
  %39 = load i8, i8* %23, align 1
  %40 = zext i8 %39 to i32
  %41 = sub i32 %40, 10
  %42 = lshr i32 %41, 8
  %43 = trunc i32 %42 to i8
  store i8 %43, i8* %22, align 1
  %44 = load i8, i8* %18, align 1
  %45 = zext i8 %44 to i32
  %46 = and i32 %45, -33
  %47 = sub i32 %46, 55
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %21, align 1
  %49 = load i8, i8* %21, align 1
  %50 = zext i8 %49 to i32
  %51 = sub i32 %50, 10
  %52 = load i8, i8* %21, align 1
  %53 = zext i8 %52 to i32
  %54 = sub i32 %53, 16
  %55 = xor i32 %51, %54
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %20, align 1
  %58 = load i8, i8* %22, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %20, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %59, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %30
  %65 = load i8*, i8** %12, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %79

67:                                               ; preds = %64
  %68 = load i8, i8* %25, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i8*, i8** %12, align 8
  %73 = load i8, i8* %18, align 1
  %74 = call i32* @strchr(i8* %72, i8 zeroext %73)
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i64, i64* %16, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %16, align 8
  br label %26

79:                                               ; preds = %71, %67, %64
  br label %125

80:                                               ; preds = %30
  %81 = load i8, i8* %22, align 1
  %82 = zext i8 %81 to i32
  %83 = load i8, i8* %23, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %82, %84
  %86 = load i8, i8* %20, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %21, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %87, %89
  %91 = or i32 %85, %90
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %24, align 1
  %93 = load i64, i64* %15, align 8
  %94 = load i64, i64* %9, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %80
  store i32 -1, i32* %17, align 4
  %97 = load i32, i32* @ERANGE, align 4
  store i32 %97, i32* @errno, align 4
  br label %125

98:                                               ; preds = %80
  %99 = load i8, i8* %25, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i8, i8* %24, align 1
  %104 = zext i8 %103 to i32
  %105 = mul i32 %104, 16
  %106 = trunc i32 %105 to i8
  store i8 %106, i8* %19, align 1
  br label %118

107:                                              ; preds = %98
  %108 = load i8, i8* %19, align 1
  %109 = zext i8 %108 to i32
  %110 = load i8, i8* %24, align 1
  %111 = zext i8 %110 to i32
  %112 = or i32 %109, %111
  %113 = trunc i32 %112 to i8
  %114 = load i8*, i8** %8, align 8
  %115 = load i64, i64* %15, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %15, align 8
  %117 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8 %113, i8* %117, align 1
  br label %118

118:                                              ; preds = %107, %102
  %119 = load i8, i8* %25, align 1
  %120 = zext i8 %119 to i32
  %121 = xor i32 %120, -1
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %25, align 1
  %123 = load i64, i64* %16, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %16, align 8
  br label %26

125:                                              ; preds = %96, %79, %26
  %126 = load i8, i8* %25, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %125
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %16, align 8
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* @errno, align 4
  store i32 -1, i32* %17, align 4
  br label %133

133:                                              ; preds = %129, %125
  %134 = load i32, i32* %17, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %133
  store i64 0, i64* %15, align 8
  br label %137

137:                                              ; preds = %136, %133
  %138 = load i8**, i8*** %14, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i8*, i8** %10, align 8
  %142 = load i64, i64* %16, align 8
  %143 = getelementptr inbounds i8, i8* %141, i64 %142
  %144 = load i8**, i8*** %14, align 8
  store i8* %143, i8** %144, align 8
  br label %152

145:                                              ; preds = %137
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* %11, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %151

149:                                              ; preds = %145
  %150 = load i32, i32* @EINVAL, align 4
  store i32 %150, i32* @errno, align 4
  store i32 -1, i32* %17, align 4
  br label %151

151:                                              ; preds = %149, %145
  br label %152

152:                                              ; preds = %151, %140
  %153 = load i64*, i64** %13, align 8
  %154 = icmp ne i64* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load i64, i64* %15, align 8
  %157 = load i64*, i64** %13, align 8
  store i64 %156, i64* %157, align 8
  br label %158

158:                                              ; preds = %155, %152
  %159 = load i32, i32* %17, align 4
  ret i32 %159
}

declare dso_local i32* @strchr(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
