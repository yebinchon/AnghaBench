; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_getval.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_getval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.limits = type { float, i32 }

@.str = private unnamed_addr constant [10 x i8] c"megabytes\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"mbytes\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"gigabytes\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"gbytes\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"kilobytes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"kbytes\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"blocks\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@RLIM_INFINITY = common dso_local global i64 0, align 8
@ERR_NAME = common dso_local global i32 0, align 4
@ERR_SCALEF = common dso_local global i32 0, align 4
@ERR_TOOLARGE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@INT_MIN = common dso_local global i64 0, align 8
@RLIMIT_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.limits*, i8**)* @getval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getval(%struct.limits* %0, i8** %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.limits*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca float, align 4
  %7 = alloca i8*, align 8
  store %struct.limits* %0, %struct.limits** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i32 1
  store i8** %9, i8*** %5, align 8
  %10 = load i8*, i8** %8, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i32 @short2str(i8* %11)
  %13 = call float @atof(i32 %12)
  store float %13, float* %6, align 4
  br label %14

14:                                               ; preds = %36, %2
  %15 = load i8*, i8** %7, align 8
  %16 = load i8, i8* %15, align 1
  %17 = call i64 @Isdigit(i8 signext %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %14
  %20 = load i8*, i8** %7, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 46
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 101
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 69
  br label %34

34:                                               ; preds = %29, %24, %19, %14
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ true, %14 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %14

39:                                               ; preds = %34
  %40 = load i8*, i8** %7, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = load i8**, i8*** %5, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %44
  %49 = load float, float* %6, align 4
  %50 = load %struct.limits*, %struct.limits** %4, align 8
  %51 = getelementptr inbounds %struct.limits, %struct.limits* %50, i32 0, i32 0
  %52 = load float, float* %51, align 4
  %53 = fmul float %49, %52
  %54 = fpext float %53 to double
  %55 = fadd double %54, 5.000000e-01
  %56 = fptrunc double %55 to float
  %57 = call i64 @restrict_limit(float %56)
  store i64 %57, i64* %3, align 8
  br label %126

58:                                               ; preds = %44
  %59 = load i8**, i8*** %5, align 8
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  br label %61

61:                                               ; preds = %58, %39
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  switch i32 %64, label %107 [
    i32 109, label %65
    i32 71, label %72
    i32 103, label %74
    i32 77, label %81
    i32 107, label %89
    i32 98, label %96
    i32 117, label %103
  ]

65:                                               ; preds = %61
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @limtail2(i8* %66, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %68 = load float, float* %6, align 4
  %69 = fpext float %68 to double
  %70 = fmul double %69, 0x4130000000000000
  %71 = fptrunc double %70 to float
  store float %71, float* %6, align 4
  br label %112

72:                                               ; preds = %61
  %73 = load i8*, i8** %7, align 8
  store i8 103, i8* %73, align 1
  br label %74

74:                                               ; preds = %61, %72
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @limtail2(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %77 = load float, float* %6, align 4
  %78 = fpext float %77 to double
  %79 = fmul double %78, 0x41D0000000000000
  %80 = fptrunc double %79 to float
  store float %80, float* %6, align 4
  br label %112

81:                                               ; preds = %61
  %82 = load i8*, i8** %7, align 8
  store i8 109, i8* %82, align 1
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @limtail2(i8* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %85 = load float, float* %6, align 4
  %86 = fpext float %85 to double
  %87 = fmul double %86, 0x4130000000000000
  %88 = fptrunc double %87 to float
  store float %88, float* %6, align 4
  br label %112

89:                                               ; preds = %61
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @limtail2(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %92 = load float, float* %6, align 4
  %93 = fpext float %92 to double
  %94 = fmul double %93, 1.024000e+03
  %95 = fptrunc double %94 to float
  store float %95, float* %6, align 4
  br label %112

96:                                               ; preds = %61
  %97 = load i8*, i8** %7, align 8
  %98 = call i32 @limtail(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %99 = load float, float* %6, align 4
  %100 = fpext float %99 to double
  %101 = fmul double %100, 5.120000e+02
  %102 = fptrunc double %101 to float
  store float %102, float* %6, align 4
  br label %112

103:                                              ; preds = %61
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 @limtail(i8* %104, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  %106 = load i64, i64* @RLIM_INFINITY, align 8
  store i64 %106, i64* %3, align 8
  br label %126

107:                                              ; preds = %61
  %108 = load i32, i32* @ERR_NAME, align 4
  %109 = load i32, i32* @ERR_SCALEF, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @stderror(i32 %110)
  br label %112

112:                                              ; preds = %107, %96, %89, %81, %74, %65
  %113 = load float, float* %6, align 4
  %114 = fpext float %113 to double
  %115 = fadd double %114, 5.000000e-01
  %116 = fptrunc double %115 to float
  store float %116, float* %6, align 4
  %117 = load float, float* %6, align 4
  %118 = load i64, i64* @RLIM_INFINITY, align 8
  %119 = sitofp i64 %118 to float
  %120 = fcmp ogt float %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i64, i64* @RLIM_INFINITY, align 8
  store i64 %122, i64* %3, align 8
  br label %126

123:                                              ; preds = %112
  %124 = load float, float* %6, align 4
  %125 = fptosi float %124 to i64
  store i64 %125, i64* %3, align 8
  br label %126

126:                                              ; preds = %123, %121, %103, %48
  %127 = load i64, i64* %3, align 8
  ret i64 %127
}

declare dso_local float @atof(i32) #1

declare dso_local i32 @short2str(i8*) #1

declare dso_local i64 @Isdigit(i8 signext) #1

declare dso_local i64 @restrict_limit(float) #1

declare dso_local i32 @limtail2(i8*, i8*, i8*) #1

declare dso_local i32 @limtail(i8*, i8*) #1

declare dso_local i32 @stderror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
