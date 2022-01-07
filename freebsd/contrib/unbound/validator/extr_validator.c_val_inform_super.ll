; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_inform_super.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_val_inform_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_5__, i32, i32, i32, i64* }
%struct.TYPE_5__ = type { i64 }
%struct.val_qstate = type { i64 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"validator: inform_super, sub is\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"super is\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"super: has no validator state\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_DLV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [55 x i8] c"internal error in validator: no inform_supers possible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @val_inform_super(%struct.module_qstate* %0, i32 %1, %struct.module_qstate* %2) #0 {
  %4 = alloca %struct.module_qstate*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
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
  %15 = inttoptr i64 %14 to %struct.val_qstate*
  store %struct.val_qstate* %15, %struct.val_qstate** %7, align 8
  %16 = load i32, i32* @VERB_ALGO, align 4
  %17 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 0
  %19 = call i32 @log_query_info(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %18)
  %20 = load i32, i32* @VERB_ALGO, align 4
  %21 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 0
  %23 = call i32 @log_query_info(i32 %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_5__* %22)
  %24 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %25 = icmp ne %struct.val_qstate* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @VERB_ALGO, align 4
  %28 = call i32 @verbose(i32 %27, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %120

29:                                               ; preds = %3
  %30 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %31 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %36 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %38 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %41 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %44 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %47 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @process_prime_response(%struct.module_qstate* %37, %struct.val_qstate* %38, i32 %39, i32 %42, i32 %45, i32 %48)
  br label %120

50:                                               ; preds = %29
  %51 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %52 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %50
  %58 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %59 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %62 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %65 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %68 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %67, i32 0, i32 0
  %69 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %70 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @process_ds_response(%struct.module_qstate* %58, %struct.val_qstate* %59, i32 %60, i32 %63, i32 %66, %struct.TYPE_5__* %68, i32 %71)
  br label %120

73:                                               ; preds = %50
  %74 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %73
  %81 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %82 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %85 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %88 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %91 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %90, i32 0, i32 0
  %92 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %93 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @process_dnskey_response(%struct.module_qstate* %81, %struct.val_qstate* %82, i32 %83, i32 %86, i32 %89, %struct.TYPE_5__* %91, i32 %94)
  br label %120

96:                                               ; preds = %73
  %97 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %98 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %96
  %104 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %105 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %108 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %111 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.module_qstate*, %struct.module_qstate** %4, align 8
  %114 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %113, i32 0, i32 0
  %115 = call i32 @process_dlv_response(%struct.module_qstate* %104, %struct.val_qstate* %105, i32 %106, i32 %109, i32 %112, %struct.TYPE_5__* %114)
  br label %120

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = call i32 @log_err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %103, %80, %57, %34, %26
  ret void
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @process_prime_response(%struct.module_qstate*, %struct.val_qstate*, i32, i32, i32, i32) #1

declare dso_local i32 @process_ds_response(%struct.module_qstate*, %struct.val_qstate*, i32, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @process_dnskey_response(%struct.module_qstate*, %struct.val_qstate*, i32, i32, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @process_dlv_response(%struct.module_qstate*, %struct.val_qstate*, i32, i32, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
