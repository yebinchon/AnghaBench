; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_action_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_action_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.respip_set = type { i32 }
%struct.resp_addr = type { i64 }

@respip_none = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"duplicate response-ip action for '%s', overridden.\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@respip_deny = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@respip_redirect = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@respip_inform = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"inform_deny\00", align 1
@respip_inform_deny = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [16 x i8] c"inform_redirect\00", align 1
@respip_inform_redirect = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"always_transparent\00", align 1
@respip_always_transparent = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [14 x i8] c"always_refuse\00", align 1
@respip_always_refuse = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"always_nxdomain\00", align 1
@respip_always_nxdomain = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [30 x i8] c"unknown response-ip action %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.respip_set*, i8*, i8*)* @respip_action_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @respip_action_cfg(%struct.respip_set* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.respip_set*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.resp_addr*, align 8
  %9 = alloca i32, align 4
  store %struct.respip_set* %0, %struct.respip_set** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.respip_set*, %struct.respip_set** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.resp_addr* @respip_find_or_create(%struct.respip_set* %10, i8* %11, i32 1)
  store %struct.resp_addr* %12, %struct.resp_addr** %8, align 8
  %13 = icmp ne %struct.resp_addr* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

15:                                               ; preds = %3
  %16 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %17 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @respip_none, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load i32, i32* @VERB_QUERY, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @verbose(i32 %22, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8* %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @respip_deny, align 4
  store i32 %30, i32* %9, align 4
  br label %83

31:                                               ; preds = %25
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @respip_redirect, align 4
  store i32 %36, i32* %9, align 4
  br label %82

37:                                               ; preds = %31
  %38 = load i8*, i8** %7, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @respip_inform, align 4
  store i32 %42, i32* %9, align 4
  br label %81

43:                                               ; preds = %37
  %44 = load i8*, i8** %7, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @respip_inform_deny, align 4
  store i32 %48, i32* %9, align 4
  br label %80

49:                                               ; preds = %43
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @respip_inform_redirect, align 4
  store i32 %54, i32* %9, align 4
  br label %79

55:                                               ; preds = %49
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strcmp(i8* %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @respip_always_transparent, align 4
  store i32 %60, i32* %9, align 4
  br label %78

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @respip_always_refuse, align 4
  store i32 %66, i32* %9, align 4
  br label %77

67:                                               ; preds = %61
  %68 = load i8*, i8** %7, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* @respip_always_nxdomain, align 4
  store i32 %72, i32* %9, align 4
  br label %76

73:                                               ; preds = %67
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8* %74)
  store i32 0, i32* %4, align 4
  br label %88

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %59
  br label %79

79:                                               ; preds = %78, %53
  br label %80

80:                                               ; preds = %79, %47
  br label %81

81:                                               ; preds = %80, %41
  br label %82

82:                                               ; preds = %81, %35
  br label %83

83:                                               ; preds = %82, %29
  %84 = load i32, i32* %9, align 4
  %85 = zext i32 %84 to i64
  %86 = load %struct.resp_addr*, %struct.resp_addr** %8, align 8
  %87 = getelementptr inbounds %struct.resp_addr, %struct.resp_addr* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  store i32 1, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %73, %14
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.resp_addr* @respip_find_or_create(%struct.respip_set*, i8*, i32) #1

declare dso_local i32 @verbose(i32, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
