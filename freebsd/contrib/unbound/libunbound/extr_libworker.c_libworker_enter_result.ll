; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_enter_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_enter_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_result = type { i32, i32, i32, i32, i32, i64* }
%struct.regional = type { i32 }
%struct.query_info = type { i32 }
%struct.reply_info = type { i32 }

@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cannot parse buf\00", align 1
@LDNS_RCODE_NXDOMAIN = common dso_local global i32 0, align 4
@sec_status_secure = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i32 0, align 4
@sec_status_secure_sentinel_fail = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libworker_enter_result(%struct.ub_result* %0, i32* %1, %struct.regional* %2, i32 %3) #0 {
  %5 = alloca %struct.ub_result*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.regional*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.query_info, align 4
  %10 = alloca %struct.reply_info*, align 8
  store %struct.ub_result* %0, %struct.ub_result** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.regional* %2, %struct.regional** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %12 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %13 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.regional*, %struct.regional** %7, align 8
  %16 = call %struct.reply_info* @parse_reply_in_temp_region(i32* %14, %struct.regional* %15, %struct.query_info* %9)
  store %struct.reply_info* %16, %struct.reply_info** %10, align 8
  %17 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %18 = icmp ne %struct.reply_info* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @log_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %80

21:                                               ; preds = %4
  %22 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %23 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %24 = call i32 @reply_find_answer_rrset(%struct.query_info* %9, %struct.reply_info* %23)
  %25 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %26 = call i32 @reply_find_final_cname_target(%struct.query_info* %9, %struct.reply_info* %25)
  %27 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %28 = call i32 @fill_res(%struct.ub_result* %22, i32 %24, i32 %26, %struct.query_info* %9, %struct.reply_info* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %80

31:                                               ; preds = %21
  %32 = load %struct.reply_info*, %struct.reply_info** %10, align 8
  %33 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @FLAGS_GET_RCODE(i32 %34)
  %36 = trunc i64 %35 to i32
  %37 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %38 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %40 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = icmp ne i64* %41, null
  br i1 %42, label %43, label %53

43:                                               ; preds = %31
  %44 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %45 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %44, i32 0, i32 5
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %52 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %43, %31
  %54 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %55 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @LDNS_RCODE_NXDOMAIN, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %61 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %60, i32 0, i32 2
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %53
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @sec_status_secure, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %68 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %67, i32 0, i32 3
  store i32 1, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @sec_status_bogus, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @sec_status_secure_sentinel_fail, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73, %69
  %78 = load %struct.ub_result*, %struct.ub_result** %5, align 8
  %79 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  br label %80

80:                                               ; preds = %19, %30, %77, %73
  ret void
}

declare dso_local %struct.reply_info* @parse_reply_in_temp_region(i32*, %struct.regional*, %struct.query_info*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @fill_res(%struct.ub_result*, i32, i32, %struct.query_info*, %struct.reply_info*) #1

declare dso_local i32 @reply_find_answer_rrset(%struct.query_info*, %struct.reply_info*) #1

declare dso_local i32 @reply_find_final_cname_target(%struct.query_info*, %struct.reply_info*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
