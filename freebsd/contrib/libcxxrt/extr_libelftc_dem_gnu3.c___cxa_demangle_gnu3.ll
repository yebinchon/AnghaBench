; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c___cxa_demangle_gnu3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c___cxa_demangle_gnu3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, %struct.TYPE_3__, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"_GLOBAL__I_\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"global constructors keyed to %s\00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c" volatile\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" const\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" restrict\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__cxa_demangle_gnu3(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cpp_demangle_data, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* null, i8** %7, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %151

11:                                               ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp sgt i32 %14, 11
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @strncmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %34, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 19
  %23 = call i8* @malloc(i32 %22)
  store i8* %23, i8** %7, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i8* null, i8** %2, align 8
  br label %151

26:                                               ; preds = %20
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 19
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 11
  %32 = call i32 @snprintf(i8* %27, i32 %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %31)
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %2, align 8
  br label %151

34:                                               ; preds = %16, %11
  %35 = load i32, i32* %5, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %49, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 95
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 90
  br i1 %48, label %49, label %61

49:                                               ; preds = %43, %37, %34
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @cpp_demangle_data_init(%struct.cpp_demangle_data* %4, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i8* null, i8** %2, align 8
  br label %151

54:                                               ; preds = %49
  %55 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %4, i32 0)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  br label %148

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %60 = call i8* @vector_str_get_flat(%struct.TYPE_3__* %59, i64* null)
  store i8* %60, i8** %7, align 8
  br label %148

61:                                               ; preds = %43
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = call i32 @cpp_demangle_data_init(%struct.cpp_demangle_data* %4, i8* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  store i8* null, i8** %2, align 8
  br label %151

67:                                               ; preds = %61
  store i8* null, i8** %7, align 8
  %68 = call i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data* %4)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %67
  br label %148

71:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %72

72:                                               ; preds = %102, %71
  %73 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 64
  br i1 %83, label %84, label %92

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 64
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %103

92:                                               ; preds = %84, %78
  %93 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %4, i32 1)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %92
  br label %148

96:                                               ; preds = %92
  %97 = load i32, i32* %6, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %100 = icmp ugt i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %148

102:                                              ; preds = %96
  br label %72

103:                                              ; preds = %91, %72
  %104 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %103
  br label %148

109:                                              ; preds = %103
  %110 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %115 = call i32 @vector_str_push(%struct.TYPE_3__* %114, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %148

118:                                              ; preds = %113, %109
  %119 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %124 = call i32 @vector_str_push(%struct.TYPE_3__* %123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 9)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %122
  br label %148

127:                                              ; preds = %122, %118
  %128 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %133 = call i32 @vector_str_push(%struct.TYPE_3__* %132, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 6)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %131
  br label %148

136:                                              ; preds = %131, %127
  %137 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %136
  %141 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %142 = call i32 @vector_str_push(%struct.TYPE_3__* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 9)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %140
  br label %148

145:                                              ; preds = %140, %136
  %146 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %4, i32 0, i32 1
  %147 = call i8* @vector_str_get_flat(%struct.TYPE_3__* %146, i64* null)
  store i8* %147, i8** %7, align 8
  br label %148

148:                                              ; preds = %145, %144, %135, %126, %117, %108, %101, %95, %70, %58, %57
  %149 = call i32 @cpp_demangle_data_dest(%struct.cpp_demangle_data* %4)
  %150 = load i8*, i8** %7, align 8
  store i8* %150, i8** %2, align 8
  br label %151

151:                                              ; preds = %148, %66, %53, %26, %25, %10
  %152 = load i8*, i8** %2, align 8
  ret i8* %152
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @cpp_demangle_data_init(%struct.cpp_demangle_data*, i8*) #1

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32) #1

declare dso_local i8* @vector_str_get_flat(%struct.TYPE_3__*, i64*) #1

declare dso_local i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @cpp_demangle_data_dest(%struct.cpp_demangle_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
