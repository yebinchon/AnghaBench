; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_base64.c_base64_gen_decode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_base64.c_base64_gen_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64, i64*, i8*)* @base64_gen_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @base64_gen_decode(i8* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca [256 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %18, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %22 = call i32 @os_memset(i8* %21, i32 128, i32 256)
  store i64 0, i64* %15, align 8
  br label %23

23:                                               ; preds = %35, %4
  %24 = load i64, i64* %15, align 8
  %25 = icmp ult i64 %24, 3
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i64, i64* %15, align 8
  %28 = trunc i64 %27 to i8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %15, align 8
  %31 = getelementptr inbounds i8, i8* %29, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %33
  store i8 %28, i8* %34, align 1
  br label %35

35:                                               ; preds = %26
  %36 = load i64, i64* %15, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %15, align 8
  br label %23

38:                                               ; preds = %23
  %39 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 61
  store i8 0, i8* %39, align 1
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %40

40:                                               ; preds = %58, %38
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %15, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i64
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 128
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i64, i64* %16, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %54, %44
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %15, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %15, align 8
  br label %40

61:                                               ; preds = %40
  %62 = load i64, i64* %16, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i8* null, i8** %5, align 8
  br label %189

65:                                               ; preds = %61
  %66 = load i64, i64* %16, align 8
  %67 = urem i64 %66, 4
  %68 = sub i64 4, %67
  %69 = urem i64 %68, 4
  store i64 %69, i64* %19, align 8
  %70 = load i64, i64* %16, align 8
  %71 = load i64, i64* %19, align 8
  %72 = add i64 %70, %71
  %73 = udiv i64 %72, 4
  %74 = mul i64 %73, 3
  store i64 %74, i64* %17, align 8
  %75 = load i64, i64* %17, align 8
  %76 = call i8* @os_malloc(i64 %75)
  store i8* %76, i8** %11, align 8
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %11, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %65
  store i8* null, i8** %5, align 8
  br label %189

80:                                               ; preds = %65
  store i64 0, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %81

81:                                               ; preds = %178, %80
  %82 = load i64, i64* %15, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %19, align 8
  %85 = add i64 %83, %84
  %86 = icmp ult i64 %82, %85
  br i1 %86, label %87, label %181

87:                                               ; preds = %81
  %88 = load i64, i64* %15, align 8
  %89 = load i64, i64* %7, align 8
  %90 = icmp uge i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  store i8 61, i8* %20, align 1
  br label %97

92:                                               ; preds = %87
  %93 = load i8*, i8** %6, align 8
  %94 = load i64, i64* %15, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %20, align 1
  br label %97

97:                                               ; preds = %92, %91
  %98 = load i8, i8* %20, align 1
  %99 = zext i8 %98 to i64
  %100 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  store i8 %101, i8* %14, align 1
  %102 = load i8, i8* %14, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 128
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %178

106:                                              ; preds = %97
  %107 = load i8, i8* %20, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 61
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %18, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %18, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i8, i8* %14, align 1
  %115 = load i64, i64* %16, align 8
  %116 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 %115
  store i8 %114, i8* %116, align 1
  %117 = load i64, i64* %16, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* %16, align 8
  %120 = icmp eq i64 %119, 4
  br i1 %120, label %121, label %177

121:                                              ; preds = %113
  %122 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = shl i32 %124, 2
  %126 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = ashr i32 %128, 4
  %130 = or i32 %125, %129
  %131 = trunc i32 %130 to i8
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %133, i8** %12, align 8
  store i8 %131, i8* %132, align 1
  %134 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = shl i32 %136, 4
  %138 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = ashr i32 %140, 2
  %142 = or i32 %137, %141
  %143 = trunc i32 %142 to i8
  %144 = load i8*, i8** %12, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %12, align 8
  store i8 %143, i8* %144, align 1
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = shl i32 %148, 6
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = or i32 %149, %152
  %154 = trunc i32 %153 to i8
  %155 = load i8*, i8** %12, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %12, align 8
  store i8 %154, i8* %155, align 1
  store i64 0, i64* %16, align 8
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %176

159:                                              ; preds = %121
  %160 = load i32, i32* %18, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i8*, i8** %12, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %12, align 8
  br label %175

165:                                              ; preds = %159
  %166 = load i32, i32* %18, align 4
  %167 = icmp eq i32 %166, 2
  br i1 %167, label %168, label %171

168:                                              ; preds = %165
  %169 = load i8*, i8** %12, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 -2
  store i8* %170, i8** %12, align 8
  br label %174

171:                                              ; preds = %165
  %172 = load i8*, i8** %11, align 8
  %173 = call i32 @os_free(i8* %172)
  store i8* null, i8** %5, align 8
  br label %189

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174, %162
  br label %181

176:                                              ; preds = %121
  br label %177

177:                                              ; preds = %176, %113
  br label %178

178:                                              ; preds = %177, %105
  %179 = load i64, i64* %15, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %15, align 8
  br label %81

181:                                              ; preds = %175, %81
  %182 = load i8*, i8** %12, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = ptrtoint i8* %182 to i64
  %185 = ptrtoint i8* %183 to i64
  %186 = sub i64 %184, %185
  %187 = load i64*, i64** %8, align 8
  store i64 %186, i64* %187, align 8
  %188 = load i8*, i8** %11, align 8
  store i8* %188, i8** %5, align 8
  br label %189

189:                                              ; preds = %181, %171, %79, %64
  %190 = load i8*, i8** %5, align 8
  ret i8* %190
}

declare dso_local i32 @os_memset(i8*, i32, i32) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @os_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
