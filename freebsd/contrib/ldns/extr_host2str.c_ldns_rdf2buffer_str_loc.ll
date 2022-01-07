; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_loc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/extr_host2str.c_ldns_rdf2buffer_str_loc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LDNS_STATUS_WIRE_RDATA_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%02u %02u %0.3f %c \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"m \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_rdf2buffer_str_loc(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = call i32 @ldns_power(i32 2, i32 31)
  store i32 %19, i32* %18, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @ldns_rdf_size(i32* %20)
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %24, i32* %3, align 4
  br label %175

25:                                               ; preds = %2
  %26 = load i32*, i32** %5, align 8
  %27 = call i64* @ldns_rdf_data(i32* %26)
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %171

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @ldns_rdf_size(i32* %33)
  %35 = icmp slt i32 %34, 16
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @LDNS_STATUS_WIRE_RDATA_ERR, align 4
  store i32 %37, i32* %3, align 4
  br label %175

38:                                               ; preds = %32
  %39 = load i32*, i32** %5, align 8
  %40 = call i64* @ldns_rdf_data(i32* %39)
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %7, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i64* @ldns_rdf_data(i32* %43)
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %8, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = call i64* @ldns_rdf_data(i32* %47)
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %9, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = call i64* @ldns_rdf_data(i32* %51)
  %53 = getelementptr inbounds i64, i64* %52, i64 4
  %54 = call i32 @ldns_read_uint32(i64* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = call i64* @ldns_rdf_data(i32* %55)
  %57 = getelementptr inbounds i64, i64* %56, i64 8
  %58 = call i32 @ldns_read_uint32(i64* %57)
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %5, align 8
  %60 = call i64* @ldns_rdf_data(i32* %59)
  %61 = getelementptr inbounds i64, i64* %60, i64 12
  %62 = call i32 @ldns_read_uint32(i64* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %18, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %38
  store i8 78, i8* %13, align 1
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %18, align 4
  %69 = sub nsw i32 %67, %68
  store i32 %69, i32* %11, align 4
  br label %74

70:                                               ; preds = %38
  store i8 83, i8* %13, align 1
  %71 = load i32, i32* %18, align 4
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %71, %72
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %66
  %75 = load i32, i32* %11, align 4
  %76 = sdiv i32 %75, 3600000
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %11, align 4
  %78 = srem i32 %77, 3600000
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sdiv i32 %79, 60000
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %11, align 4
  %82 = srem i32 %81, 60000
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = sitofp i32 %83 to double
  %85 = fdiv double %84, 1.000000e+03
  store double %85, double* %17, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %16, align 4
  %89 = load double, double* %17, align 8
  %90 = load i8, i8* %13, align 1
  %91 = sext i8 %90 to i32
  %92 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %86, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %88, double %89, i32 %91)
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %18, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %74
  store i8 69, i8* %14, align 1
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %18, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %10, align 4
  br label %104

100:                                              ; preds = %74
  store i8 87, i8* %14, align 1
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 %101, %102
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* %10, align 4
  %106 = sdiv i32 %105, 3600000
  store i32 %106, i32* %15, align 4
  %107 = load i32, i32* %10, align 4
  %108 = srem i32 %107, 3600000
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sdiv i32 %109, 60000
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %10, align 4
  %112 = srem i32 %111, 60000
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sitofp i32 %113 to double
  %115 = fdiv double %114, 1.000000e+03
  store double %115, double* %17, align 8
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load i32, i32* %16, align 4
  %119 = load double, double* %17, align 8
  %120 = load i8, i8* %14, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %116, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %117, i32 %118, double %119, i32 %121)
  %123 = load i32, i32* %12, align 4
  %124 = sitofp i32 %123 to double
  %125 = fdiv double %124, 1.000000e+02
  store double %125, double* %17, align 8
  %126 = load double, double* %17, align 8
  %127 = fsub double %126, 1.000000e+05
  store double %127, double* %17, align 8
  %128 = load i32, i32* %12, align 4
  %129 = srem i32 %128, 100
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %104
  %132 = load i32*, i32** %4, align 8
  %133 = load double, double* %17, align 8
  %134 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %132, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %133)
  br label %139

135:                                              ; preds = %104
  %136 = load i32*, i32** %4, align 8
  %137 = load double, double* %17, align 8
  %138 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %137)
  br label %139

139:                                              ; preds = %135, %131
  %140 = load i32*, i32** %4, align 8
  %141 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %142 = load i32*, i32** %4, align 8
  %143 = load i64, i64* %7, align 8
  %144 = and i64 %143, 240
  %145 = ashr i64 %144, 4
  %146 = load i64, i64* %7, align 8
  %147 = and i64 %146, 15
  %148 = call i32 @loc_cm_print(i32* %142, i64 %145, i64 %147)
  %149 = load i32*, i32** %4, align 8
  %150 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32*, i32** %4, align 8
  %152 = load i64, i64* %8, align 8
  %153 = and i64 %152, 240
  %154 = ashr i64 %153, 4
  %155 = load i64, i64* %8, align 8
  %156 = and i64 %155, 15
  %157 = call i32 @loc_cm_print(i32* %151, i64 %154, i64 %156)
  %158 = load i32*, i32** %4, align 8
  %159 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %160 = load i32*, i32** %4, align 8
  %161 = load i64, i64* %9, align 8
  %162 = and i64 %161, 240
  %163 = ashr i64 %162, 4
  %164 = load i64, i64* %9, align 8
  %165 = and i64 %164, 15
  %166 = call i32 @loc_cm_print(i32* %160, i64 %163, i64 %165)
  %167 = load i32*, i32** %4, align 8
  %168 = call i32 (i32*, i8*, ...) @ldns_buffer_printf(i32* %167, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32*, i32** %4, align 8
  %170 = call i32 @ldns_buffer_status(i32* %169)
  store i32 %170, i32* %3, align 4
  br label %175

171:                                              ; preds = %25
  %172 = load i32*, i32** %4, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @ldns_rdf2buffer_str_hex(i32* %172, i32* %173)
  store i32 %174, i32* %3, align 4
  br label %175

175:                                              ; preds = %171, %139, %36, %23
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i32 @ldns_power(i32, i32) #1

declare dso_local i32 @ldns_rdf_size(i32*) #1

declare dso_local i64* @ldns_rdf_data(i32*) #1

declare dso_local i32 @ldns_read_uint32(i64*) #1

declare dso_local i32 @ldns_buffer_printf(i32*, i8*, ...) #1

declare dso_local i32 @loc_cm_print(i32*, i64, i64) #1

declare dso_local i32 @ldns_buffer_status(i32*) #1

declare dso_local i32 @ldns_rdf2buffer_str_hex(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
