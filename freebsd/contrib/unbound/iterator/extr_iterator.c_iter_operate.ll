; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_operate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_iter_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64*, %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64* }
%struct.outbound_entry = type { i32 }
%struct.iter_env = type { i32 }
%struct.iter_qstate = type { %struct.TYPE_4__ }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"iterator[module %d] operate: extstate:%s event:%s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"iterator operate: query\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"iterator operate: chased to\00", align 1
@module_event_new = common dso_local global i32 0, align 4
@module_event_pass = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"malloc failure, new iterator module allocation\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@module_event_error = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"got called with event error, giving up\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"iterator module got the error event\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"bad event for iterator\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"iterator module received wrong event\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iter_operate(%struct.module_qstate* %0, i32 %1, i32 %2, %struct.outbound_entry* %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.outbound_entry*, align 8
  %9 = alloca %struct.iter_env*, align 8
  %10 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.outbound_entry* %3, %struct.outbound_entry** %8, align 8
  %11 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %12 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.iter_env*
  store %struct.iter_env* %20, %struct.iter_env** %9, align 8
  %21 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %22 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.iter_qstate*
  store %struct.iter_qstate* %28, %struct.iter_qstate** %10, align 8
  %29 = load i32, i32* @VERB_QUERY, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %32 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strextstate(i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @strmodulevent(i32 %39)
  %41 = call i32 (i32, i8*, ...) @verbose(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %38, i32 %40)
  %42 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %43 = icmp ne %struct.iter_qstate* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %4
  %45 = load i32, i32* @VERB_QUERY, align 4
  %46 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %47 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %46, i32 0, i32 1
  %48 = call i32 @log_query_info(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %47)
  br label %49

49:                                               ; preds = %44, %4
  %50 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %51 = icmp ne %struct.iter_qstate* %50, null
  br i1 %51, label %52, label %67

52:                                               ; preds = %49
  %53 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %54 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %58 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %56, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* @VERB_QUERY, align 4
  %64 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %65 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %64, i32 0, i32 0
  %66 = call i32 @log_query_info(i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %65)
  br label %67

67:                                               ; preds = %62, %52, %49
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @module_event_new, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @module_event_pass, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %104

75:                                               ; preds = %71, %67
  %76 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %77 = icmp eq %struct.iter_qstate* %76, null
  br i1 %77, label %78, label %104

78:                                               ; preds = %75
  %79 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @iter_new(%struct.module_qstate* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %85 = call i32 @errinf(%struct.module_qstate* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %89 = call i32 @error_response(%struct.module_qstate* %86, i32 %87, i32 %88)
  br label %152

90:                                               ; preds = %78
  %91 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 0
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to %struct.iter_qstate*
  store %struct.iter_qstate* %98, %struct.iter_qstate** %10, align 8
  %99 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %101 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @process_request(%struct.module_qstate* %99, %struct.iter_qstate* %100, %struct.iter_env* %101, i32 %102)
  br label %152

104:                                              ; preds = %75, %71
  %105 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %106 = icmp ne %struct.iter_qstate* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @module_event_pass, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %113 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %114 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %115 = load i32, i32* %7, align 4
  %116 = call i32 @iter_handle(%struct.module_qstate* %112, %struct.iter_qstate* %113, %struct.iter_env* %114, i32 %115)
  br label %152

117:                                              ; preds = %107, %104
  %118 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %119 = icmp ne %struct.iter_qstate* %118, null
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.outbound_entry*, %struct.outbound_entry** %8, align 8
  %122 = icmp ne %struct.outbound_entry* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %125 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %126 = load %struct.iter_env*, %struct.iter_env** %9, align 8
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.outbound_entry*, %struct.outbound_entry** %8, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @process_response(%struct.module_qstate* %124, %struct.iter_qstate* %125, %struct.iter_env* %126, i32 %127, %struct.outbound_entry* %128, i32 %129)
  br label %152

131:                                              ; preds = %120, %117
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @module_event_error, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32, i32* @VERB_ALGO, align 4
  %137 = call i32 (i32, i8*, ...) @verbose(i32 %136, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %138 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %139 = call i32 @errinf(%struct.module_qstate* %138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %140 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %143 = call i32 @error_response(%struct.module_qstate* %140, i32 %141, i32 %142)
  br label %152

144:                                              ; preds = %131
  %145 = call i32 @log_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %146 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %147 = call i32 @errinf(%struct.module_qstate* %146, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %148 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %151 = call i32 @error_response(%struct.module_qstate* %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %144, %135, %123, %111, %90, %83
  ret void
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @strextstate(i32) #1

declare dso_local i32 @strmodulevent(i32) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @iter_new(%struct.module_qstate*, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @process_request(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32) #1

declare dso_local i32 @iter_handle(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32) #1

declare dso_local i32 @process_response(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32, %struct.outbound_entry*, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
