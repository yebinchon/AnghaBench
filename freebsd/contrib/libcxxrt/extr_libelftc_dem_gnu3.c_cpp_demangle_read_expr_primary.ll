; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expr_primary.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libcxxrt/extr_libelftc_dem_gnu3.c_cpp_demangle_read_expr_primary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpp_demangle_data = type { i8* }

@.str = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@decode_fp_to_double = common dso_local global i32 0, align 4
@decode_fp_to_float80 = common dso_local global i32 0, align 4
@decode_fp_to_float = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@decode_fp_to_float128 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpp_demangle_data*)* @cpp_demangle_read_expr_primary to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpp_demangle_read_expr_primary(%struct.cpp_demangle_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpp_demangle_data*, align 8
  %4 = alloca i8*, align 8
  store %struct.cpp_demangle_data* %0, %struct.cpp_demangle_data** %3, align 8
  %5 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %6 = icmp eq %struct.cpp_demangle_data* %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %1
  %8 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %9 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %11, i8** %9, align 8
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %182

16:                                               ; preds = %7
  %17 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %18 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 95
  br i1 %22, label %23, label %53

23:                                               ; preds = %16
  %24 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %25 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 90
  br i1 %30, label %31, label %53

31:                                               ; preds = %23
  %32 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %33 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 2
  store i8* %35, i8** %33, align 8
  %36 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %37 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %182

43:                                               ; preds = %31
  %44 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %45 = call i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %182

48:                                               ; preds = %43
  %49 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %50 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %50, align 8
  store i32 1, i32* %2, align 4
  br label %182

53:                                               ; preds = %23, %16
  %54 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %55 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  switch i32 %58, label %181 [
    i32 98, label %59
    i32 100, label %90
    i32 101, label %98
    i32 102, label %106
    i32 103, label %114
    i32 105, label %122
    i32 106, label %122
    i32 108, label %122
    i32 109, label %122
    i32 110, label %122
    i32 115, label %122
    i32 116, label %122
    i32 120, label %122
    i32 121, label %122
  ]

59:                                               ; preds = %53
  %60 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %61 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp ne i32 %65, 69
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %182

68:                                               ; preds = %59
  %69 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %70 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %70, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %89 [
    i32 48, label %75
    i32 49, label %82
  ]

75:                                               ; preds = %68
  %76 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %77 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  store i8* %79, i8** %77, align 8
  %80 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %81 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  store i32 %81, i32* %2, align 4
  br label %182

82:                                               ; preds = %68
  %83 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %84 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 2
  store i8* %86, i8** %84, align 8
  %87 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %88 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  store i32 %88, i32* %2, align 4
  br label %182

89:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %182

90:                                               ; preds = %53
  %91 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %92 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %94, i8** %92, align 8
  %95 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %96 = load i32, i32* @decode_fp_to_double, align 4
  %97 = call i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data* %95, i32 %96)
  store i32 %97, i32* %2, align 4
  br label %182

98:                                               ; preds = %53
  %99 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %100 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %100, align 8
  %103 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %104 = load i32, i32* @decode_fp_to_float80, align 4
  %105 = call i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data* %103, i32 %104)
  store i32 %105, i32* %2, align 4
  br label %182

106:                                              ; preds = %53
  %107 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %108 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %108, align 8
  %111 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %112 = load i32, i32* @decode_fp_to_float, align 4
  %113 = call i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data* %111, i32 %112)
  store i32 %113, i32* %2, align 4
  br label %182

114:                                              ; preds = %53
  %115 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %116 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %118, i8** %116, align 8
  %119 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %120 = load i32, i32* @decode_fp_to_double, align 4
  %121 = call i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data* %119, i32 %120)
  store i32 %121, i32* %2, align 4
  br label %182

122:                                              ; preds = %53, %53, %53, %53, %53, %53, %53, %53, %53
  %123 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %124 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %124, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 110
  br i1 %129, label %130, label %140

130:                                              ; preds = %122
  %131 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %132 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %131, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  store i32 0, i32* %2, align 4
  br label %182

135:                                              ; preds = %130
  %136 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %137 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  br label %140

140:                                              ; preds = %135, %122
  %141 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %142 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %4, align 8
  br label %144

144:                                              ; preds = %159, %140
  %145 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %146 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %145, i32 0, i32 0
  %147 = load i8*, i8** %146, align 8
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp ne i32 %149, 69
  br i1 %150, label %151, label %164

151:                                              ; preds = %144
  %152 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %153 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = load i8, i8* %154, align 1
  %156 = call i32 @ELFTC_ISDIGIT(i8 signext %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %151
  store i32 0, i32* %2, align 4
  br label %182

159:                                              ; preds = %151
  %160 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %161 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %161, align 8
  br label %144

164:                                              ; preds = %144
  %165 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %166 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %165, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %166, align 8
  %169 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %170 = load i8*, i8** %4, align 8
  %171 = load %struct.cpp_demangle_data*, %struct.cpp_demangle_data** %3, align 8
  %172 = getelementptr inbounds %struct.cpp_demangle_data, %struct.cpp_demangle_data* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = ptrtoint i8* %173 to i64
  %176 = ptrtoint i8* %174 to i64
  %177 = sub i64 %175, %176
  %178 = sub nsw i64 %177, 1
  %179 = trunc i64 %178 to i32
  %180 = call i32 @cpp_demangle_push_str(%struct.cpp_demangle_data* %169, i8* %170, i32 %179)
  store i32 %180, i32* %2, align 4
  br label %182

181:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %181, %164, %158, %134, %114, %106, %98, %90, %89, %82, %75, %67, %48, %47, %42, %15
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @cpp_demangle_read_encoding(%struct.cpp_demangle_data*) #1

declare dso_local i32 @cpp_demangle_push_str(%struct.cpp_demangle_data*, i8*, i32) #1

declare dso_local i32 @cpp_demangle_push_fp(%struct.cpp_demangle_data*, i32) #1

declare dso_local i32 @ELFTC_ISDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
