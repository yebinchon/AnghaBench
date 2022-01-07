; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processDSNSResponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processDSNSResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__, i64* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.iter_qstate = type { i32, i32 }

@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of memory in dsns dp alloc\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"malloc failure, in DS search\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, i32, %struct.module_qstate*)* @processDSNSResponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @processDSNSResponse(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.module_qstate* %2, %struct.module_qstate** %6, align 8
  %8 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %9 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %8, i32 0, i32 4
  %10 = load i64*, i64** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.iter_qstate*
  store %struct.iter_qstate* %15, %struct.iter_qstate** %7, align 8
  %16 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %17 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %65

22:                                               ; preds = %3
  %23 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %29 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %33 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %37 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %38 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @reply_find_rrset(i32 %27, i32 %31, i32 %35, i32 %36, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %22
  br label %65

44:                                               ; preds = %22
  %45 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %46 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %47 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %49 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %48, i32 0, i32 2
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %52 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @delegpt_from_message(%struct.TYPE_4__* %50, i32 %53)
  %55 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %56 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %58 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %44
  %62 = call i32 @log_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %64 = call i32 @errinf(%struct.module_qstate* %63, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %65

65:                                               ; preds = %21, %43, %61, %44
  ret void
}

declare dso_local i32 @reply_find_rrset(i32, i32, i32, i32, i32) #1

declare dso_local i32 @delegpt_from_message(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
