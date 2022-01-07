; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_latlon2ul.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/resolv/extr_res_debug.c_latlon2ul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i32*)* @latlon2ul to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @latlon2ul(i8** %0, i32* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  br label %13

13:                                               ; preds = %18, %2
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isdigit(i8 zeroext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = mul nsw i32 %19, 10
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  %25 = sub nsw i32 %24, 48
  %26 = add nsw i32 %20, %25
  store i32 %26, i32* %7, align 4
  br label %13

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %33, %27
  %29 = load i8*, i8** %5, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isspace(i8 zeroext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %5, align 8
  br label %28

36:                                               ; preds = %28
  %37 = load i8*, i8** %5, align 8
  %38 = load i8, i8* %37, align 1
  %39 = call i64 @isdigit(i8 zeroext %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  br label %154

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %48, %42
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @isdigit(i8 zeroext %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = mul nsw i32 %49, 10
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  %53 = load i8, i8* %51, align 1
  %54 = sext i8 %53 to i32
  %55 = sub nsw i32 %54, 48
  %56 = add nsw i32 %50, %55
  store i32 %56, i32* %8, align 4
  br label %43

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %63, %57
  %59 = load i8*, i8** %5, align 8
  %60 = load i8, i8* %59, align 1
  %61 = call i64 @isspace(i8 zeroext %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %5, align 8
  br label %58

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = load i8, i8* %67, align 1
  %69 = call i64 @isdigit(i8 zeroext %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %154

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %78, %72
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = call i64 @isdigit(i8 zeroext %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = mul nsw i32 %79, 10
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %5, align 8
  %83 = load i8, i8* %81, align 1
  %84 = sext i8 %83 to i32
  %85 = sub nsw i32 %84, 48
  %86 = add nsw i32 %80, %85
  store i32 %86, i32* %9, align 4
  br label %73

87:                                               ; preds = %73
  %88 = load i8*, i8** %5, align 8
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 46
  br i1 %91, label %92, label %134

92:                                               ; preds = %87
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %5, align 8
  %95 = load i8*, i8** %5, align 8
  %96 = load i8, i8* %95, align 1
  %97 = call i64 @isdigit(i8 zeroext %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %133

99:                                               ; preds = %92
  %100 = load i8*, i8** %5, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %5, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = sub nsw i32 %103, 48
  %105 = mul nsw i32 %104, 100
  store i32 %105, i32* %10, align 4
  %106 = load i8*, i8** %5, align 8
  %107 = load i8, i8* %106, align 1
  %108 = call i64 @isdigit(i8 zeroext %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %99
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  %113 = load i8, i8* %111, align 1
  %114 = sext i8 %113 to i32
  %115 = sub nsw i32 %114, 48
  %116 = mul nsw i32 %115, 10
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i8*, i8** %5, align 8
  %120 = load i8, i8* %119, align 1
  %121 = call i64 @isdigit(i8 zeroext %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %110
  %124 = load i8*, i8** %5, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %5, align 8
  %126 = load i8, i8* %124, align 1
  %127 = sext i8 %126 to i32
  %128 = sub nsw i32 %127, 48
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %123, %110
  br label %132

132:                                              ; preds = %131, %99
  br label %133

133:                                              ; preds = %132, %92
  br label %134

134:                                              ; preds = %133, %87
  br label %135

135:                                              ; preds = %141, %134
  %136 = load i8*, i8** %5, align 8
  %137 = load i8, i8* %136, align 1
  %138 = call i64 @isspace(i8 zeroext %137)
  %139 = icmp ne i64 %138, 0
  %140 = xor i1 %139, true
  br i1 %140, label %141, label %144

141:                                              ; preds = %135
  %142 = load i8*, i8** %5, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %5, align 8
  br label %135

144:                                              ; preds = %135
  br label %145

145:                                              ; preds = %150, %144
  %146 = load i8*, i8** %5, align 8
  %147 = load i8, i8* %146, align 1
  %148 = call i64 @isspace(i8 zeroext %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i8*, i8** %5, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %5, align 8
  br label %145

153:                                              ; preds = %145
  br label %154

154:                                              ; preds = %153, %71, %41
  %155 = load i8*, i8** %5, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  switch i32 %157, label %182 [
    i32 78, label %158
    i32 110, label %158
    i32 69, label %158
    i32 101, label %158
    i32 83, label %170
    i32 115, label %170
    i32 87, label %170
    i32 119, label %170
  ]

158:                                              ; preds = %154, %154, %154, %154
  %159 = load i32, i32* %7, align 4
  %160 = mul nsw i32 %159, 60
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %160, %161
  %163 = mul nsw i32 %162, 60
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %163, %164
  %166 = mul nsw i32 %165, 1000
  %167 = add i32 -2147483648, %166
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %167, %168
  store i32 %169, i32* %6, align 4
  br label %183

170:                                              ; preds = %154, %154, %154, %154
  %171 = load i32, i32* %7, align 4
  %172 = mul nsw i32 %171, 60
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %172, %173
  %175 = mul nsw i32 %174, 60
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %175, %176
  %178 = mul nsw i32 %177, 1000
  %179 = sub i32 -2147483648, %178
  %180 = load i32, i32* %10, align 4
  %181 = sub i32 %179, %180
  store i32 %181, i32* %6, align 4
  br label %183

182:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %182, %170, %158
  %184 = load i8*, i8** %5, align 8
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  switch i32 %186, label %191 [
    i32 78, label %187
    i32 110, label %187
    i32 83, label %187
    i32 115, label %187
    i32 69, label %189
    i32 101, label %189
    i32 87, label %189
    i32 119, label %189
  ]

187:                                              ; preds = %183, %183, %183, %183
  %188 = load i32*, i32** %4, align 8
  store i32 1, i32* %188, align 4
  br label %193

189:                                              ; preds = %183, %183, %183, %183
  %190 = load i32*, i32** %4, align 8
  store i32 2, i32* %190, align 4
  br label %193

191:                                              ; preds = %183
  %192 = load i32*, i32** %4, align 8
  store i32 0, i32* %192, align 4
  br label %193

193:                                              ; preds = %191, %189, %187
  %194 = load i8*, i8** %5, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %5, align 8
  br label %196

196:                                              ; preds = %202, %193
  %197 = load i8*, i8** %5, align 8
  %198 = load i8, i8* %197, align 1
  %199 = call i64 @isspace(i8 zeroext %198)
  %200 = icmp ne i64 %199, 0
  %201 = xor i1 %200, true
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i8*, i8** %5, align 8
  %204 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %204, i8** %5, align 8
  br label %196

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %211, %205
  %207 = load i8*, i8** %5, align 8
  %208 = load i8, i8* %207, align 1
  %209 = call i64 @isspace(i8 zeroext %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %206
  %212 = load i8*, i8** %5, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %5, align 8
  br label %206

214:                                              ; preds = %206
  %215 = load i8*, i8** %5, align 8
  %216 = load i8**, i8*** %3, align 8
  store i8* %215, i8** %216, align 8
  %217 = load i32, i32* %6, align 4
  ret i32 %217
}

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i64 @isspace(i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
