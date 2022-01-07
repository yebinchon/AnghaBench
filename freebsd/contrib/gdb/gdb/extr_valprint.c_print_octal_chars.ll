; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_octal_chars.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_print_octal_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }

@BITS_IN_BYTES = common dso_local global i32 0, align 4
@TARGET_BYTE_ORDER = common dso_local global i64 0, align 8
@BFD_ENDIAN_BIG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Internal error in octal conversion;\00", align 1
@BITS_IN_OCTAL = common dso_local global i32 0, align 4
@CARRY_ONE = common dso_local global i8 0, align 1
@CARRY_ZERO = common dso_local global i8 0, align 1
@HIGH_ONE = common dso_local global i8 0, align 1
@HIGH_TWO = common dso_local global i8 0, align 1
@HIGH_ZERO = common dso_local global i8 0, align 1
@LOW_ONE = common dso_local global i8 0, align 1
@LOW_TWO = common dso_local global i8 0, align 1
@LOW_ZERO = common dso_local global i8 0, align 1
@MID_ONE = common dso_local global i8 0, align 1
@MID_TWO = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_octal_chars(%struct.ui_file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.ui_file* %0, %struct.ui_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @BITS_IN_BYTES, align 4
  %15 = mul i32 %13, %14
  %16 = urem i32 %15, 3
  store i32 %16, i32* %12, align 4
  store i8 0, i8* %11, align 1
  %17 = call i32 (...) @local_octal_format_prefix()
  %18 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %19 = call i32 @fputs_filtered(i32 %17, %struct.ui_file* %18)
  %20 = load i64, i64* @TARGET_BYTE_ORDER, align 8
  %21 = load i64, i64* @BFD_ENDIAN_BIG, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %137

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  store i8* %24, i8** %7, align 8
  br label %25

25:                                               ; preds = %133, %23
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = icmp ult i8* %26, %30
  br i1 %31, label %32, label %136

32:                                               ; preds = %25
  %33 = load i32, i32* %12, align 4
  switch i32 %33, label %126 [
    i32 0, label %34
    i32 1, label %58
    i32 2, label %95
  ]

34:                                               ; preds = %32
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 224, %37
  %39 = ashr i32 %38, 5
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %8, align 1
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 14, %43
  %45 = ashr i32 %44, 2
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %9, align 1
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 3, %49
  %51 = trunc i32 %50 to i8
  store i8 %51, i8* %11, align 1
  %52 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %53 = load i8, i8* %8, align 1
  %54 = call i32 @fprintf_filtered(%struct.ui_file* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %53)
  %55 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %56 = load i8, i8* %9, align 1
  %57 = call i32 @fprintf_filtered(%struct.ui_file* %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %56)
  br label %128

58:                                               ; preds = %32
  %59 = load i8, i8* %11, align 1
  %60 = zext i8 %59 to i32
  %61 = shl i32 %60, 1
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 128, %64
  %66 = ashr i32 %65, 7
  %67 = or i32 %61, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %8, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = and i32 112, %71
  %73 = ashr i32 %72, 4
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %9, align 1
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = and i32 14, %77
  %79 = ashr i32 %78, 1
  %80 = trunc i32 %79 to i8
  store i8 %80, i8* %10, align 1
  %81 = load i8*, i8** %7, align 8
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = and i32 1, %83
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  %86 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %87 = load i8, i8* %8, align 1
  %88 = call i32 @fprintf_filtered(%struct.ui_file* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %87)
  %89 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %90 = load i8, i8* %9, align 1
  %91 = call i32 @fprintf_filtered(%struct.ui_file* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %90)
  %92 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %93 = load i8, i8* %10, align 1
  %94 = call i32 @fprintf_filtered(%struct.ui_file* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %93)
  br label %128

95:                                               ; preds = %32
  %96 = load i8, i8* %11, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 2
  %99 = load i8*, i8** %7, align 8
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = and i32 192, %101
  %103 = ashr i32 %102, 6
  %104 = or i32 %98, %103
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %8, align 1
  %106 = load i8*, i8** %7, align 8
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 56, %108
  %110 = ashr i32 %109, 3
  %111 = trunc i32 %110 to i8
  store i8 %111, i8* %9, align 1
  %112 = load i8*, i8** %7, align 8
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = and i32 7, %114
  %116 = trunc i32 %115 to i8
  store i8 %116, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %117 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %118 = load i8, i8* %8, align 1
  %119 = call i32 @fprintf_filtered(%struct.ui_file* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %118)
  %120 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %121 = load i8, i8* %9, align 1
  %122 = call i32 @fprintf_filtered(%struct.ui_file* %120, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %121)
  %123 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %124 = load i8, i8* %10, align 1
  %125 = call i32 @fprintf_filtered(%struct.ui_file* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %124)
  br label %128

126:                                              ; preds = %32
  %127 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %95, %58, %34
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* %12, align 4
  %132 = srem i32 %131, 3
  store i32 %132, i32* %12, align 4
  br label %133

133:                                              ; preds = %128
  %134 = load i8*, i8** %7, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %7, align 8
  br label %25

136:                                              ; preds = %25
  br label %252

137:                                              ; preds = %3
  %138 = load i8*, i8** %5, align 8
  %139 = load i32, i32* %6, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = getelementptr inbounds i8, i8* %141, i64 -1
  store i8* %142, i8** %7, align 8
  br label %143

143:                                              ; preds = %248, %137
  %144 = load i8*, i8** %7, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = icmp uge i8* %144, %145
  br i1 %146, label %147, label %251

147:                                              ; preds = %143
  %148 = load i32, i32* %12, align 4
  switch i32 %148, label %241 [
    i32 0, label %149
    i32 1, label %173
    i32 2, label %210
  ]

149:                                              ; preds = %147
  %150 = load i8*, i8** %7, align 8
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = and i32 224, %152
  %154 = ashr i32 %153, 5
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %8, align 1
  %156 = load i8*, i8** %7, align 8
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 14, %158
  %160 = ashr i32 %159, 2
  %161 = trunc i32 %160 to i8
  store i8 %161, i8* %9, align 1
  %162 = load i8*, i8** %7, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = and i32 3, %164
  %166 = trunc i32 %165 to i8
  store i8 %166, i8* %11, align 1
  %167 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %168 = load i8, i8* %8, align 1
  %169 = call i32 @fprintf_filtered(%struct.ui_file* %167, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %168)
  %170 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %171 = load i8, i8* %9, align 1
  %172 = call i32 @fprintf_filtered(%struct.ui_file* %170, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %171)
  br label %243

173:                                              ; preds = %147
  %174 = load i8, i8* %11, align 1
  %175 = zext i8 %174 to i32
  %176 = shl i32 %175, 1
  %177 = load i8*, i8** %7, align 8
  %178 = load i8, i8* %177, align 1
  %179 = zext i8 %178 to i32
  %180 = and i32 128, %179
  %181 = ashr i32 %180, 7
  %182 = or i32 %176, %181
  %183 = trunc i32 %182 to i8
  store i8 %183, i8* %8, align 1
  %184 = load i8*, i8** %7, align 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 112, %186
  %188 = ashr i32 %187, 4
  %189 = trunc i32 %188 to i8
  store i8 %189, i8* %9, align 1
  %190 = load i8*, i8** %7, align 8
  %191 = load i8, i8* %190, align 1
  %192 = zext i8 %191 to i32
  %193 = and i32 14, %192
  %194 = ashr i32 %193, 1
  %195 = trunc i32 %194 to i8
  store i8 %195, i8* %10, align 1
  %196 = load i8*, i8** %7, align 8
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  %199 = and i32 1, %198
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %11, align 1
  %201 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %202 = load i8, i8* %8, align 1
  %203 = call i32 @fprintf_filtered(%struct.ui_file* %201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %202)
  %204 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %205 = load i8, i8* %9, align 1
  %206 = call i32 @fprintf_filtered(%struct.ui_file* %204, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %205)
  %207 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %208 = load i8, i8* %10, align 1
  %209 = call i32 @fprintf_filtered(%struct.ui_file* %207, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %208)
  br label %243

210:                                              ; preds = %147
  %211 = load i8, i8* %11, align 1
  %212 = zext i8 %211 to i32
  %213 = shl i32 %212, 2
  %214 = load i8*, i8** %7, align 8
  %215 = load i8, i8* %214, align 1
  %216 = zext i8 %215 to i32
  %217 = and i32 192, %216
  %218 = ashr i32 %217, 6
  %219 = or i32 %213, %218
  %220 = trunc i32 %219 to i8
  store i8 %220, i8* %8, align 1
  %221 = load i8*, i8** %7, align 8
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = and i32 56, %223
  %225 = ashr i32 %224, 3
  %226 = trunc i32 %225 to i8
  store i8 %226, i8* %9, align 1
  %227 = load i8*, i8** %7, align 8
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = and i32 7, %229
  %231 = trunc i32 %230 to i8
  store i8 %231, i8* %10, align 1
  store i8 0, i8* %11, align 1
  %232 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %233 = load i8, i8* %8, align 1
  %234 = call i32 @fprintf_filtered(%struct.ui_file* %232, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %233)
  %235 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %236 = load i8, i8* %9, align 1
  %237 = call i32 @fprintf_filtered(%struct.ui_file* %235, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %236)
  %238 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %239 = load i8, i8* %10, align 1
  %240 = call i32 @fprintf_filtered(%struct.ui_file* %238, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 zeroext %239)
  br label %243

241:                                              ; preds = %147
  %242 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %243

243:                                              ; preds = %241, %210, %173, %149
  %244 = load i32, i32* %12, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %12, align 4
  %246 = load i32, i32* %12, align 4
  %247 = srem i32 %246, 3
  store i32 %247, i32* %12, align 4
  br label %248

248:                                              ; preds = %243
  %249 = load i8*, i8** %7, align 8
  %250 = getelementptr inbounds i8, i8* %249, i32 -1
  store i8* %250, i8** %7, align 8
  br label %143

251:                                              ; preds = %143
  br label %252

252:                                              ; preds = %251, %136
  %253 = call i32 (...) @local_octal_format_suffix()
  %254 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %255 = call i32 @fputs_filtered(i32 %253, %struct.ui_file* %254)
  ret void
}

declare dso_local i32 @fputs_filtered(i32, %struct.ui_file*) #1

declare dso_local i32 @local_octal_format_prefix(...) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, i8 zeroext) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @local_octal_format_suffix(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
