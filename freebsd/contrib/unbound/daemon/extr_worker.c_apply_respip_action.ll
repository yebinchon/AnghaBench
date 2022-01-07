; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_apply_respip_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_apply_respip_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32 }
%struct.query_info = type { i32, i32, i32, i32 }
%struct.respip_client_info = type { i32 }
%struct.reply_info = type { i32 }
%struct.comm_reply = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.respip_action_info = type { i64, i64, i32*, i32 }

@respip_none = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_ANY = common dso_local global i32 0, align 4
@respip_deny = common dso_local global i64 0, align 8
@respip_inform_deny = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker*, %struct.query_info*, %struct.respip_client_info*, %struct.reply_info*, %struct.comm_reply*, %struct.ub_packed_rrset_key**, %struct.reply_info**)* @apply_respip_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_respip_action(%struct.worker* %0, %struct.query_info* %1, %struct.respip_client_info* %2, %struct.reply_info* %3, %struct.comm_reply* %4, %struct.ub_packed_rrset_key** %5, %struct.reply_info** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.worker*, align 8
  %10 = alloca %struct.query_info*, align 8
  %11 = alloca %struct.respip_client_info*, align 8
  %12 = alloca %struct.reply_info*, align 8
  %13 = alloca %struct.comm_reply*, align 8
  %14 = alloca %struct.ub_packed_rrset_key**, align 8
  %15 = alloca %struct.reply_info**, align 8
  %16 = alloca %struct.respip_action_info, align 8
  store %struct.worker* %0, %struct.worker** %9, align 8
  store %struct.query_info* %1, %struct.query_info** %10, align 8
  store %struct.respip_client_info* %2, %struct.respip_client_info** %11, align 8
  store %struct.reply_info* %3, %struct.reply_info** %12, align 8
  store %struct.comm_reply* %4, %struct.comm_reply** %13, align 8
  store %struct.ub_packed_rrset_key** %5, %struct.ub_packed_rrset_key*** %14, align 8
  store %struct.reply_info** %6, %struct.reply_info*** %15, align 8
  %17 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 0
  %18 = load i32, i32* @respip_none, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %17, align 8
  %20 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 2
  store i32* null, i32** %21, align 8
  %22 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 3
  store i32 0, i32* %22, align 8
  %23 = load %struct.query_info*, %struct.query_info** %10, align 8
  %24 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %7
  %29 = load %struct.query_info*, %struct.query_info** %10, align 8
  %30 = getelementptr inbounds %struct.query_info, %struct.query_info* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.query_info*, %struct.query_info** %10, align 8
  %36 = getelementptr inbounds %struct.query_info, %struct.query_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LDNS_RR_TYPE_ANY, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  br label %92

41:                                               ; preds = %34, %28, %7
  %42 = load %struct.query_info*, %struct.query_info** %10, align 8
  %43 = load %struct.respip_client_info*, %struct.respip_client_info** %11, align 8
  %44 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %45 = load %struct.reply_info**, %struct.reply_info*** %15, align 8
  %46 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %14, align 8
  %47 = load %struct.worker*, %struct.worker** %9, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @respip_rewrite_reply(%struct.query_info* %42, %struct.respip_client_info* %43, %struct.reply_info* %44, %struct.reply_info** %45, %struct.respip_action_info* %16, %struct.ub_packed_rrset_key** %46, i32 0, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %92

53:                                               ; preds = %41
  %54 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @respip_deny, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @respip_inform_deny, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58, %53
  %64 = load %struct.reply_info**, %struct.reply_info*** %15, align 8
  %65 = load %struct.reply_info*, %struct.reply_info** %64, align 8
  %66 = load %struct.reply_info*, %struct.reply_info** %12, align 8
  %67 = icmp eq %struct.reply_info* %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load %struct.reply_info**, %struct.reply_info*** %15, align 8
  store %struct.reply_info* null, %struct.reply_info** %69, align 8
  br label %70

70:                                               ; preds = %68, %63, %58
  %71 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.respip_action_info, %struct.respip_action_info* %16, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.query_info*, %struct.query_info** %10, align 8
  %78 = getelementptr inbounds %struct.query_info, %struct.query_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.query_info*, %struct.query_info** %10, align 8
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.query_info*, %struct.query_info** %10, align 8
  %84 = getelementptr inbounds %struct.query_info, %struct.query_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.query_info*, %struct.query_info** %10, align 8
  %87 = getelementptr inbounds %struct.query_info, %struct.query_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.comm_reply*, %struct.comm_reply** %13, align 8
  %90 = call i32 @respip_inform_print(i64 %76, i32 %79, i32 %82, i32 %85, i32 %88, %struct.comm_reply* %89)
  br label %91

91:                                               ; preds = %74, %70
  store i32 1, i32* %8, align 4
  br label %92

92:                                               ; preds = %91, %52, %40
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @respip_rewrite_reply(%struct.query_info*, %struct.respip_client_info*, %struct.reply_info*, %struct.reply_info**, %struct.respip_action_info*, %struct.ub_packed_rrset_key**, i32, i32) #1

declare dso_local i32 @respip_inform_print(i64, i32, i32, i32, i32, %struct.comm_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
