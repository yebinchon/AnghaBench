; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valarith.c_value_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_INT = common dso_local global i64 0, align 8
@TYPE_CODE_STRING = common dso_local global i64 0, align 8
@TYPE_CODE_CHAR = common dso_local global i64 0, align 8
@TYPE_CODE_BITSTRING = common dso_local global i64 0, align 8
@TYPE_CODE_BOOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"unimplemented support for bitstring/boolean repeats\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't repeat values of that type\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"Strings can only be concatenated with other strings.\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"Bitstrings or booleans can only be concatenated with other bitstrings or booleans.\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"unimplemented support for bitstring/boolean concatenation.\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"illegal operands for concatenation.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @value_concat(%struct.value* %0, %struct.value* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.value*, align 8
  %7 = alloca %struct.value*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca %struct.type*, align 8
  %15 = alloca %struct.type*, align 8
  %16 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  store %struct.value* %1, %struct.value** %4, align 8
  store %struct.value* null, %struct.value** %7, align 8
  %17 = load %struct.value*, %struct.value** %3, align 8
  %18 = call i32 @VALUE_TYPE(%struct.value* %17)
  %19 = call %struct.type* @check_typedef(i32 %18)
  store %struct.type* %19, %struct.type** %14, align 8
  %20 = load %struct.value*, %struct.value** %4, align 8
  %21 = call i32 @VALUE_TYPE(%struct.value* %20)
  %22 = call %struct.type* @check_typedef(i32 %21)
  store %struct.type* %22, %struct.type** %15, align 8
  %23 = load %struct.value*, %struct.value** %3, align 8
  %24 = load %struct.type*, %struct.type** %14, align 8
  %25 = call i32 @COERCE_VARYING_ARRAY(%struct.value* %23, %struct.type* %24)
  %26 = load %struct.value*, %struct.value** %4, align 8
  %27 = load %struct.type*, %struct.type** %15, align 8
  %28 = call i32 @COERCE_VARYING_ARRAY(%struct.value* %26, %struct.type* %27)
  %29 = load %struct.type*, %struct.type** %15, align 8
  %30 = call i64 @TYPE_CODE(%struct.type* %29)
  %31 = load i64, i64* @TYPE_CODE_INT, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load %struct.type*, %struct.type** %14, align 8
  store %struct.type* %34, %struct.type** %16, align 8
  %35 = load %struct.type*, %struct.type** %16, align 8
  store %struct.type* %35, %struct.type** %14, align 8
  %36 = load %struct.type*, %struct.type** %15, align 8
  store %struct.type* %36, %struct.type** %16, align 8
  %37 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %37, %struct.value** %5, align 8
  %38 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %38, %struct.value** %6, align 8
  br label %42

39:                                               ; preds = %2
  %40 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %40, %struct.value** %5, align 8
  %41 = load %struct.value*, %struct.value** %4, align 8
  store %struct.value* %41, %struct.value** %6, align 8
  br label %42

42:                                               ; preds = %39, %33
  %43 = load %struct.type*, %struct.type** %14, align 8
  %44 = call i64 @TYPE_CODE(%struct.type* %43)
  %45 = load i64, i64* @TYPE_CODE_INT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %134

47:                                               ; preds = %42
  %48 = load %struct.type*, %struct.type** %15, align 8
  %49 = call i64 @TYPE_CODE(%struct.type* %48)
  %50 = load i64, i64* @TYPE_CODE_STRING, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.type*, %struct.type** %15, align 8
  %54 = call i64 @TYPE_CODE(%struct.type* %53)
  %55 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %118

57:                                               ; preds = %52, %47
  %58 = load %struct.value*, %struct.value** %5, align 8
  %59 = call i32 @value_as_long(%struct.value* %58)
  %60 = call i32 @longest_to_int(i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.type*, %struct.type** %15, align 8
  %62 = call i32 @TYPE_LENGTH(%struct.type* %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i64 @alloca(i32 %65)
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %12, align 8
  %68 = load %struct.type*, %struct.type** %15, align 8
  %69 = call i64 @TYPE_CODE(%struct.type* %68)
  %70 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %92

72:                                               ; preds = %57
  %73 = load %struct.type*, %struct.type** %15, align 8
  %74 = load %struct.value*, %struct.value** %6, align 8
  %75 = call i32 @VALUE_CONTENTS(%struct.value* %74)
  %76 = call i64 @unpack_long(%struct.type* %73, i32 %75)
  %77 = trunc i64 %76 to i8
  store i8 %77, i8* %13, align 1
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %88, %72
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i8, i8* %13, align 1
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  store i8 %83, i8* %87, align 1
  br label %88

88:                                               ; preds = %82
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %78

91:                                               ; preds = %78
  br label %112

92:                                               ; preds = %57
  store i32 0, i32* %11, align 4
  br label %93

93:                                               ; preds = %108, %92
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp slt i32 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i8*, i8** %12, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* %9, align 4
  %101 = mul nsw i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %98, i64 %102
  %104 = load %struct.value*, %struct.value** %6, align 8
  %105 = call i32 @VALUE_CONTENTS(%struct.value* %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @memcpy(i8* %103, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %97
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %93

111:                                              ; preds = %93
  br label %112

112:                                              ; preds = %111, %91
  %113 = load i8*, i8** %12, align 8
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = mul nsw i32 %114, %115
  %117 = call %struct.value* @value_string(i8* %113, i32 %116)
  store %struct.value* %117, %struct.value** %7, align 8
  br label %133

118:                                              ; preds = %52
  %119 = load %struct.type*, %struct.type** %15, align 8
  %120 = call i64 @TYPE_CODE(%struct.type* %119)
  %121 = load i64, i64* @TYPE_CODE_BITSTRING, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.type*, %struct.type** %15, align 8
  %125 = call i64 @TYPE_CODE(%struct.type* %124)
  %126 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %123, %118
  %129 = call i32 @error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %132

130:                                              ; preds = %123
  %131 = call i32 @error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %128
  br label %133

133:                                              ; preds = %132, %112
  br label %241

134:                                              ; preds = %42
  %135 = load %struct.type*, %struct.type** %14, align 8
  %136 = call i64 @TYPE_CODE(%struct.type* %135)
  %137 = load i64, i64* @TYPE_CODE_STRING, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %144, label %139

139:                                              ; preds = %134
  %140 = load %struct.type*, %struct.type** %14, align 8
  %141 = call i64 @TYPE_CODE(%struct.type* %140)
  %142 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %213

144:                                              ; preds = %139, %134
  %145 = load %struct.type*, %struct.type** %15, align 8
  %146 = call i64 @TYPE_CODE(%struct.type* %145)
  %147 = load i64, i64* @TYPE_CODE_STRING, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %144
  %150 = load %struct.type*, %struct.type** %15, align 8
  %151 = call i64 @TYPE_CODE(%struct.type* %150)
  %152 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  %155 = call i32 @error(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %149, %144
  %157 = load %struct.type*, %struct.type** %14, align 8
  %158 = call i32 @TYPE_LENGTH(%struct.type* %157)
  store i32 %158, i32* %8, align 4
  %159 = load %struct.type*, %struct.type** %15, align 8
  %160 = call i32 @TYPE_LENGTH(%struct.type* %159)
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %9, align 4
  %163 = add nsw i32 %161, %162
  %164 = call i64 @alloca(i32 %163)
  %165 = inttoptr i64 %164 to i8*
  store i8* %165, i8** %12, align 8
  %166 = load %struct.type*, %struct.type** %14, align 8
  %167 = call i64 @TYPE_CODE(%struct.type* %166)
  %168 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %156
  %171 = load %struct.type*, %struct.type** %14, align 8
  %172 = load %struct.value*, %struct.value** %5, align 8
  %173 = call i32 @VALUE_CONTENTS(%struct.value* %172)
  %174 = call i64 @unpack_long(%struct.type* %171, i32 %173)
  %175 = trunc i64 %174 to i8
  %176 = load i8*, i8** %12, align 8
  store i8 %175, i8* %176, align 1
  br label %183

177:                                              ; preds = %156
  %178 = load i8*, i8** %12, align 8
  %179 = load %struct.value*, %struct.value** %5, align 8
  %180 = call i32 @VALUE_CONTENTS(%struct.value* %179)
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @memcpy(i8* %178, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %170
  %184 = load %struct.type*, %struct.type** %15, align 8
  %185 = call i64 @TYPE_CODE(%struct.type* %184)
  %186 = load i64, i64* @TYPE_CODE_CHAR, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %198

188:                                              ; preds = %183
  %189 = load %struct.type*, %struct.type** %15, align 8
  %190 = load %struct.value*, %struct.value** %6, align 8
  %191 = call i32 @VALUE_CONTENTS(%struct.value* %190)
  %192 = call i64 @unpack_long(%struct.type* %189, i32 %191)
  %193 = trunc i64 %192 to i8
  %194 = load i8*, i8** %12, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %194, i64 %196
  store i8 %193, i8* %197, align 1
  br label %207

198:                                              ; preds = %183
  %199 = load i8*, i8** %12, align 8
  %200 = load i32, i32* %8, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %199, i64 %201
  %203 = load %struct.value*, %struct.value** %6, align 8
  %204 = call i32 @VALUE_CONTENTS(%struct.value* %203)
  %205 = load i32, i32* %9, align 4
  %206 = call i32 @memcpy(i8* %202, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %198, %188
  %208 = load i8*, i8** %12, align 8
  %209 = load i32, i32* %8, align 4
  %210 = load i32, i32* %9, align 4
  %211 = add nsw i32 %209, %210
  %212 = call %struct.value* @value_string(i8* %208, i32 %211)
  store %struct.value* %212, %struct.value** %7, align 8
  br label %240

213:                                              ; preds = %139
  %214 = load %struct.type*, %struct.type** %14, align 8
  %215 = call i64 @TYPE_CODE(%struct.type* %214)
  %216 = load i64, i64* @TYPE_CODE_BITSTRING, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %223, label %218

218:                                              ; preds = %213
  %219 = load %struct.type*, %struct.type** %14, align 8
  %220 = call i64 @TYPE_CODE(%struct.type* %219)
  %221 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %237

223:                                              ; preds = %218, %213
  %224 = load %struct.type*, %struct.type** %15, align 8
  %225 = call i64 @TYPE_CODE(%struct.type* %224)
  %226 = load i64, i64* @TYPE_CODE_BITSTRING, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load %struct.type*, %struct.type** %15, align 8
  %230 = call i64 @TYPE_CODE(%struct.type* %229)
  %231 = load i64, i64* @TYPE_CODE_BOOL, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = call i32 @error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %228, %223
  %236 = call i32 @error(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %239

237:                                              ; preds = %218
  %238 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %239

239:                                              ; preds = %237, %235
  br label %240

240:                                              ; preds = %239, %207
  br label %241

241:                                              ; preds = %240, %133
  %242 = load %struct.value*, %struct.value** %7, align 8
  ret %struct.value* %242
}

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @COERCE_VARYING_ARRAY(%struct.value*, %struct.type*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @longest_to_int(i32) #1

declare dso_local i32 @value_as_long(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @unpack_long(%struct.type*, i32) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local %struct.value* @value_string(i8*, i32) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
