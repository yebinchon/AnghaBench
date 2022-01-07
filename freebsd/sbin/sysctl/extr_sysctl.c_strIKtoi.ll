; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_strIKtoi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/sysctl/extr_sysctl.c_strIKtoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i8*)* @strIKtoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @strIKtoi(i8* %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i64, i64* @errno, align 8
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ugt i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i8*, i8** %7, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 2
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load i8*, i8** %7, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp sge i32 %33, 48
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 2
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 %39, 57
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 2
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = sub nsw i32 %45, 48
  store i32 %46, i32* %12, align 4
  br label %48

47:                                               ; preds = %35, %29, %3
  store i32 1, i32* %12, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load i8*, i8** %5, align 8
  %50 = load i64, i64* %10, align 8
  %51 = sub i64 %50, 1
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %11, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 67
  br i1 %56, label %67, label %57

57:                                               ; preds = %48
  %58 = load i8*, i8** %11, align 8
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 70
  br i1 %61, label %67, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %11, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 75
  br i1 %66, label %67, label %123

67:                                               ; preds = %62, %57, %48
  %68 = load i8*, i8** %5, align 8
  %69 = load i8**, i8*** %6, align 8
  %70 = call float @strtof(i8* %68, i8** %69)
  store float %70, float* %9, align 4
  %71 = load i8**, i8*** %6, align 8
  %72 = load i8*, i8** %71, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %122

75:                                               ; preds = %67
  %76 = load i8**, i8*** %6, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = icmp eq i8* %77, %78
  br i1 %79, label %80, label %122

80:                                               ; preds = %75
  %81 = load i64, i64* @errno, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %122

83:                                               ; preds = %80
  %84 = load i8*, i8** %11, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 70
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load float, float* %9, align 4
  %90 = fsub float %89, 3.200000e+01
  %91 = fmul float %90, 5.000000e+00
  %92 = fdiv float %91, 9.000000e+00
  store float %92, float* %9, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i8**, i8*** %6, align 8
  store i8* null, i8** %94, align 8
  %95 = load i8*, i8** %11, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp ne i32 %97, 75
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load float, float* %9, align 4
  %101 = fpext float %100 to double
  %102 = fadd double %101, 2.731500e+02
  %103 = fptrunc double %102 to float
  store float %103, float* %9, align 4
  br label %104

104:                                              ; preds = %99, %93
  store i32 0, i32* %13, align 4
  br label %105

105:                                              ; preds = %114, %104
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %105
  %110 = load float, float* %9, align 4
  %111 = fpext float %110 to double
  %112 = fmul double %111, 1.000000e+01
  %113 = fptrunc double %112 to float
  store float %113, float* %9, align 4
  br label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %13, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %13, align 4
  br label %105

117:                                              ; preds = %105
  %118 = load float, float* %9, align 4
  %119 = fpext float %118 to double
  %120 = fadd double %119, 5.000000e-01
  %121 = fptosi double %120 to i32
  store i32 %121, i32* %4, align 4
  br label %146

122:                                              ; preds = %80, %75, %67
  br label %144

123:                                              ; preds = %62
  %124 = load i8*, i8** %5, align 8
  %125 = load i8**, i8*** %6, align 8
  %126 = call i64 @strtol(i8* %124, i8** %125, i32 10)
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  %128 = load i8**, i8*** %6, align 8
  %129 = load i8*, i8** %128, align 8
  %130 = load i8*, i8** %5, align 8
  %131 = icmp ne i8* %129, %130
  br i1 %131, label %132, label %143

132:                                              ; preds = %123
  %133 = load i8**, i8*** %6, align 8
  %134 = load i8*, i8** %133, align 8
  %135 = load i8*, i8** %11, align 8
  %136 = icmp eq i8* %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load i64, i64* @errno, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i8**, i8*** %6, align 8
  store i8* null, i8** %141, align 8
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %4, align 4
  br label %146

143:                                              ; preds = %137, %132, %123
  br label %144

144:                                              ; preds = %143, %122
  %145 = load i64, i64* @ERANGE, align 8
  store i64 %145, i64* @errno, align 8
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %144, %140, %117
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local float @strtof(i8*, i8**) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
