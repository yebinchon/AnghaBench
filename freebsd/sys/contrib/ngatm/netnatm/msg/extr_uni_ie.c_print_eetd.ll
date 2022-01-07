; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_eetd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/msg/extr_uni_ie.c_print_eetd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_ie_eetd = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.unicx = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"eetd\00", align 1
@UNI_EETD_CUM_P = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"cum\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@UNI_EETD_MAX_P = common dso_local global i32 0, align 4
@UNI_EETD_ANYMAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@UNI_EETD_PCTD_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"pnni_cum\00", align 1
@UNI_EETD_PMTD_P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"pnni_max\00", align 1
@UNI_EETD_NET_P = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"netgen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uni_ie_eetd*, %struct.unicx*)* @print_eetd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_eetd(%struct.uni_ie_eetd* %0, %struct.unicx* %1) #0 {
  %3 = alloca %struct.uni_ie_eetd*, align 8
  %4 = alloca %struct.unicx*, align 8
  store %struct.uni_ie_eetd* %0, %struct.uni_ie_eetd** %3, align 8
  store %struct.unicx* %1, %struct.unicx** %4, align 8
  %5 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %6 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %5, i32 0, i32 0
  %7 = load %struct.unicx*, %struct.unicx** %4, align 8
  %8 = call i64 @uni_print_iehdr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %6, %struct.unicx* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %91

11:                                               ; preds = %2
  %12 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %13 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @UNI_EETD_CUM_P, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %11
  %20 = load %struct.unicx*, %struct.unicx** %4, align 8
  %21 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %22 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.unicx*, i8*, i8*, ...) @uni_print_entry(%struct.unicx* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %11
  %26 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %27 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UNI_EETD_MAX_P, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %35 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @UNI_EETD_ANYMAX, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.unicx*, %struct.unicx** %4, align 8
  %41 = call i32 (%struct.unicx*, i8*, i8*, ...) @uni_print_entry(%struct.unicx* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.unicx*, %struct.unicx** %4, align 8
  %44 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %45 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (%struct.unicx*, i8*, i8*, ...) @uni_print_entry(%struct.unicx* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %39
  br label %49

49:                                               ; preds = %48, %25
  %50 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %51 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UNI_EETD_PCTD_P, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load %struct.unicx*, %struct.unicx** %4, align 8
  %59 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %60 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.unicx*, i8*, i8*, ...) @uni_print_entry(%struct.unicx* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %57, %49
  %64 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %65 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @UNI_EETD_PMTD_P, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load %struct.unicx*, %struct.unicx** %4, align 8
  %73 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %74 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.unicx*, i8*, i8*, ...) @uni_print_entry(%struct.unicx* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %71, %63
  %78 = load %struct.uni_ie_eetd*, %struct.uni_ie_eetd** %3, align 8
  %79 = getelementptr inbounds %struct.uni_ie_eetd, %struct.uni_ie_eetd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @UNI_EETD_NET_P, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load %struct.unicx*, %struct.unicx** %4, align 8
  %87 = call i32 @uni_print_flag(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), %struct.unicx* %86)
  br label %88

88:                                               ; preds = %85, %77
  %89 = load %struct.unicx*, %struct.unicx** %4, align 8
  %90 = call i32 @uni_print_ieend(%struct.unicx* %89)
  br label %91

91:                                               ; preds = %88, %10
  ret void
}

declare dso_local i64 @uni_print_iehdr(i8*, %struct.TYPE_2__*, %struct.unicx*) #1

declare dso_local i32 @uni_print_entry(%struct.unicx*, i8*, i8*, ...) #1

declare dso_local i32 @uni_print_flag(i8*, %struct.unicx*) #1

declare dso_local i32 @uni_print_ieend(%struct.unicx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
