; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_std.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_subst_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i64, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"std::\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_subst_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_subst_std(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca %struct.vector_str, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %10 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %11 = icmp eq %struct.cpp_demangle_data* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

13:                                               ; preds = %1
  %14 = call i32 @vector_str_init(%struct.vector_str* %5)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %118

17:                                               ; preds = %13
  store i8* null, i8** %9, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %19 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %113

22:                                               ; preds = %17
  %23 = call i32 @vector_str_push(%struct.vector_str* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %113

26:                                               ; preds = %22
  %27 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %28 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %28, align 8
  %31 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %32 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %37 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %36, i32 0, i32 3
  br label %41

38:                                               ; preds = %26
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %39, i32 0, i32 2
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi %struct.vector_str* [ %37, %35 ], [ %40, %38 ]
  store %struct.vector_str* %42, %struct.vector_str** %4, align 8
  %43 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %44 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %6, align 8
  %46 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %47 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  br label %113

50:                                               ; preds = %41
  %51 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %54 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %55, 1
  %57 = trunc i64 %56 to i32
  %58 = call i8* @vector_str_substr(%struct.vector_str* %51, i64 %52, i32 %57, i64* %7)
  store i8* %58, i8** %9, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %113

61:                                               ; preds = %50
  %62 = load i8*, i8** %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %62, i64 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %113

67:                                               ; preds = %61
  %68 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %69 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %68, %struct.vector_str* %5)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  br label %113

72:                                               ; preds = %67
  %73 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %74 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp eq i32 %77, 73
  br i1 %78, label %79, label %112

79:                                               ; preds = %72
  %80 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %81 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %6, align 8
  %83 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %84 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  br label %113

87:                                               ; preds = %79
  %88 = load i8*, i8** %9, align 8
  %89 = call i32 @free(i8* %88)
  %90 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %91 = load i64, i64* %6, align 8
  %92 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %93 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %94, 1
  %96 = trunc i64 %95 to i32
  %97 = call i8* @vector_str_substr(%struct.vector_str* %90, i64 %91, i32 %96, i64* %7)
  store i8* %97, i8** %9, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

99:                                               ; preds = %87
  br label %113

100:                                              ; preds = %87
  %101 = load i8*, i8** %9, align 8
  %102 = load i64, i64* %7, align 8
  %103 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %101, i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %113

106:                                              ; preds = %100
  %107 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %108 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %107, %struct.vector_str* %5)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %106
  br label %113

111:                                              ; preds = %106
  br label %112

112:                                              ; preds = %111, %72
  store i32 1, i32* %8, align 4
  br label %113

113:                                              ; preds = %112, %110, %105, %99, %86, %71, %66, %60, %49, %25, %21
  %114 = load i8*, i8** %9, align 8
  %115 = call i32 @free(i8* %114)
  %116 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %16, %12
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data*, %struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @vector_str_dest(%struct.vector_str*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
