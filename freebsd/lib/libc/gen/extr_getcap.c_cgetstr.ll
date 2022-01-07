; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetstr.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getcap.c_cgetstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SFRAG = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgetstr(i8* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @cgetcap(i8* %16, i8* %17, i8 signext 61)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %236

22:                                               ; preds = %3
  %23 = load i64, i64* @SFRAG, align 8
  %24 = call i8* @malloc(i64 %23)
  store i8* %24, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @ENOMEM, align 4
  store i32 %27, i32* @errno, align 4
  store i32 -2, i32* %4, align 4
  br label %236

28:                                               ; preds = %22
  %29 = load i64, i64* @SFRAG, align 8
  store i64 %29, i64* %8, align 8
  %30 = load i8*, i8** %12, align 8
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %206, %28
  %32 = load i8*, i8** %9, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 58
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8*, i8** %9, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br label %41

41:                                               ; preds = %36, %31
  %42 = phi i1 [ false, %31 ], [ %40, %36 ]
  br i1 %42, label %43, label %207

43:                                               ; preds = %41
  %44 = load i8*, i8** %9, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 94
  br i1 %47, label %48, label %81

48:                                               ; preds = %43
  %49 = load i8*, i8** %9, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 58
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = load i8*, i8** %9, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %48
  br label %207

61:                                               ; preds = %55
  %62 = load i8*, i8** %9, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 63
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load i8*, i8** %10, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %10, align 8
  store i8 127, i8* %67, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %9, align 8
  br label %80

71:                                               ; preds = %61
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %9, align 8
  %74 = load i8, i8* %72, align 1
  %75 = sext i8 %74 to i32
  %76 = and i32 %75, 31
  %77 = trunc i32 %76 to i8
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %79, i8** %10, align 8
  store i8 %77, i8* %78, align 1
  br label %80

80:                                               ; preds = %71, %66
  br label %183

81:                                               ; preds = %43
  %82 = load i8*, i8** %9, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 92
  br i1 %85, label %86, label %176

86:                                               ; preds = %81
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %9, align 8
  %89 = load i8*, i8** %9, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 58
  br i1 %92, label %98, label %93

93:                                               ; preds = %86
  %94 = load i8*, i8** %9, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93, %86
  br label %207

99:                                               ; preds = %93
  %100 = load i8*, i8** %9, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp sle i32 48, %102
  br i1 %103, label %104, label %140

104:                                              ; preds = %99
  %105 = load i8*, i8** %9, align 8
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp sle i32 %107, 55
  br i1 %108, label %109, label %140

109:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  store i32 3, i32* %14, align 4
  br label %110

110:                                              ; preds = %133, %109
  %111 = load i32, i32* %13, align 4
  %112 = mul nsw i32 %111, 8
  %113 = load i8*, i8** %9, align 8
  %114 = getelementptr inbounds i8, i8* %113, i32 1
  store i8* %114, i8** %9, align 8
  %115 = load i8, i8* %113, align 1
  %116 = sext i8 %115 to i32
  %117 = sub nsw i32 %116, 48
  %118 = add nsw i32 %112, %117
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i8*, i8** %9, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp sle i32 48, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %123
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sle i32 %131, 55
  br label %133

133:                                              ; preds = %128, %123, %119
  %134 = phi i1 [ false, %123 ], [ false, %119 ], [ %132, %128 ]
  br i1 %134, label %110, label %135

135:                                              ; preds = %133
  %136 = load i32, i32* %13, align 4
  %137 = trunc i32 %136 to i8
  %138 = load i8*, i8** %10, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %10, align 8
  store i8 %137, i8* %138, align 1
  br label %175

140:                                              ; preds = %104, %99
  %141 = load i8*, i8** %9, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %9, align 8
  %143 = load i8, i8* %141, align 1
  %144 = sext i8 %143 to i32
  switch i32 %144, label %168 [
    i32 98, label %145
    i32 66, label %145
    i32 116, label %148
    i32 84, label %148
    i32 110, label %151
    i32 78, label %151
    i32 102, label %154
    i32 70, label %154
    i32 114, label %157
    i32 82, label %157
    i32 101, label %160
    i32 69, label %160
    i32 99, label %165
    i32 67, label %165
  ]

145:                                              ; preds = %140, %140
  %146 = load i8*, i8** %10, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %10, align 8
  store i8 8, i8* %146, align 1
  br label %174

148:                                              ; preds = %140, %140
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds i8, i8* %149, i32 1
  store i8* %150, i8** %10, align 8
  store i8 9, i8* %149, align 1
  br label %174

151:                                              ; preds = %140, %140
  %152 = load i8*, i8** %10, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %10, align 8
  store i8 10, i8* %152, align 1
  br label %174

154:                                              ; preds = %140, %140
  %155 = load i8*, i8** %10, align 8
  %156 = getelementptr inbounds i8, i8* %155, i32 1
  store i8* %156, i8** %10, align 8
  store i8 12, i8* %155, align 1
  br label %174

157:                                              ; preds = %140, %140
  %158 = load i8*, i8** %10, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %10, align 8
  store i8 13, i8* %158, align 1
  br label %174

160:                                              ; preds = %140, %140
  %161 = load i32, i32* @ESC, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %10, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %164, i8** %10, align 8
  store i8 %162, i8* %163, align 1
  br label %174

165:                                              ; preds = %140, %140
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %10, align 8
  store i8 58, i8* %166, align 1
  br label %174

168:                                              ; preds = %140
  %169 = load i8*, i8** %9, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 -1
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %10, align 8
  store i8 %171, i8* %172, align 1
  br label %174

174:                                              ; preds = %168, %165, %160, %157, %154, %151, %148, %145
  br label %175

175:                                              ; preds = %174, %135
  br label %182

176:                                              ; preds = %81
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %9, align 8
  %179 = load i8, i8* %177, align 1
  %180 = load i8*, i8** %10, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %10, align 8
  store i8 %179, i8* %180, align 1
  br label %182

182:                                              ; preds = %176, %175
  br label %183

183:                                              ; preds = %182, %80
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, -1
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* %8, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %188, label %206

188:                                              ; preds = %183
  %189 = load i8*, i8** %10, align 8
  %190 = load i8*, i8** %12, align 8
  %191 = ptrtoint i8* %189 to i64
  %192 = ptrtoint i8* %190 to i64
  %193 = sub i64 %191, %192
  store i64 %193, i64* %15, align 8
  %194 = load i8*, i8** %12, align 8
  %195 = load i64, i64* %15, align 8
  %196 = load i64, i64* @SFRAG, align 8
  %197 = add i64 %195, %196
  %198 = call i8* @reallocf(i8* %194, i64 %197)
  store i8* %198, i8** %12, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %200, label %201

200:                                              ; preds = %188
  store i32 -2, i32* %4, align 4
  br label %236

201:                                              ; preds = %188
  %202 = load i64, i64* @SFRAG, align 8
  store i64 %202, i64* %8, align 8
  %203 = load i8*, i8** %12, align 8
  %204 = load i64, i64* %15, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  store i8* %205, i8** %10, align 8
  br label %206

206:                                              ; preds = %201, %183
  br label %31

207:                                              ; preds = %98, %60, %41
  %208 = load i8*, i8** %10, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %10, align 8
  store i8 0, i8* %208, align 1
  %210 = load i64, i64* %8, align 8
  %211 = add nsw i64 %210, -1
  store i64 %211, i64* %8, align 8
  %212 = load i8*, i8** %10, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = ptrtoint i8* %212 to i64
  %215 = ptrtoint i8* %213 to i64
  %216 = sub i64 %214, %215
  %217 = sub nsw i64 %216, 1
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %11, align 4
  %219 = load i64, i64* %8, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %207
  %222 = load i8*, i8** %12, align 8
  %223 = load i8*, i8** %10, align 8
  %224 = load i8*, i8** %12, align 8
  %225 = ptrtoint i8* %223 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = call i8* @reallocf(i8* %222, i64 %227)
  store i8* %228, i8** %12, align 8
  %229 = icmp eq i8* %228, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  store i32 -2, i32* %4, align 4
  br label %236

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231, %207
  %233 = load i8*, i8** %12, align 8
  %234 = load i8**, i8*** %7, align 8
  store i8* %233, i8** %234, align 8
  %235 = load i32, i32* %11, align 4
  store i32 %235, i32* %4, align 4
  br label %236

236:                                              ; preds = %232, %230, %200, %26, %21
  %237 = load i32, i32* %4, align 4
  ret i32 %237
}

declare dso_local i8* @cgetcap(i8*, i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i8* @reallocf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
