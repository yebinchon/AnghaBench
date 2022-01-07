; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_print_extra_delay_parms.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_dummynet.c_print_extra_delay_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_profile = type { double, double, i8* }

@.str = private unnamed_addr constant [41 x i8] c"\09 profile: name \22%s\22 loss %f samples %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dn_profile*)* @print_extra_delay_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_extra_delay_parms(%struct.dn_profile* %0) #0 {
  %2 = alloca %struct.dn_profile*, align 8
  %3 = alloca double, align 8
  store %struct.dn_profile* %0, %struct.dn_profile** %2, align 8
  %4 = load %struct.dn_profile*, %struct.dn_profile** %2, align 8
  %5 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %4, i32 0, i32 0
  %6 = load double, double* %5, align 8
  %7 = fcmp ole double %6, 0.000000e+00
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %26

9:                                                ; preds = %1
  %10 = load %struct.dn_profile*, %struct.dn_profile** %2, align 8
  %11 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %10, i32 0, i32 1
  %12 = load double, double* %11, align 8
  store double %12, double* %3, align 8
  %13 = load %struct.dn_profile*, %struct.dn_profile** %2, align 8
  %14 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  %16 = load double, double* %3, align 8
  %17 = fdiv double %16, %15
  store double %17, double* %3, align 8
  %18 = load %struct.dn_profile*, %struct.dn_profile** %2, align 8
  %19 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = load double, double* %3, align 8
  %22 = load %struct.dn_profile*, %struct.dn_profile** %2, align 8
  %23 = getelementptr inbounds %struct.dn_profile, %struct.dn_profile* %22, i32 0, i32 0
  %24 = load double, double* %23, align 8
  %25 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8* %20, double %21, double %24)
  br label %26

26:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @printf(i8*, i8*, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
