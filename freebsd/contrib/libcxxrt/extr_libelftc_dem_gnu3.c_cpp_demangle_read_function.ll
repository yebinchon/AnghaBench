; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { float*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8** }
%struct.vector_type_qualifier = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1
@READ_PTRMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c")(\00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*, i32*, %struct.vector_type_qualifier*)* @cpp_demangle_read_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_function(%struct.cpp_demangle_data* %0, i32* %1, %struct.vector_type_qualifier* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpp_demangle_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vector_type_qualifier*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.vector_type_qualifier* %2, %struct.vector_type_qualifier** %7, align 8
  %12 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %13 = icmp eq %struct.cpp_demangle_data* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %16 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %15, i32 0, i32 0
  %17 = load float*, float** %16, align 8
  %18 = load float, float* %17, align 4
  %19 = fcmp une float %18, 7.000000e+01
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %22 = icmp eq %struct.vector_type_qualifier* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %20, %14, %3
  store i32 0, i32* %4, align 4
  br label %179

24:                                               ; preds = %20
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 0
  %27 = load float*, float** %26, align 8
  %28 = getelementptr inbounds float, float* %27, i32 1
  store float* %28, float** %26, align 8
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 0
  %31 = load float*, float** %30, align 8
  %32 = load float, float* %31, align 4
  %33 = fcmp oeq float %32, 8.900000e+01
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %6, align 8
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %41 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %40, i32 0, i32 0
  %42 = load float*, float** %41, align 8
  %43 = getelementptr inbounds float, float* %42, i32 1
  store float* %43, float** %41, align 8
  br label %44

44:                                               ; preds = %39, %24
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %46 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %45, i32 0)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %179

49:                                               ; preds = %44
  %50 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %51 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %50, i32 0, i32 0
  %52 = load float*, float** %51, align 8
  %53 = load float, float* %52, align 4
  %54 = fcmp une float %53, 6.900000e+01
  br i1 %54, label %55, label %174

55:                                               ; preds = %49
  %56 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %57 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %179

60:                                               ; preds = %55
  %61 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %62 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %61, i32 0, i32 1
  %63 = load i32, i32* @READ_PTRMEM, align 4
  %64 = call i32 @vector_read_cmd_find(i32* %62, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %108

66:                                               ; preds = %60
  %67 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %68 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %8, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %179

73:                                               ; preds = %66
  %74 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %75 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i8**, i8*** %76, align 8
  %78 = load i64, i64* %8, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8*, i8** %77, i64 %79
  %81 = load i8*, i8** %80, align 8
  store i8* %81, i8** %11, align 8
  %82 = load i8*, i8** %11, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  store i32 0, i32* %4, align 4
  br label %179

85:                                               ; preds = %73
  %86 = load i8*, i8** %11, align 8
  %87 = call i64 @strlen(i8* %86)
  store i64 %87, i64* %9, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %179

90:                                               ; preds = %85
  %91 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %92 = load i8*, i8** %11, align 8
  %93 = load i64, i64* %9, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %91, i8* %92, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %90
  store i32 0, i32* %4, align 4
  br label %179

98:                                               ; preds = %90
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %100 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %99, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %179

103:                                              ; preds = %98
  %104 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %105 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %122

108:                                              ; preds = %60
  %109 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %110 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %111 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %109, %struct.vector_type_qualifier* %110, i8* null)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  store i32 0, i32* %4, align 4
  br label %179

114:                                              ; preds = %108
  %115 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %116 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %115)
  %117 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %118 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %179

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121, %103
  %123 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %124 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %123, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %179

127:                                              ; preds = %122
  store i64 0, i64* %10, align 8
  br label %128

128:                                              ; preds = %147, %127
  %129 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %130 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %129, i32 0)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  store i32 0, i32* %4, align 4
  br label %179

133:                                              ; preds = %128
  %134 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %135 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %134, i32 0, i32 0
  %136 = load float*, float** %135, align 8
  %137 = load float, float* %136, align 4
  %138 = fcmp oeq float %137, 6.900000e+01
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %148

140:                                              ; preds = %133
  %141 = load i64, i64* %10, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %10, align 8
  %143 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp ugt i64 %141, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  store i32 0, i32* %4, align 4
  br label %179

147:                                              ; preds = %140
  br label %128

148:                                              ; preds = %139
  %149 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %150 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %149, i32 0, i32 1
  %151 = load i32, i32* @READ_PTRMEM, align 4
  %152 = call i32 @vector_read_cmd_find(i32* %150, i32 %151)
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %156 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %157 = call i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data* %155, %struct.vector_type_qualifier* %156, i8* null)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  store i32 0, i32* %4, align 4
  br label %179

160:                                              ; preds = %154
  %161 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %162 = call i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier* %161)
  %163 = load %struct.vector_type_qualifier*, %struct.vector_type_qualifier** %7, align 8
  %164 = call i32 @vector_type_qualifier_init(%struct.vector_type_qualifier* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %179

167:                                              ; preds = %160
  br label %168

168:                                              ; preds = %167, %148
  %169 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %170 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %169, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 1)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  store i32 0, i32* %4, align 4
  br label %179

173:                                              ; preds = %168
  br label %174

174:                                              ; preds = %173, %49
  %175 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %5, align 8
  %176 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %175, i32 0, i32 0
  %177 = load float*, float** %176, align 8
  %178 = getelementptr inbounds float, float* %177, i32 1
  store float* %178, float** %176, align 8
  store i32 1, i32* %4, align 4
  br label %179

179:                                              ; preds = %174, %172, %166, %159, %146, %132, %126, %120, %113, %102, %97, %89, %84, %72, %59, %48, %23
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @vector_read_cmd_find(i32*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @cpp_demangle_push_type_qualifier(%struct.cpp_demangle_data*, %struct.vector_type_qualifier*, i8*) #1

declare dso_local i32 @vector_type_qualifier_dest(%struct.vector_type_qualifier*) #1

declare dso_local i32 @vector_type_qualifier_init(%struct.vector_type_qualifier*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
