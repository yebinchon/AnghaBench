; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_log_patypes.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_kerberos5.c_log_patypes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rk_strpool = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"PK-INIT(ietf)\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PK-INIT(win2k)\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OCSP\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"encrypted-timestamp\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"Client sent patypes: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_5__*)* @log_patypes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_patypes(i32 %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.rk_strpool*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %6, align 8
  store %struct.rk_strpool* null, %struct.rk_strpool** %7, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %67, %3
  %11 = load i64, i64* %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ult i64 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %36 [
    i32 129, label %24
    i32 128, label %27
    i32 130, label %30
    i32 131, label %33
  ]

24:                                               ; preds = %16
  %25 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %26 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.rk_strpool* %26, %struct.rk_strpool** %7, align 8
  br label %46

27:                                               ; preds = %16
  %28 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %29 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store %struct.rk_strpool* %29, %struct.rk_strpool** %7, align 8
  br label %46

30:                                               ; preds = %16
  %31 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %32 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store %struct.rk_strpool* %32, %struct.rk_strpool** %7, align 8
  br label %46

33:                                               ; preds = %16
  %34 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %35 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store %struct.rk_strpool* %35, %struct.rk_strpool** %7, align 8
  br label %46

36:                                               ; preds = %16
  %37 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %44)
  store %struct.rk_strpool* %45, %struct.rk_strpool** %7, align 8
  br label %46

46:                                               ; preds = %36, %33, %30, %27, %24
  %47 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %48 = icmp ne %struct.rk_strpool* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %58 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %57, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  store %struct.rk_strpool* %58, %struct.rk_strpool** %7, align 8
  br label %59

59:                                               ; preds = %56, %49, %46
  %60 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %61 = icmp eq %struct.rk_strpool* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %63, i32* %64, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %85

66:                                               ; preds = %59
  br label %67

67:                                               ; preds = %66
  %68 = load i64, i64* %9, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %9, align 8
  br label %10

70:                                               ; preds = %10
  %71 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %72 = icmp eq %struct.rk_strpool* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %75 = call %struct.rk_strpool* (%struct.rk_strpool*, i8*, ...) @rk_strpoolprintf(%struct.rk_strpool* %74, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store %struct.rk_strpool* %75, %struct.rk_strpool** %7, align 8
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.rk_strpool*, %struct.rk_strpool** %7, align 8
  %78 = call i8* @rk_strpoolcollect(%struct.rk_strpool* %77)
  store i8* %78, i8** %8, align 8
  %79 = load i32, i32* %4, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %79, i32* %80, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %81)
  %83 = load i8*, i8** %8, align 8
  %84 = call i32 @free(i8* %83)
  br label %85

85:                                               ; preds = %76, %62
  ret void
}

declare dso_local %struct.rk_strpool* @rk_strpoolprintf(%struct.rk_strpool*, i8*, ...) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i8* @rk_strpoolcollect(%struct.rk_strpool*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
