; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_osfp.c_get_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s:%d empty %s\0A\00", align 1
@T_MSS = common dso_local global i32 0, align 4
@T_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s:%d long '%c' %s\0A\00", align 1
@T_DC = common dso_local global i32 0, align 4
@T_MOD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s:%d modulus %s must have a value\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s:%d does not allow %c' %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"%s:%d non-digit character in %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s:%d %s overflowed\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s:%d %s value %ld > %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_int(i8** %0, i64* %1, i32* %2, i32* %3, i8* %4, i32 %5, i32 %6, i8* %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i8** %0, i8*** %11, align 8
  store i64* %1, i64** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i32 %8, i32* %19, align 4
  store i64 0, i64* %23, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %9
  %27 = load i32*, i32** %14, align 8
  store i32 0, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %9
  %29 = load i32*, i32** %13, align 8
  store i32 0, i32* %29, align 4
  %30 = load i8**, i8*** %11, align 8
  %31 = load i64*, i64** %12, align 8
  %32 = call i8* @get_field(i8** %30, i64* %31, i32* %20)
  store i8* %32, i8** %22, align 8
  %33 = load i8*, i8** %22, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 1, i32* %10, align 4
  br label %235

36:                                               ; preds = %28
  %37 = load i32, i32* %20, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @stderr, align 4
  %41 = load i8*, i8** %18, align 8
  %42 = load i32, i32* %19, align 4
  %43 = load i8*, i8** %15, align 8
  %44 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %41, i32 %42, i8* %43)
  store i32 1, i32* %10, align 4
  br label %235

45:                                               ; preds = %36
  store i32 0, i32* %21, align 4
  %46 = load i8*, i8** %22, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 37
  br i1 %49, label %65, label %50

50:                                               ; preds = %45
  %51 = load i8*, i8** %22, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 83
  br i1 %54, label %65, label %55

55:                                               ; preds = %50
  %56 = load i8*, i8** %22, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 84
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load i8*, i8** %22, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp eq i32 %63, 42
  br i1 %64, label %65, label %168

65:                                               ; preds = %60, %55, %50, %45
  %66 = load i32, i32* %20, align 4
  %67 = icmp sge i32 %66, 1
  br i1 %67, label %68, label %168

68:                                               ; preds = %65
  %69 = load i8*, i8** %22, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  switch i32 %71, label %149 [
    i32 83, label %72
    i32 84, label %88
    i32 42, label %104
    i32 37, label %128
  ]

72:                                               ; preds = %68
  %73 = load i32*, i32** %14, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* @T_MSS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load i32, i32* @T_MSS, align 4
  %82 = load i32*, i32** %14, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %75, %72
  %84 = load i32, i32* %20, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %235

87:                                               ; preds = %83
  br label %149

88:                                               ; preds = %68
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %88
  %92 = load i32, i32* %16, align 4
  %93 = load i32, i32* @T_MTU, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  %97 = load i32, i32* @T_MTU, align 4
  %98 = load i32*, i32** %14, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %96, %91, %88
  %100 = load i32, i32* %20, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 0, i32* %10, align 4
  br label %235

103:                                              ; preds = %99
  br label %149

104:                                              ; preds = %68
  %105 = load i32, i32* %20, align 4
  %106 = icmp ne i32 %105, 1
  br i1 %106, label %107, label %116

107:                                              ; preds = %104
  %108 = load i32, i32* @stderr, align 4
  %109 = load i8*, i8** %18, align 8
  %110 = load i32, i32* %19, align 4
  %111 = load i8*, i8** %22, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8*, i8** %15, align 8
  %115 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %109, i32 %110, i32 %113, i8* %114)
  store i32 1, i32* %10, align 4
  br label %235

116:                                              ; preds = %104
  %117 = load i32*, i32** %14, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %116
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* @T_DC, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* @T_DC, align 4
  %126 = load i32*, i32** %14, align 8
  store i32 %125, i32* %126, align 4
  store i32 0, i32* %10, align 4
  br label %235

127:                                              ; preds = %119, %116
  br label %128

128:                                              ; preds = %68, %127
  %129 = load i32*, i32** %14, align 8
  %130 = icmp ne i32* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @T_MOD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load i32, i32* @T_MOD, align 4
  %138 = load i32*, i32** %14, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %131, %128
  %140 = load i32, i32* %20, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* @stderr, align 4
  %144 = load i8*, i8** %18, align 8
  %145 = load i32, i32* %19, align 4
  %146 = load i8*, i8** %15, align 8
  %147 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %144, i32 %145, i8* %146)
  store i32 1, i32* %10, align 4
  br label %235

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %68, %148, %103, %87
  %150 = load i32*, i32** %14, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %149
  %153 = load i32*, i32** %14, align 8
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %152, %149
  %157 = load i32, i32* @stderr, align 4
  %158 = load i8*, i8** %18, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i8*, i8** %22, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load i8*, i8** %15, align 8
  %164 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %158, i32 %159, i32 %162, i8* %163)
  store i32 1, i32* %10, align 4
  br label %235

165:                                              ; preds = %152
  %166 = load i32, i32* %21, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %21, align 4
  br label %168

168:                                              ; preds = %165, %65, %60
  br label %169

169:                                              ; preds = %215, %168
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %20, align 4
  %172 = icmp slt i32 %170, %171
  br i1 %172, label %173, label %218

173:                                              ; preds = %169
  %174 = load i8*, i8** %22, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp slt i32 %179, 48
  br i1 %180, label %189, label %181

181:                                              ; preds = %173
  %182 = load i8*, i8** %22, align 8
  %183 = load i32, i32* %21, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i8, i8* %182, i64 %184
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp sgt i32 %187, 57
  br i1 %188, label %189, label %195

189:                                              ; preds = %181, %173
  %190 = load i32, i32* @stderr, align 4
  %191 = load i8*, i8** %18, align 8
  %192 = load i32, i32* %19, align 4
  %193 = load i8*, i8** %15, align 8
  %194 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %190, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %191, i32 %192, i8* %193)
  store i32 1, i32* %10, align 4
  br label %235

195:                                              ; preds = %181
  %196 = load i64, i64* %23, align 8
  %197 = mul nsw i64 %196, 10
  %198 = load i8*, i8** %22, align 8
  %199 = load i32, i32* %21, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %198, i64 %200
  %202 = load i8, i8* %201, align 1
  %203 = sext i8 %202 to i64
  %204 = add nsw i64 %197, %203
  %205 = sub nsw i64 %204, 48
  store i64 %205, i64* %23, align 8
  %206 = load i64, i64* %23, align 8
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %195
  %209 = load i32, i32* @stderr, align 4
  %210 = load i8*, i8** %18, align 8
  %211 = load i32, i32* %19, align 4
  %212 = load i8*, i8** %15, align 8
  %213 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %209, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %210, i32 %211, i8* %212)
  store i32 1, i32* %10, align 4
  br label %235

214:                                              ; preds = %195
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %21, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %21, align 4
  br label %169

218:                                              ; preds = %169
  %219 = load i64, i64* %23, align 8
  %220 = load i32, i32* %17, align 4
  %221 = sext i32 %220 to i64
  %222 = icmp sgt i64 %219, %221
  br i1 %222, label %223, label %231

223:                                              ; preds = %218
  %224 = load i32, i32* @stderr, align 4
  %225 = load i8*, i8** %18, align 8
  %226 = load i32, i32* %19, align 4
  %227 = load i8*, i8** %15, align 8
  %228 = load i64, i64* %23, align 8
  %229 = load i32, i32* %17, align 4
  %230 = call i32 (i32, i8*, i8*, i32, ...) @fprintf(i32 %224, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i8* %225, i32 %226, i8* %227, i64 %228, i32 %229)
  store i32 1, i32* %10, align 4
  br label %235

231:                                              ; preds = %218
  %232 = load i64, i64* %23, align 8
  %233 = trunc i64 %232 to i32
  %234 = load i32*, i32** %13, align 8
  store i32 %233, i32* %234, align 4
  store i32 0, i32* %10, align 4
  br label %235

235:                                              ; preds = %231, %223, %208, %189, %156, %142, %124, %107, %102, %86, %39, %35
  %236 = load i32, i32* %10, align 4
  ret i32 %236
}

declare dso_local i8* @get_field(i8**, i64*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
