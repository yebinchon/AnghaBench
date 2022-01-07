; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_printstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/tftpd/extr_tftp-utils.c_printstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tftp_stats = type { i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s %zu bytes during %.1f seconds in %u blocks\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c" with %d rollover%s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" [%.0f bits/sec]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printstats(i8* %0, i32 %1, %struct.tftp_stats* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tftp_stats*, align 8
  %7 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tftp_stats* %2, %struct.tftp_stats** %6, align 8
  %8 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %9 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sitofp i32 %11 to double
  %13 = fmul double %12, 1.000000e+01
  %14 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %15 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 100000
  %19 = sitofp i32 %18 to double
  %20 = fadd double %13, %19
  %21 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %22 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sitofp i32 %24 to double
  %26 = fmul double %25, 1.000000e+01
  %27 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %28 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 100000
  %32 = sitofp i32 %31 to double
  %33 = fadd double %26, %32
  %34 = fsub double %20, %33
  store double %34, double* %7, align 8
  %35 = load double, double* %7, align 8
  %36 = fdiv double %35, 1.000000e+01
  store double %36, double* %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %39 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load double, double* %7, align 8
  %42 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %43 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %37, i32 %40, double %41, i32 %44)
  %46 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %47 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %3
  %51 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %52 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %55 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 1
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %59)
  br label %61

61:                                               ; preds = %50, %3
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.tftp_stats*, %struct.tftp_stats** %6, align 8
  %66 = getelementptr inbounds %struct.tftp_stats, %struct.tftp_stats* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = sitofp i32 %67 to double
  %69 = fmul double %68, 8.000000e+00
  %70 = load double, double* %7, align 8
  %71 = fdiv double %69, %70
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), double %71)
  br label %73

73:                                               ; preds = %64, %61
  %74 = call i32 @putchar(i8 signext 10)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
