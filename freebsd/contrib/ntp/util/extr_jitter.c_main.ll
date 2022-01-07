; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_jitter.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/util/extr_jitter.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NBUF = common dso_local global i32 0, align 4
@average = common dso_local global double 0.000000e+00, align 8
@.str = private unnamed_addr constant [8 x i8] c"%13.9f\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Average %13.9f\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"First rank\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%2d %13.9f\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Last rank\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %12 = load i32, i32* @NBUF, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %10, align 8
  %15 = alloca double, i64 %13, align 16
  store i64 %13, i64* %11, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %24, %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @NBUF, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, double* %15, i64 %22
  store double 0.000000e+00, double* %23, align 8
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %7, align 4
  br label %16

27:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @NBUF, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %28
  %33 = call i32 @get_systime(i32* %6)
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds double, double* %15, i64 %35
  %37 = load double, double* %36, align 8
  %38 = call i32 @LFPTOD(i32* %6, double %37)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %28

42:                                               ; preds = %28
  store double 0.000000e+00, double* @average, align 8
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %73, %42
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @NBUF, align 4
  %46 = sub nsw i32 %45, 2
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds double, double* %15, i64 %51
  %53 = load double, double* %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %15, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fsub double %53, %57
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds double, double* %15, i64 %60
  store double %58, double* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds double, double* %15, i64 %63
  %65 = load double, double* %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), double %65)
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds double, double* %15, i64 %68
  %70 = load double, double* %69, align 8
  %71 = load double, double* @average, align 8
  %72 = fadd double %71, %70
  store double %72, double* @average, align 8
  br label %73

73:                                               ; preds = %48
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %43

76:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %118, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @NBUF, align 4
  %80 = sub nsw i32 %79, 2
  %81 = icmp slt i32 %78, %80
  br i1 %81, label %82, label %121

82:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %117

87:                                               ; preds = %83
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds double, double* %15, i64 %89
  %91 = load double, double* %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds double, double* %15, i64 %93
  %95 = load double, double* %94, align 8
  %96 = fcmp ogt double %91, %95
  br i1 %96, label %97, label %113

97:                                               ; preds = %87
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds double, double* %15, i64 %99
  %101 = load double, double* %100, align 8
  store double %101, double* %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds double, double* %15, i64 %103
  %105 = load double, double* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds double, double* %15, i64 %107
  store double %105, double* %108, align 8
  %109 = load double, double* %9, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds double, double* %15, i64 %111
  store double %109, double* %112, align 8
  br label %113

113:                                              ; preds = %97, %87
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %83

117:                                              ; preds = %83
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %77

121:                                              ; preds = %77
  %122 = load double, double* @average, align 8
  %123 = load i32, i32* @NBUF, align 4
  %124 = sub nsw i32 %123, 2
  %125 = sitofp i32 %124 to double
  %126 = fdiv double %122, %125
  store double %126, double* @average, align 8
  %127 = load i32, i32* @stderr, align 4
  %128 = load double, double* @average, align 8
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %127, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %128)
  %130 = load i32, i32* @stderr, align 4
  %131 = call i32 (i32, i8*, ...) @fprintf(i32 %130, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %143, %121
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %133, 10
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load i32, i32* @stderr, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds double, double* %15, i64 %139
  %141 = load double, double* %140, align 8
  %142 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %137, double %141)
  br label %143

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %132

146:                                              ; preds = %132
  %147 = load i32, i32* @stderr, align 4
  %148 = call i32 (i32, i8*, ...) @fprintf(i32 %147, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %149 = load i32, i32* @NBUF, align 4
  %150 = sub nsw i32 %149, 12
  store i32 %150, i32* %7, align 4
  br label %151

151:                                              ; preds = %164, %146
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @NBUF, align 4
  %154 = sub nsw i32 %153, 2
  %155 = icmp slt i32 %152, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %151
  %157 = load i32, i32* @stderr, align 4
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds double, double* %15, i64 %160
  %162 = load double, double* %161, align 8
  %163 = call i32 (i32, i8*, ...) @fprintf(i32 %157, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %158, double %162)
  br label %164

164:                                              ; preds = %156
  %165 = load i32, i32* %7, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %7, align 4
  br label %151

167:                                              ; preds = %151
  %168 = call i32 @exit(i32 0) #4
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_systime(i32*) #2

declare dso_local i32 @LFPTOD(i32*, double) #2

declare dso_local i32 @printf(i8*, double) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
