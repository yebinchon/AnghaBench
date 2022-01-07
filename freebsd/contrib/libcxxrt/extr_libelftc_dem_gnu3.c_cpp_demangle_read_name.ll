; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i64, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64 }

@.str = private unnamed_addr constant [9 x i8] c"operator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_name(%struct.cpp_demangle_data* %0) #0 {
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
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %14 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %135

20:                                               ; preds = %12
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %27 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %26, i32 0, i32 3
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %30 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %29, i32 0, i32 2
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi %struct.vector_str* [ %27, %25 ], [ %30, %28 ]
  store %struct.vector_str* %32, %struct.vector_str** %4, align 8
  store i8* null, i8** %9, align 8
  %33 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %34 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %47 [
    i32 83, label %38
    i32 78, label %41
    i32 90, label %44
  ]

38:                                               ; preds = %31
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = call i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data* %39)
  store i32 %40, i32* %2, align 4
  br label %135

41:                                               ; preds = %31
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %43 = call i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data* %42)
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %31
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %46 = call i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data* %45)
  store i32 %46, i32* %2, align 4
  br label %135

47:                                               ; preds = %31
  %48 = call i32 @vector_str_init(%struct.vector_str* %5)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %135

51:                                               ; preds = %47
  %52 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %53 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %55 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %56 = call i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  br label %130

59:                                               ; preds = %51
  %60 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %63 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 1
  %66 = trunc i64 %65 to i32
  %67 = call i8* @vector_str_substr(%struct.vector_str* %60, i64 %61, i32 %66, i64* %7)
  store i8* %67, i8** %9, align 8
  %68 = icmp eq i8* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %130

70:                                               ; preds = %59
  %71 = load i64, i64* %7, align 8
  %72 = icmp ugt i64 %71, 8
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i8*, i8** %9, align 8
  %75 = call i32* @strstr(i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 1, i32* %8, align 4
  br label %130

78:                                               ; preds = %73, %70
  %79 = load i8*, i8** %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %79, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %78
  br label %130

84:                                               ; preds = %78
  %85 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %86 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %85, %struct.vector_str* %5)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %130

89:                                               ; preds = %84
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %91 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 73
  br i1 %95, label %96, label %129

96:                                               ; preds = %89
  %97 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %98 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  store i64 %99, i64* %6, align 8
  %100 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %101 = call i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %96
  br label %130

104:                                              ; preds = %96
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  %107 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %110 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = sub i64 %111, 1
  %113 = trunc i64 %112 to i32
  %114 = call i8* @vector_str_substr(%struct.vector_str* %107, i64 %108, i32 %113, i64* %7)
  store i8* %114, i8** %9, align 8
  %115 = icmp eq i8* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %104
  br label %130

117:                                              ; preds = %104
  %118 = load i8*, i8** %9, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @vector_str_push(%struct.vector_str* %5, i8* %118, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  br label %130

123:                                              ; preds = %117
  %124 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %125 = call i32 @cpp_demangle_push_subst_v(%struct.cpp_demangle_data* %124, %struct.vector_str* %5)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %123
  br label %130

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128, %89
  store i32 1, i32* %8, align 4
  br label %130

130:                                              ; preds = %129, %127, %122, %116, %103, %88, %83, %77, %69, %58
  %131 = load i8*, i8** %9, align 8
  %132 = call i32 @free(i8* %131)
  %133 = call i32 @vector_str_dest(%struct.vector_str* %5)
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %130, %50, %44, %41, %38, %19
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i32 @cpp_demangle_read_subst(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_nested_name(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_read_local_name(%struct.cpp_demangle_data*) #1

declare dso_local i32 @vector_str_init(%struct.vector_str*) #1

declare dso_local i32 @cpp_demangle_read_uqname(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32* @strstr(i8*, i8*) #1

declare dso_local i32 @vector_str_push(%struct.vector_str*, i8*, i64) #1

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
