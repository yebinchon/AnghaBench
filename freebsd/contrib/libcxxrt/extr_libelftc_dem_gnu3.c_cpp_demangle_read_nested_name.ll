; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_nested_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_nested_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, i32, i32, i64, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [3 x i8] c"::\00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_nested_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca %struct.vector_str, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %11 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %12 = icmp eq %struct.cpp_demangle_data* %11, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 78
  br i1 %19, label %20, label %21

20:                                               ; preds = %13, %1
  store i32 0, i32* %2, align 4
  br label %207

21:                                               ; preds = %13
  %22 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %23 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %23, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %207

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %69, %30
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 114
  br i1 %37, label %52, label %38

38:                                               ; preds = %31
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 86
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %47 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 75
  br label %52

52:                                               ; preds = %45, %38, %31
  %53 = phi i1 [ true, %38 ], [ true, %31 ], [ %51, %45 ]
  br i1 %53, label %54, label %74

54:                                               ; preds = %52
  %55 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %56 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  switch i32 %59, label %69 [
    i32 114, label %60
    i32 86, label %63
    i32 75, label %66
  ]

60:                                               ; preds = %54
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %62 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  br label %69

63:                                               ; preds = %54
  %64 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %65 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %64, i32 0, i32 2
  store i32 1, i32* %65, align 4
  br label %69

66:                                               ; preds = %54
  %67 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %68 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %67, i32 0, i32 3
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %54, %66, %63, %60
  %70 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %71 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %71, align 8
  br label %31

74:                                               ; preds = %52
  %75 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %76 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %81 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %80, i32 0, i32 6
  br label %85

82:                                               ; preds = %74
  %83 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %84 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %83, i32 0, i32 5
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi %struct.vector_str* [ %81, %79 ], [ %84, %82 ]
  store %struct.vector_str* %86, %struct.vector_str** %4, align 8
  %87 = call i32 @vector_str_init(%struct.vector_str* %5)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %207

90:                                               ; preds = %85
  store i32 0, i32* %9, align 4
  store i64 0, i64* %6, align 8
  br label %91

91:                                               ; preds = %198, %90
  %92 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %93 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  store i64 %94, i64* %7, align 8
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %96 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  switch i32 %99, label %118 [
    i32 73, label %100
    i32 83, label %106
    i32 84, label %112
  ]

100:                                              ; preds = %91
  %101 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %102 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %204

105:                                              ; preds = %100
  br label %124

106:                                              ; preds = %91
  %107 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %108 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %204

111:                                              ; preds = %106
  br label %124

112:                                              ; preds = %91
  %113 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %114 = call i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %204

117:                                              ; preds = %112
  br label %124

118:                                              ; preds = %91
  %119 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %120 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %118
  br label %204

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %123, %117, %111, %105
  %125 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %126 = load i64, i64* %7, align 8
  %127 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %128 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = sub i64 %129, 1
  %131 = trunc i64 %130 to i32
  %132 = call i8* @vector_str_substr(%struct.vector_str* %125, i64 %126, i32 %131, i64* %8)
  store i8* %132, i8** %10, align 8
  %133 = icmp eq i8* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %124
  br label %204

135:                                              ; preds = %124
  %136 = load i8*, i8** %10, align 8
  %137 = load i64, i64* %8, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %136, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %135
  %142 = load i8*, i8** %10, align 8
  %143 = call i32 @free(i8* %142)
  br label %204

144:                                              ; preds = %135
  %145 = load i8*, i8** %10, align 8
  %146 = call i32 @free(i8* %145)
  %147 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %148 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %147, %struct.vector_str* %5)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %144
  br label %204

151:                                              ; preds = %144
  %152 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %153 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 69
  br i1 %157, label %158, label %159

158:                                              ; preds = %151
  br label %199

159:                                              ; preds = %151
  %160 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %161 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 73
  br i1 %165, label %166, label %190

166:                                              ; preds = %159
  %167 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %168 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %167, i32 0, i32 0
  %169 = load i8*, i8** %168, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp ne i32 %171, 67
  br i1 %172, label %173, label %190

173:                                              ; preds = %166
  %174 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %175 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp ne i32 %178, 68
  br i1 %179, label %180, label %190

180:                                              ; preds = %173
  %181 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %182 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %185, label %184

184:                                              ; preds = %180
  br label %204

185:                                              ; preds = %180
  %186 = call i32 @vector_str_push(%struct.vector_str* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

188:                                              ; preds = %185
  br label %204

189:                                              ; preds = %185
  br label %190

190:                                              ; preds = %189, %173, %166, %159
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, 1
  store i64 %193, i64* %6, align 8
  %194 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %195 = sext i32 %194 to i64
  %196 = icmp ugt i64 %192, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %191
  br label %204

198:                                              ; preds = %191
  br label %91

199:                                              ; preds = %158
  %200 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %201 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %201, align 8
  store i32 1, i32* %9, align 4
  br label %204

204:                                              ; preds = %199, %197, %188, %184, %150, %141, %134, %122, %116, %110, %104
  %205 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %206 = load i32, i32* %9, align 4
  store i32 %206, i32* %2, align 4
  br label %207

207:                                              ; preds = %204, %89, %29, %20
  %208 = load i32, i32* %2, align 4
  ret i32 %208
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_param(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
