; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_loc_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/sldns/extr_wire2str.c_sldns_wire2str_loc_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"%02u %02u %06.3f %c \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.2f\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%.0f\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"m \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sldns_wire2str_loc_scan(i64** %0, i64* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca double, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i64** %0, i64*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 -2147483648, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %25, 16
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %234

28:                                               ; preds = %4
  %29 = load i64**, i64*** %6, align 8
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %28
  %36 = load i64**, i64*** %6, align 8
  %37 = load i64*, i64** %7, align 8
  %38 = load i8**, i8*** %8, align 8
  %39 = load i64*, i64** %9, align 8
  %40 = call i32 @sldns_wire2str_hex_scan(i64** %36, i64* %37, i8** %38, i64* %39)
  store i32 %40, i32* %5, align 4
  br label %234

41:                                               ; preds = %28
  %42 = load i64**, i64*** %6, align 8
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %11, align 8
  %46 = load i64**, i64*** %6, align 8
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 2
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %12, align 8
  %50 = load i64**, i64*** %6, align 8
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 3
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %13, align 8
  %54 = load i64**, i64*** %6, align 8
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 4
  %57 = call i32 @sldns_read_uint32(i64* %56)
  store i32 %57, i32* %15, align 4
  %58 = load i64**, i64*** %6, align 8
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 8
  %61 = call i32 @sldns_read_uint32(i64* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i64**, i64*** %6, align 8
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 12
  %65 = call i32 @sldns_read_uint32(i64* %64)
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %22, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %41
  store i8 78, i8* %17, align 1
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %22, align 4
  %72 = sub nsw i32 %70, %71
  store i32 %72, i32* %15, align 4
  br label %77

73:                                               ; preds = %41
  store i8 83, i8* %17, align 1
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %15, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %73, %69
  %78 = load i32, i32* %15, align 4
  %79 = sdiv i32 %78, 3600000
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %15, align 4
  %81 = srem i32 %80, 3600000
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = sdiv i32 %82, 60000
  store i32 %83, i32* %20, align 4
  %84 = load i32, i32* %15, align 4
  %85 = srem i32 %84, 60000
  store i32 %85, i32* %15, align 4
  %86 = load i32, i32* %15, align 4
  %87 = sitofp i32 %86 to double
  %88 = fdiv double %87, 1.000000e+03
  store double %88, double* %21, align 8
  %89 = load i8**, i8*** %8, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = load i32, i32* %19, align 4
  %92 = load i32, i32* %20, align 4
  %93 = load double, double* %21, align 8
  %94 = load i8, i8* %17, align 1
  %95 = sext i8 %94 to i32
  %96 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %89, i64* %90, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92, double %93, i32 %95)
  %97 = load i32, i32* %23, align 4
  %98 = sext i32 %97 to i64
  %99 = add nsw i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %23, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %22, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %77
  store i8 69, i8* %18, align 1
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* %22, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %14, align 4
  br label %112

108:                                              ; preds = %77
  store i8 87, i8* %18, align 1
  %109 = load i32, i32* %22, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %108, %104
  %113 = load i32, i32* %14, align 4
  %114 = sdiv i32 %113, 3600000
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %14, align 4
  %116 = srem i32 %115, 3600000
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = sdiv i32 %117, 60000
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %14, align 4
  %120 = srem i32 %119, 60000
  store i32 %120, i32* %14, align 4
  %121 = load i32, i32* %14, align 4
  %122 = sitofp i32 %121 to double
  %123 = fdiv double %122, 1.000000e+03
  store double %123, double* %21, align 8
  %124 = load i8**, i8*** %8, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = load i32, i32* %19, align 4
  %127 = load i32, i32* %20, align 4
  %128 = load double, double* %21, align 8
  %129 = load i8, i8* %18, align 1
  %130 = sext i8 %129 to i32
  %131 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %124, i64* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %126, i32 %127, double %128, i32 %130)
  %132 = load i32, i32* %23, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %133, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %16, align 4
  %137 = sitofp i32 %136 to double
  %138 = fdiv double %137, 1.000000e+02
  store double %138, double* %21, align 8
  %139 = load double, double* %21, align 8
  %140 = fsub double %139, 1.000000e+05
  store double %140, double* %21, align 8
  %141 = load i32, i32* %16, align 4
  %142 = srem i32 %141, 100
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %112
  %145 = load i8**, i8*** %8, align 8
  %146 = load i64*, i64** %9, align 8
  %147 = load double, double* %21, align 8
  %148 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %145, i64* %146, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %147)
  %149 = load i32, i32* %23, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %148
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %23, align 4
  br label %162

153:                                              ; preds = %112
  %154 = load i8**, i8*** %8, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = load double, double* %21, align 8
  %157 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %154, i64* %155, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), double %156)
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %159, %157
  %161 = trunc i64 %160 to i32
  store i32 %161, i32* %23, align 4
  br label %162

162:                                              ; preds = %153, %144
  %163 = load i8**, i8*** %8, align 8
  %164 = load i64*, i64** %9, align 8
  %165 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %163, i64* %164, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %23, align 4
  %170 = load i8**, i8*** %8, align 8
  %171 = load i64*, i64** %9, align 8
  %172 = load i64, i64* %11, align 8
  %173 = and i64 %172, 240
  %174 = ashr i64 %173, 4
  %175 = load i64, i64* %11, align 8
  %176 = and i64 %175, 15
  %177 = call i64 @loc_cm_print(i8** %170, i64* %171, i64 %174, i64 %176)
  %178 = load i32, i32* %23, align 4
  %179 = sext i32 %178 to i64
  %180 = add nsw i64 %179, %177
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %23, align 4
  %182 = load i8**, i8*** %8, align 8
  %183 = load i64*, i64** %9, align 8
  %184 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %182, i64* %183, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i32, i32* %23, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %23, align 4
  %189 = load i8**, i8*** %8, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = load i64, i64* %12, align 8
  %192 = and i64 %191, 240
  %193 = ashr i64 %192, 4
  %194 = load i64, i64* %12, align 8
  %195 = and i64 %194, 15
  %196 = call i64 @loc_cm_print(i8** %189, i64* %190, i64 %193, i64 %195)
  %197 = load i32, i32* %23, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %196
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %23, align 4
  %201 = load i8**, i8*** %8, align 8
  %202 = load i64*, i64** %9, align 8
  %203 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %201, i64* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %204 = load i32, i32* %23, align 4
  %205 = sext i32 %204 to i64
  %206 = add nsw i64 %205, %203
  %207 = trunc i64 %206 to i32
  store i32 %207, i32* %23, align 4
  %208 = load i8**, i8*** %8, align 8
  %209 = load i64*, i64** %9, align 8
  %210 = load i64, i64* %13, align 8
  %211 = and i64 %210, 240
  %212 = ashr i64 %211, 4
  %213 = load i64, i64* %13, align 8
  %214 = and i64 %213, 15
  %215 = call i64 @loc_cm_print(i8** %208, i64* %209, i64 %212, i64 %214)
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %215
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %23, align 4
  %220 = load i8**, i8*** %8, align 8
  %221 = load i64*, i64** %9, align 8
  %222 = call i64 (i8**, i64*, i8*, ...) @sldns_str_print(i8** %220, i64* %221, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %223 = load i32, i32* %23, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %23, align 4
  %227 = load i64**, i64*** %6, align 8
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 16
  store i64* %229, i64** %227, align 8
  %230 = load i64*, i64** %7, align 8
  %231 = load i64, i64* %230, align 8
  %232 = sub i64 %231, 16
  store i64 %232, i64* %230, align 8
  %233 = load i32, i32* %23, align 4
  store i32 %233, i32* %5, align 4
  br label %234

234:                                              ; preds = %162, %35, %27
  %235 = load i32, i32* %5, align 4
  ret i32 %235
}

declare dso_local i32 @sldns_wire2str_hex_scan(i64**, i64*, i8**, i64*) #1

declare dso_local i32 @sldns_read_uint32(i64*) #1

declare dso_local i64 @sldns_str_print(i8**, i64*, i8*, ...) #1

declare dso_local i64 @loc_cm_print(i8**, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
