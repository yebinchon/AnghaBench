; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_encapsulate_token.c_gss_encapsulate_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libgssapi/extr_gss_encapsulate_token.c_gss_encapsulate_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { i32, i8* }

@GSS_S_DEFECTIVE_TOKEN = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gss_encapsulate_token(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = call i32 @_gss_buffer_zero(%struct.TYPE_7__* %14)
  store i8* null, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %16

16:                                               ; preds = %203, %3
  %17 = load i32, i32* %13, align 4
  %18 = icmp slt i32 %17, 2
  br i1 %18, label %19, label %206

19:                                               ; preds = %16
  store i64 0, i64* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %8, align 8
  store i8 96, i8* %23, align 1
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 127
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %33, i32* %4, align 4
  br label %208

34:                                               ; preds = %25
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 2, %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ult i64 %44, 128
  br i1 %45, label %46, label %57

46:                                               ; preds = %34
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %10, align 8
  %51 = trunc i64 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %8, align 8
  store i8 %51, i8* %52, align 1
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %112

57:                                               ; preds = %34
  store i64 1, i64* %12, align 8
  %58 = load i64, i64* %10, align 8
  %59 = icmp uge i64 %58, 256
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i64, i64* %10, align 8
  %65 = icmp uge i64 %64, 65536
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i64, i64* %10, align 8
  %71 = icmp uge i64 %70, 16777216
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i64, i64* %12, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %12, align 8
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i8*, i8** %8, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load i64, i64* %12, align 8
  %80 = or i64 %79, 128
  %81 = trunc i64 %80 to i8
  %82 = load i8*, i8** %8, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %8, align 8
  store i8 %81, i8* %82, align 1
  br label %84

84:                                               ; preds = %78, %75
  %85 = load i64, i64* %9, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 4, %88
  %90 = mul i64 8, %89
  %91 = shl i64 %87, %90
  store i64 %91, i64* %11, align 8
  br label %92

92:                                               ; preds = %104, %84
  %93 = load i64, i64* %12, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = load i8*, i8** %8, align 8
  %97 = icmp ne i8* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i64, i64* %11, align 8
  %100 = lshr i64 %99, 24
  %101 = trunc i64 %100 to i8
  %102 = load i8*, i8** %8, align 8
  %103 = getelementptr inbounds i8, i8* %102, i32 1
  store i8* %103, i8** %8, align 8
  store i8 %101, i8* %102, align 1
  br label %104

104:                                              ; preds = %98, %95
  %105 = load i64, i64* %11, align 8
  %106 = shl i64 %105, 8
  store i64 %106, i64* %11, align 8
  %107 = load i64, i64* %9, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* %9, align 8
  %109 = load i64, i64* %12, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %12, align 8
  br label %92

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111, %54
  %113 = load i8*, i8** %8, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i8*, i8** %8, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %8, align 8
  store i8 6, i8* %116, align 1
  br label %118

118:                                              ; preds = %115, %112
  %119 = load i64, i64* %9, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %9, align 8
  %121 = load i8*, i8** %8, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %118
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = trunc i32 %126 to i8
  %128 = load i8*, i8** %8, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %8, align 8
  store i8 %127, i8* %128, align 1
  br label %130

130:                                              ; preds = %123, %118
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %150

135:                                              ; preds = %130
  %136 = load i8*, i8** %8, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @memcpy(i8* %136, i8* %139, i32 %142)
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  store i8* %149, i8** %8, align 8
  br label %150

150:                                              ; preds = %135, %130
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* %9, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %9, align 8
  %157 = load i8*, i8** %8, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %174

159:                                              ; preds = %150
  %160 = load i8*, i8** %8, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i8*, i8** %162, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memcpy(i8* %160, i8* %163, i32 %166)
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i8*, i8** %8, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %8, align 8
  br label %174

174:                                              ; preds = %159, %150
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* %9, align 8
  %180 = add i64 %179, %178
  store i64 %180, i64* %9, align 8
  %181 = load i32, i32* %13, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %174
  %184 = load i64, i64* %9, align 8
  %185 = trunc i64 %184 to i32
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 8
  %188 = load i64, i64* %9, align 8
  %189 = call i8* @malloc(i64 %188)
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 1
  store i8* %189, i8** %191, align 8
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = icmp ne i8* %194, null
  br i1 %195, label %198, label %196

196:                                              ; preds = %183
  %197 = load i32, i32* @GSS_S_DEFECTIVE_TOKEN, align 4
  store i32 %197, i32* %4, align 4
  br label %208

198:                                              ; preds = %183
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 1
  %201 = load i8*, i8** %200, align 8
  store i8* %201, i8** %8, align 8
  br label %202

202:                                              ; preds = %198, %174
  br label %203

203:                                              ; preds = %202
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %13, align 4
  br label %16

206:                                              ; preds = %16
  %207 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %206, %196, %32
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @_gss_buffer_zero(%struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
