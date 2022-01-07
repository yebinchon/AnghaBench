; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_inform_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/respip/extr_respip.c_respip_inform_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__*, i32, i32, i64* }
%struct.TYPE_4__ = type { %struct.reply_info* }
%struct.reply_info = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.respip_qstate = type { i32 }

@RESPIP_SUBQUERY_FINISHED = common dso_local global i32 0, align 4
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @respip_inform_super(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.respip_qstate*, align 8
  %8 = alloca %struct.reply_info*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %9 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %10 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %9, i32 0, i32 6
  %11 = load i64*, i64** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.respip_qstate*
  store %struct.respip_qstate* %16, %struct.respip_qstate** %7, align 8
  store %struct.reply_info* null, %struct.reply_info** %8, align 8
  %17 = load i32, i32* @RESPIP_SUBQUERY_FINISHED, align 4
  %18 = load %struct.respip_qstate*, %struct.respip_qstate** %7, align 8
  %19 = getelementptr inbounds %struct.respip_qstate, %struct.respip_qstate* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %21 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %26 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.reply_info*, %struct.reply_info** %28, align 8
  %30 = icmp ne %struct.reply_info* %29, null
  br label %31

31:                                               ; preds = %24, %3
  %32 = phi i1 [ false, %3 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @log_assert(i32 %33)
  %35 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %36 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %31
  %40 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %41 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.reply_info*, %struct.reply_info** %43, align 8
  %45 = icmp ne %struct.reply_info* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %48 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46, %39, %31
  br label %86

53:                                               ; preds = %46
  %54 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.reply_info*, %struct.reply_info** %57, align 8
  %59 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %60 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %59, i32 0, i32 5
  %61 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %62 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.reply_info*, %struct.reply_info** %64, align 8
  %66 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %67 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %70 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %69, i32 0, i32 3
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @respip_merge_cname(%struct.reply_info* %58, i32* %60, %struct.reply_info* %65, i32 %68, i32 %73, %struct.reply_info** %8, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %53
  br label %86

80:                                               ; preds = %53
  %81 = load %struct.reply_info*, %struct.reply_info** %8, align 8
  %82 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %83 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  store %struct.reply_info* %81, %struct.reply_info** %85, align 8
  br label %92

86:                                               ; preds = %79, %52
  %87 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %88 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %89 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %91 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %90, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %91, align 8
  br label %92

92:                                               ; preds = %86, %80
  ret void
}

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @respip_merge_cname(%struct.reply_info*, i32*, %struct.reply_info*, i32, i32, %struct.reply_info**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
