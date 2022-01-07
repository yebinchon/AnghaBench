; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_respond.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/fst/extr_fst_ctrl_iface.c_session_respond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fst_session = type { i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"CTRL: Cannot find session %u\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"FAIL\0A\00", align 1
@FST_CS_PVAL_RESPONSE_ACCEPT = common dso_local global i32 0, align 4
@WLAN_STATUS_SUCCESS = common dso_local global i32 0, align 4
@FST_CS_PVAL_RESPONSE_REJECT = common dso_local global i32 0, align 4
@WLAN_STATUS_PENDING_ADMITTING_FST_SESSION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"CTRL: session %u: unknown response status: %s\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"CTRL: Cannot respond to session %u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"CTRL: session %u responded\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @session_respond to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @session_respond(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fst_session*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @strtoul(i8* %12, i8** %9, i32 0)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call %struct.fst_session* @fst_session_get_by_id(i32 %14)
  store %struct.fst_session* %15, %struct.fst_session** %8, align 8
  %16 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %17 = icmp ne %struct.fst_session* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @MSG_WARNING, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 (i32, i8*, i32, ...) @fst_printf(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @os_snprintf(i8* %22, i64 %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %24, i32* %4, align 4
  br label %78

25:                                               ; preds = %3
  %26 = load i8*, i8** %9, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 32
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i8*, i8** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @os_snprintf(i8* %31, i64 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %4, align 4
  br label %78

34:                                               ; preds = %25
  %35 = load i8*, i8** %9, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* @FST_CS_PVAL_RESPONSE_ACCEPT, align 4
  %39 = call i32 @os_strcasecmp(i8* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @WLAN_STATUS_SUCCESS, align 4
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %34
  %44 = load i8*, i8** %9, align 8
  %45 = load i32, i32* @FST_CS_PVAL_RESPONSE_REJECT, align 4
  %46 = call i32 @os_strcasecmp(i8* %44, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  %49 = load i32, i32* @WLAN_STATUS_PENDING_ADMITTING_FST_SESSION, align 4
  store i32 %49, i32* %11, align 4
  br label %58

50:                                               ; preds = %43
  %51 = load i32, i32* @MSG_WARNING, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i8*, i8** %9, align 8
  %54 = call i32 (i32, i8*, i32, ...) @fst_printf(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %52, i8* %53)
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = call i32 @os_snprintf(i8* %55, i64 %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %57, i32* %4, align 4
  br label %78

58:                                               ; preds = %48
  br label %59

59:                                               ; preds = %58, %41
  %60 = load %struct.fst_session*, %struct.fst_session** %8, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i64 @fst_session_respond(%struct.fst_session* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* @MSG_WARNING, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 (i32, i8*, i32, ...) @fst_printf(i32 %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %66)
  %68 = load i8*, i8** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @os_snprintf(i8* %68, i64 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 %70, i32* %4, align 4
  br label %78

71:                                               ; preds = %59
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 (i32, i8*, i32, ...) @fst_printf(i32 %72, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %73)
  %75 = load i8*, i8** %6, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @os_snprintf(i8* %75, i64 %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %71, %64, %50, %30, %18
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local %struct.fst_session* @fst_session_get_by_id(i32) #1

declare dso_local i32 @fst_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @os_snprintf(i8*, i64, i8*) #1

declare dso_local i32 @os_strcasecmp(i8*, i32) #1

declare dso_local i64 @fst_session_respond(%struct.fst_session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
