; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_tmpl_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8*, i64, i32, i32, %struct.vector_str, %struct.vector_str }
%struct.vector_str = type { i64, i32* }

@READ_TMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c">\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c" >\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c", \00", align 1
@CPP_DEMANGLE_TRY_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_tmpl_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_tmpl_args(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca %struct.vector_str*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
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
  br label %153

20:                                               ; preds = %12
  %21 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %22 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %22, align 8
  %25 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %26 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %25, i32 0, i32 2
  %27 = load i32, i32* @READ_TMPL, align 4
  %28 = call i32 @vector_read_cmd_push(i32* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %153

31:                                               ; preds = %20
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %153

36:                                               ; preds = %31
  store i64 0, i64* %7, align 8
  %37 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %38 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %43 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %42, i32 0, i32 5
  br label %47

44:                                               ; preds = %36
  %45 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %46 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %45, i32 0, i32 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi %struct.vector_str* [ %43, %41 ], [ %46, %44 ]
  store %struct.vector_str* %48, %struct.vector_str** %4, align 8
  br label %49

49:                                               ; preds = %148, %47
  %50 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %51 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %6, align 8
  %53 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %54 = call i32 @cpp_demangle_read_tmpl_arg(%struct.cpp_demangle_data* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %153

57:                                               ; preds = %49
  %58 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %61 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub i64 %62, 1
  %64 = trunc i64 %63 to i32
  %65 = call i8* @vector_str_substr(%struct.vector_str* %58, i64 %59, i32 %64, i64* %5)
  store i8* %65, i8** %9, align 8
  %66 = icmp eq i8* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %153

68:                                               ; preds = %57
  %69 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %70 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %69, i32 0, i32 3
  %71 = load i8*, i8** %9, align 8
  %72 = load i64, i64* %5, align 8
  %73 = call i32 @vector_str_find(i32* %70, i8* %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %68
  %76 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %77 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %76, i32 0, i32 3
  %78 = load i8*, i8** %9, align 8
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @vector_str_push(i32* %77, i8* %78, i64 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %9, align 8
  %84 = call i32 @free(i8* %83)
  store i32 0, i32* %2, align 4
  br label %153

85:                                               ; preds = %75, %68
  %86 = load i8*, i8** %9, align 8
  %87 = call i32 @free(i8* %86)
  %88 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %89 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load i8, i8* %90, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 69
  br i1 %93, label %94, label %128

94:                                               ; preds = %85
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %96 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %96, align 8
  %99 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %100 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %8, align 8
  %102 = load i64, i64* %8, align 8
  %103 = icmp ugt i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = call i32 @assert(i32 %104)
  %106 = load %struct.vector_str*, %struct.vector_str** %4, align 8
  %107 = getelementptr inbounds %struct.vector_str, %struct.vector_str* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i64, i64* %8, align 8
  %110 = sub i64 %109, 1
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strncmp(i32 %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %94
  %116 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %117 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  store i32 0, i32* %2, align 4
  br label %153

120:                                              ; preds = %115
  br label %127

121:                                              ; preds = %94
  %122 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %123 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %122, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %153

126:                                              ; preds = %121
  br label %127

127:                                              ; preds = %126, %120
  br label %149

128:                                              ; preds = %85
  %129 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %130 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %129, i32 0, i32 0
  %131 = load i8*, i8** %130, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 73
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %137 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %136, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 2)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  store i32 0, i32* %2, align 4
  br label %153

140:                                              ; preds = %135, %128
  br label %141

141:                                              ; preds = %140
  %142 = load i64, i64* %7, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %7, align 8
  %144 = load i32, i32* @CPP_DEMANGLE_TRY_LIMIT, align 4
  %145 = sext i32 %144 to i64
  %146 = icmp ugt i64 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %141
  store i32 0, i32* %2, align 4
  br label %153

148:                                              ; preds = %141
  br label %49

149:                                              ; preds = %127
  %150 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %151 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %150, i32 0, i32 2
  %152 = call i32 @vector_read_cmd_pop(i32* %151)
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %149, %147, %139, %125, %119, %82, %67, %56, %35, %30, %19
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i32 @vector_read_cmd_push(i32*, i32) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @cpp_demangle_read_tmpl_arg(%struct.cpp_demangle_data*) #1

declare dso_local i8* @vector_str_substr(%struct.vector_str*, i64, i32, i64*) #1

declare dso_local i32 @vector_str_find(i32*, i8*, i64) #1

declare dso_local i32 @vector_str_push(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @vector_read_cmd_pop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
