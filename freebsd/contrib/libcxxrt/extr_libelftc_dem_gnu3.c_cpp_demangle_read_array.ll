; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_array.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_array(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %11 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %12 = icmp eq %struct.cpp_demangle_data* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %15, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %228

22:                                               ; preds = %13
  %23 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %24 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 95
  br i1 %28, label %29, label %49

29:                                               ; preds = %22
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %31, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %228

38:                                               ; preds = %29
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %39, i32 0)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %228

43:                                               ; preds = %38
  %44 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %45 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %44, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %228

48:                                               ; preds = %43
  br label %227

49:                                               ; preds = %22
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i8, i8* %52, align 1
  %54 = call i64 @ELFTC_ISDIGIT(i8 signext %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %124

56:                                               ; preds = %49
  %57 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %58 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %67, %56
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %62 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @ELFTC_ISDIGIT(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %69 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %71, i8** %69, align 8
  br label %60

72:                                               ; preds = %60
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %74 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 95
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %2, align 4
  br label %228

80:                                               ; preds = %72
  %81 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %82 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = ptrtoint i8* %83 to i64
  %86 = ptrtoint i8* %84 to i64
  %87 = sub i64 %85, %86
  store i64 %87, i64* %5, align 8
  %88 = load i64, i64* %5, align 8
  %89 = icmp ugt i64 %88, 0
  %90 = zext i1 %89 to i32
  %91 = call i32 @assert(i32 %90)
  %92 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %93 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %93, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %228

100:                                              ; preds = %80
  %101 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %102 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %101, i32 0)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %228

105:                                              ; preds = %100
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %107 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  store i32 0, i32* %2, align 4
  br label %228

110:                                              ; preds = %105
  %111 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = load i64, i64* %5, align 8
  %114 = trunc i64 %113 to i32
  %115 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %111, i8* %112, i32 %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  store i32 0, i32* %2, align 4
  br label %228

118:                                              ; preds = %110
  %119 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %120 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  store i32 0, i32* %2, align 4
  br label %228

123:                                              ; preds = %118
  br label %226

124:                                              ; preds = %49
  %125 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %126 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %7, align 8
  %129 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %130 = call i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %124
  store i32 0, i32* %2, align 4
  br label %228

133:                                              ; preds = %124
  %134 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %135 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %134, i32 0, i32 1
  %136 = load i64, i64* %7, align 8
  %137 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %138 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %140, 1
  %142 = trunc i64 %141 to i32
  %143 = call i8* @vector_str_substr(%struct.TYPE_3__* %135, i64 %136, i32 %142, i64* %6)
  store i8* %143, i8** %10, align 8
  %144 = icmp eq i8* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 0, i32* %2, align 4
  br label %228

146:                                              ; preds = %133
  %147 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %148 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %8, align 8
  %151 = load i64, i64* %7, align 8
  store i64 %151, i64* %4, align 8
  br label %152

152:                                              ; preds = %165, %146
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* %8, align 8
  %155 = icmp ult i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %152
  %157 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %158 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %157, i32 0, i32 1
  %159 = call i32 @vector_str_pop(%struct.TYPE_3__* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i8*, i8** %10, align 8
  %163 = call i32 @free(i8* %162)
  store i32 0, i32* %2, align 4
  br label %228

164:                                              ; preds = %156
  br label %165

165:                                              ; preds = %164
  %166 = load i64, i64* %4, align 8
  %167 = add i64 %166, 1
  store i64 %167, i64* %4, align 8
  br label %152

168:                                              ; preds = %152
  %169 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %170 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 95
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i8*, i8** %10, align 8
  %177 = call i32 @free(i8* %176)
  store i32 0, i32* %2, align 4
  br label %228

178:                                              ; preds = %168
  %179 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %180 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %179, i32 0, i32 0
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %180, align 8
  %183 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %184 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %178
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @free(i8* %190)
  store i32 0, i32* %2, align 4
  br label %228

192:                                              ; preds = %178
  %193 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %194 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %193, i32 0)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %199, label %196

196:                                              ; preds = %192
  %197 = load i8*, i8** %10, align 8
  %198 = call i32 @free(i8* %197)
  store i32 0, i32* %2, align 4
  br label %228

199:                                              ; preds = %192
  %200 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %201 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %200, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %199
  %204 = load i8*, i8** %10, align 8
  %205 = call i32 @free(i8* %204)
  store i32 0, i32* %2, align 4
  br label %228

206:                                              ; preds = %199
  %207 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %208 = load i8*, i8** %10, align 8
  %209 = load i64, i64* %6, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %207, i8* %208, i32 %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %206
  %214 = load i8*, i8** %10, align 8
  %215 = call i32 @free(i8* %214)
  store i32 0, i32* %2, align 4
  br label %228

216:                                              ; preds = %206
  %217 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %218 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %217, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %223, label %220

220:                                              ; preds = %216
  %221 = load i8*, i8** %10, align 8
  %222 = call i32 @free(i8* %221)
  store i32 0, i32* %2, align 4
  br label %228

223:                                              ; preds = %216
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @free(i8* %224)
  br label %226

226:                                              ; preds = %223, %123
  br label %227

227:                                              ; preds = %226, %48
  store i32 1, i32* %2, align 4
  br label %228

228:                                              ; preds = %227, %220, %213, %203, %196, %189, %175, %161, %145, %132, %122, %117, %109, %104, %99, %79, %47, %42, %37, %21
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i64 @ELFTC_ISDIGIT(i8 signext) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @cpp_demangle_read_expression(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_3__*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_3__*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
