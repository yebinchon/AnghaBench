; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_adj_systime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_systime.c_adj_systime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@enable_panic_check = common dso_local global i64 0, align 8
@allow_panic = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"adj_systime: allow_panic is TRUE!\00", align 1
@TRUE = common dso_local global i32 0, align 4
@sys_residual = common dso_local global double 0.000000e+00, align 8
@sys_tick = common dso_local global double 0.000000e+00, align 8
@sys_fuzz = common dso_local global double 0.000000e+00, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"adj_systime: %m\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adj_systime(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store double %0, double* %3, align 8
  store i32 0, i32* %9, align 4
  %10 = load double, double* %3, align 8
  %11 = fcmp oeq double 0.000000e+00, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %1
  %13 = load i64, i64* @enable_panic_check, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load i64, i64* @allow_panic, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %15
  %19 = load i32, i32* @LOG_ERR, align 4
  %20 = call i32 @msyslog(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %21 = load i64, i64* @allow_panic, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @INSIST(i32 %24)
  br label %26

26:                                               ; preds = %18, %15, %12
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %2, align 4
  br label %134

28:                                               ; preds = %1
  %29 = load double, double* %3, align 8
  %30 = load double, double* @sys_residual, align 8
  %31 = fadd double %29, %30
  store double %31, double* %7, align 8
  %32 = load double, double* %7, align 8
  %33 = fcmp olt double %32, 0.000000e+00
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  %35 = load double, double* %7, align 8
  %36 = fneg double %35
  store double %36, double* %7, align 8
  br label %37

37:                                               ; preds = %34, %28
  %38 = load double, double* %7, align 8
  %39 = fptosi double %38 to i64
  %40 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sitofp i64 %42 to double
  %44 = load double, double* %7, align 8
  %45 = fsub double %44, %43
  store double %45, double* %7, align 8
  %46 = load double, double* @sys_tick, align 8
  %47 = load double, double* @sys_fuzz, align 8
  %48 = fcmp ogt double %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %37
  %50 = load double, double* @sys_tick, align 8
  store double %50, double* %6, align 8
  br label %52

51:                                               ; preds = %37
  store double 0x3EB0C6F7A0B5ED8D, double* %6, align 8
  br label %52

52:                                               ; preds = %51, %49
  %53 = load double, double* %7, align 8
  %54 = load double, double* %6, align 8
  %55 = fdiv double %53, %54
  %56 = fadd double %55, 5.000000e-01
  %57 = fptosi double %56 to i64
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = sitofp i64 %58 to double
  %60 = load double, double* %6, align 8
  %61 = fmul double %59, %60
  %62 = fmul double %61, 1.000000e+06
  %63 = fadd double %62, 5.000000e-01
  %64 = fptosi double %63 to i64
  %65 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 %64, i64* %65, align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sge i64 %67, 1000000
  br i1 %68, label %69, label %78

69:                                               ; preds = %52
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  %73 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %74, 1000000
  store i64 %75, i64* %73, align 8
  %76 = load double, double* %7, align 8
  %77 = fsub double %76, 1.000000e+00
  store double %77, double* %7, align 8
  br label %78

78:                                               ; preds = %69, %52
  %79 = load double, double* %7, align 8
  %80 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sitofp i64 %81 to double
  %83 = fmul double %82, 0x3EB0C6F7A0B5ED8D
  %84 = fsub double %79, %83
  store double %84, double* @sys_residual, align 8
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 0, %89
  %91 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i64 %90, i64* %91, align 8
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 0, %93
  %95 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = load double, double* @sys_residual, align 8
  %97 = fneg double %96
  store double %97, double* @sys_residual, align 8
  br label %98

98:                                               ; preds = %87, %78
  %99 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %123

106:                                              ; preds = %102, %98
  %107 = call i64 @adjtime(%struct.timeval* %4, %struct.timeval* %5)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %106
  %110 = load i32, i32* @LOG_ERR, align 4
  %111 = call i32 @msyslog(i32 %110, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %112 = load i64, i64* @enable_panic_check, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %109
  %115 = load i64, i64* @allow_panic, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* @LOG_ERR, align 4
  %119 = call i32 @msyslog(i32 %118, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %120

120:                                              ; preds = %117, %114, %109
  %121 = load i32, i32* @FALSE, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %106
  br label %123

123:                                              ; preds = %122, %102
  %124 = load i64, i64* @enable_panic_check, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i64, i64* @allow_panic, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %126
  %130 = load i32, i32* @LOG_ERR, align 4
  %131 = call i32 @msyslog(i32 %130, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %126, %123
  %133 = load i32, i32* @TRUE, align 4
  store i32 %133, i32* %2, align 4
  br label %134

134:                                              ; preds = %132, %120, %26
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i64 @adjtime(%struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
