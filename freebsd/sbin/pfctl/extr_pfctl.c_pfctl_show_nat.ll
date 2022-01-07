; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_nat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl.c_pfctl_show_nat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfioc_rule = type { i64, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@pfctl_show_nat.nattype = internal global [3 x i32] [i32 129, i32 128, i32 130], align 4
@PF_OPT_SHOWALL = common dso_local global i32 0, align 4
@DIOCGETRULES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"DIOCGETRULES\00", align 1
@DIOCGETRULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"DIOCGETRULE\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"TRANSLATION RULES:\00", align 1
@PF_OPT_VERBOSE2 = common dso_local global i32 0, align 4
@PF_OPT_NUMERIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfctl_show_nat(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.pfioc_rule, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PF_OPT_SHOWALL, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %12, align 4
  %16 = call i32 @memset(%struct.pfioc_rule* %8, i32 0, i32 32)
  %17 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @memcpy(i32 %18, i8* %19, i32 4)
  store i32 0, i32* %11, align 4
  br label %21

21:                                               ; preds = %95, %3
  %22 = load i32, i32* %11, align 4
  %23 = icmp slt i32 %22, 3
  br i1 %23, label %24, label %98

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* @pfctl_show_nat.nattype, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DIOCGETRULES, align 4
  %33 = call i64 @ioctl(i32 %31, i32 %32, %struct.pfioc_rule* %8)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %24
  %36 = call i32 @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %99

37:                                               ; preds = %24
  %38 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %40

40:                                               ; preds = %91, %37
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %94

44:                                               ; preds = %40
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @DIOCGETRULE, align 4
  %49 = call i64 @ioctl(i32 %47, i32 %48, %struct.pfioc_rule* %8)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @warn(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %99

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i64, i64* %10, align 8
  %58 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [3 x i32], [3 x i32]* @pfctl_show_nat.nattype, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %7, align 8
  %65 = call i64 @pfctl_get_pool(i32 %54, i32* %56, i64 %57, i32 %59, i32 %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %99

68:                                               ; preds = %53
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = call i32 @pfctl_print_title(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 1
  %75 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @PF_OPT_VERBOSE2, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @PF_OPT_NUMERIC, align 4
  %82 = and i32 %80, %81
  %83 = call i32 @print_rule(%struct.TYPE_3__* %74, i32 %76, i32 %79, i32 %82)
  %84 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %85 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 1
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @pfctl_print_rule_counters(%struct.TYPE_3__* %85, i32 %86)
  %88 = getelementptr inbounds %struct.pfioc_rule, %struct.pfioc_rule* %8, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = call i32 @pfctl_clear_pool(i32* %89)
  br label %91

91:                                               ; preds = %73
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %10, align 8
  br label %40

94:                                               ; preds = %40
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  br label %21

98:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %67, %51, %35
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @memset(%struct.pfioc_rule*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_rule*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i64 @pfctl_get_pool(i32, i32*, i64, i32, i32, i8*) #1

declare dso_local i32 @pfctl_print_title(i8*) #1

declare dso_local i32 @print_rule(%struct.TYPE_3__*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pfctl_print_rule_counters(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @pfctl_clear_pool(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
