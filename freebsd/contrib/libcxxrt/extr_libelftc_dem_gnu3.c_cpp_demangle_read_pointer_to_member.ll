; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_pointer_to_member.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_pointer_to_member.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i32, i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@READ_PTRMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"::*\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_pointer_to_member to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_pointer_to_member(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %11 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %12 = icmp eq %struct.cpp_demangle_data* %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 77
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %13, %1
  store i32 0, i32* %2, align 4
  br label %138

29:                                               ; preds = %20
  %30 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %31 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %7, align 8
  %34 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %35 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %34, i32 0)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %138

38:                                               ; preds = %29
  %39 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %40 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %39, i32 0, i32 4
  %41 = load i64, i64* %7, align 8
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %43 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub i64 %45, 1
  %47 = trunc i64 %46 to i32
  %48 = call i8* @vector_str_substr(%struct.TYPE_4__* %40, i64 %41, i32 %47, i64* %4)
  store i8* %48, i8** %10, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %138

51:                                               ; preds = %38
  store i32 0, i32* %9, align 4
  %52 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %53 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %5, align 8
  br label %57

57:                                               ; preds = %68, %51
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = icmp ult i64 %58, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %63 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %62, i32 0, i32 4
  %64 = call i32 @vector_str_pop(%struct.TYPE_4__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  br label %134

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %57

71:                                               ; preds = %57
  %72 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %73 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %72, i32 0, i32 2
  %74 = load i32, i32* @READ_PTRMEM, align 4
  %75 = call i32 @vector_read_cmd_push(i32* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %134

78:                                               ; preds = %71
  %79 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %80 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %79, i32 0, i32 3
  %81 = load i8*, i8** %10, align 8
  %82 = load i64, i64* %4, align 8
  %83 = call i32 @vector_str_push(%struct.TYPE_4__* %80, i8* %81, i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %78
  br label %127

86:                                               ; preds = %78
  %87 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %88 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %8, align 4
  %90 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %91 = call i32 @cpp_demangle_read_type(%struct.cpp_demangle_data* %90, i32 0)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %120

94:                                               ; preds = %86
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %97 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %95, %98
  br i1 %99, label %100, label %119

100:                                              ; preds = %94
  %101 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %102 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %100
  br label %120

105:                                              ; preds = %100
  %106 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %107 = load i8*, i8** %10, align 8
  %108 = load i64, i64* %4, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %106, i8* %107, i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %113, label %112

112:                                              ; preds = %105
  br label %120

113:                                              ; preds = %105
  %114 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %115 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  br label %120

118:                                              ; preds = %113
  br label %119

119:                                              ; preds = %118, %94
  store i32 1, i32* %9, align 4
  br label %120

120:                                              ; preds = %119, %117, %112, %104, %93
  %121 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %122 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %121, i32 0, i32 3
  %123 = call i32 @vector_str_pop(%struct.TYPE_4__* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %120
  br label %127

127:                                              ; preds = %126, %85
  %128 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %129 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %128, i32 0, i32 2
  %130 = call i32 @vector_read_cmd_pop(i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  br label %133

133:                                              ; preds = %132, %127
  br label %134

134:                                              ; preds = %133, %77, %66
  %135 = load i8*, i8** %10, align 8
  %136 = call i32 @free(i8* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %50, %37, %28
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @cpp_demangle_read_type(%struct.cpp_demangle_data*, i32) #1

declare dso_local i8* @vector_str_substr(%struct.TYPE_4__*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_pop(%struct.TYPE_4__*) #1

declare dso_local i32 @vector_read_cmd_push(i32*, i32) #1

declare dso_local i32 @vector_str_push(%struct.TYPE_4__*, i8*, i64) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @vector_read_cmd_pop(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
