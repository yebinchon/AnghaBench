; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_merge_cname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_merge_cname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.reply_info = type { i64, i64, i32, i32* }
%struct.respip_client_info = type { i32 }
%struct.regional = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.respip_action_info = type { i64, i64, i32* }

@respip_none = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_RCODE_YXDOMAIN = common dso_local global i64 0, align 8
@sec_status_bogus = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [98 x i8] c"CNAME target of redirect response-ip action would be subject to response-ip action, too; stripped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @respip_merge_cname(%struct.reply_info* %0, %struct.query_info* %1, %struct.reply_info* %2, %struct.respip_client_info* %3, i32 %4, %struct.reply_info** %5, %struct.regional* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.reply_info*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.reply_info*, align 8
  %12 = alloca %struct.respip_client_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.reply_info**, align 8
  %15 = alloca %struct.regional*, align 8
  %16 = alloca %struct.reply_info*, align 8
  %17 = alloca %struct.reply_info*, align 8
  %18 = alloca %struct.ub_packed_rrset_key*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.respip_action_info, align 8
  store %struct.reply_info* %0, %struct.reply_info** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.reply_info* %2, %struct.reply_info** %11, align 8
  store %struct.respip_client_info* %3, %struct.respip_client_info** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.reply_info** %5, %struct.reply_info*** %14, align 8
  store %struct.regional* %6, %struct.regional** %15, align 8
  store %struct.reply_info* null, %struct.reply_info** %17, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %18, align 8
  %23 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %22, i32 0, i32 0
  %24 = load i64, i64* @respip_none, align 8
  store i64 %24, i64* %23, align 8
  %25 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %22, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %22, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %28 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @FLAGS_GET_RCODE(i32 %29)
  store i64 %30, i64* %19, align 8
  %31 = load i64, i64* %19, align 8
  %32 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %7
  %35 = load i64, i64* %19, align 8
  %36 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64, i64* %19, align 8
  %40 = load i64, i64* @LDNS_RCODE_YXDOMAIN, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %38, %34, %7
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %47 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @sec_status_bogus, align 8
  %50 = icmp sle i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %38
  store i32 0, i32* %8, align 4
  br label %132

52:                                               ; preds = %45, %42
  %53 = load %struct.query_info*, %struct.query_info** %10, align 8
  %54 = load %struct.respip_client_info*, %struct.respip_client_info** %12, align 8
  %55 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %56 = load %struct.regional*, %struct.regional** %15, align 8
  %57 = call i32 @respip_rewrite_reply(%struct.query_info* %53, %struct.respip_client_info* %54, %struct.reply_info* %55, %struct.reply_info** %17, %struct.respip_action_info* %22, %struct.ub_packed_rrset_key** %18, i32 1, %struct.regional* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  br label %132

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %22, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @respip_none, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 @log_info(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %68 = load %struct.reply_info**, %struct.reply_info*** %14, align 8
  store %struct.reply_info* %67, %struct.reply_info** %68, align 8
  store i32 1, i32* %8, align 4
  br label %132

69:                                               ; preds = %60
  %70 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %71 = load %struct.regional*, %struct.regional** %15, align 8
  %72 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %73 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %76 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = add i64 %74, %77
  %79 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %80 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call %struct.reply_info* @make_new_reply_info(%struct.reply_info* %70, %struct.regional* %71, i64 %78, i64 %81)
  store %struct.reply_info* %82, %struct.reply_info** %16, align 8
  %83 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %84 = icmp ne %struct.reply_info* %83, null
  br i1 %84, label %86, label %85

85:                                               ; preds = %69
  store i32 0, i32* %8, align 4
  br label %132

86:                                               ; preds = %69
  store i64 0, i64* %20, align 8
  %87 = load %struct.reply_info*, %struct.reply_info** %9, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  store i64 %89, i64* %21, align 8
  br label %90

90:                                               ; preds = %119, %86
  %91 = load i64, i64* %20, align 8
  %92 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %93 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br i1 %95, label %96, label %124

96:                                               ; preds = %90
  %97 = load %struct.reply_info*, %struct.reply_info** %11, align 8
  %98 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %20, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.regional*, %struct.regional** %15, align 8
  %104 = call i32 @copy_rrset(i32 %102, %struct.regional* %103)
  %105 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %106 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %105, i32 0, i32 3
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* %21, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %111 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load i64, i64* %21, align 8
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %96
  store i32 0, i32* %8, align 4
  br label %132

118:                                              ; preds = %96
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %20, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %20, align 8
  %122 = load i64, i64* %21, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %21, align 8
  br label %90

124:                                              ; preds = %90
  %125 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %126 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @FLAGS_SET_RCODE(i32 %127, i64 %128)
  %130 = load %struct.reply_info*, %struct.reply_info** %16, align 8
  %131 = load %struct.reply_info**, %struct.reply_info*** %14, align 8
  store %struct.reply_info* %130, %struct.reply_info** %131, align 8
  store i32 1, i32* %8, align 4
  br label %132

132:                                              ; preds = %124, %117, %85, %65, %59, %51
  %133 = load i32, i32* %8, align 4
  ret i32 %133
}

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @respip_rewrite_reply(%struct.query_info*, %struct.respip_client_info*, %struct.reply_info*, %struct.reply_info**, %struct.respip_action_info*, %struct.ub_packed_rrset_key**, i32, %struct.regional*) #1

declare dso_local i32 @log_info(i8*) #1

declare dso_local %struct.reply_info* @make_new_reply_info(%struct.reply_info*, %struct.regional*, i64, i64) #1

declare dso_local i32 @copy_rrset(i32, %struct.regional*) #1

declare dso_local i32 @FLAGS_SET_RCODE(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
