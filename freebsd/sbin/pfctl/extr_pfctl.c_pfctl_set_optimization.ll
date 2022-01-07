; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_optimization.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_set_optimization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.pf_hint*, i64 }
%struct.pf_hint = type { i32, i64 }
%struct.pfctl = type { i32 }

@loadopt = common dso_local global i32 0, align 4
@PFCTL_FLAG_OPTION = common dso_local global i32 0, align 4
@pf_hints = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"invalid state timeouts optimization\00", align 1
@PF_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"set optimization %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_set_optimization(%struct.pfctl* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pfctl*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pf_hint*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pfctl* %0, %struct.pfctl** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* @loadopt, align 4
  %10 = load i32, i32* @PFCTL_FLAG_OPTION, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %35, %14
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_hints, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %15
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_hints, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @strcasecmp(i8* %24, i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %38

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %15

38:                                               ; preds = %33, %15
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pf_hints, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load %struct.pf_hint*, %struct.pf_hint** %43, align 8
  store %struct.pf_hint* %44, %struct.pf_hint** %6, align 8
  %45 = load %struct.pf_hint*, %struct.pf_hint** %6, align 8
  %46 = icmp eq %struct.pf_hint* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %91

49:                                               ; preds = %38
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %77, %49
  %51 = load %struct.pf_hint*, %struct.pf_hint** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %51, i64 %53
  %55 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %60 = load %struct.pf_hint*, %struct.pf_hint** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %60, i64 %62
  %64 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.pf_hint*, %struct.pf_hint** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %66, i64 %68
  %70 = getelementptr inbounds %struct.pf_hint, %struct.pf_hint* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @pfctl_set_timeout(%struct.pfctl* %59, i64 %65, i32 %71, i32 1)
  store i32 %72, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %58
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %91

76:                                               ; preds = %58
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %50

80:                                               ; preds = %50
  %81 = load %struct.pfctl*, %struct.pfctl** %4, align 8
  %82 = getelementptr inbounds %struct.pfctl, %struct.pfctl* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PF_OPT_VERBOSE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %80
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %74, %47, %13
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i64 @strcasecmp(i8*, i64) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @pfctl_set_timeout(%struct.pfctl*, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
