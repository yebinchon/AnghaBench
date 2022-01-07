; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_operate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/dns64/extr_dns64.c_dns64_operate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i64*, i32, %struct.dns64_qstate**, i32, i32 }
%struct.dns64_qstate = type { i64, i32 }
%struct.outbound_entry = type { i32 }

@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"dns64[module %d] operate: extstate:%s event:%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dns64 operate: query\00", align 1
@DNS64_NEW_QUERY = common dso_local global i64 0, align 8
@module_finished = common dso_local global i64 0, align 8
@DNS64_INTERNAL_QUERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dns64_operate(%struct.module_qstate* %0, i32 %1, i32 %2, %struct.outbound_entry* %3) #0 {
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.outbound_entry*, align 8
  %9 = alloca %struct.dns64_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.outbound_entry* %3, %struct.outbound_entry** %8, align 8
  %10 = load %struct.outbound_entry*, %struct.outbound_entry** %8, align 8
  %11 = load i32, i32* @VERB_QUERY, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %14 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @strextstate(i64 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @strmodulevent(i32 %21)
  %23 = call i32 @verbose(i32 %11, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %20, i32 %22)
  %24 = load i32, i32* @VERB_QUERY, align 4
  %25 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %26 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %25, i32 0, i32 4
  %27 = call i32 @log_query_info(i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %26)
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %72 [
    i32 129, label %29
    i32 128, label %52
    i32 130, label %62
  ]

29:                                               ; preds = %4
  %30 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %31 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @regional_alloc(i32 %32, i32 16)
  %34 = inttoptr i64 %33 to %struct.dns64_qstate*
  store %struct.dns64_qstate* %34, %struct.dns64_qstate** %9, align 8
  %35 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %36 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %37 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %36, i32 0, i32 2
  %38 = load %struct.dns64_qstate**, %struct.dns64_qstate*** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dns64_qstate*, %struct.dns64_qstate** %38, i64 %40
  store %struct.dns64_qstate* %35, %struct.dns64_qstate** %41, align 8
  %42 = load i64, i64* @DNS64_NEW_QUERY, align 8
  %43 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %44 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %46 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %49 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %51 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %4, %29
  %53 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i64 @handle_event_pass(%struct.module_qstate* %53, i32 %54)
  %56 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %57 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  store i64 %55, i64* %61, align 8
  br label %80

62:                                               ; preds = %4
  %63 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @handle_event_moddone(%struct.module_qstate* %63, i32 %64)
  %66 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %67 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  store i64 %65, i64* %71, align 8
  br label %80

72:                                               ; preds = %4
  %73 = load i64, i64* @module_finished, align 8
  %74 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 %73, i64* %79, align 8
  br label %80

80:                                               ; preds = %72, %62, %52
  %81 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %82 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @module_finished, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %113

90:                                               ; preds = %80
  %91 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 2
  %93 = load %struct.dns64_qstate**, %struct.dns64_qstate*** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.dns64_qstate*, %struct.dns64_qstate** %93, i64 %95
  %97 = load %struct.dns64_qstate*, %struct.dns64_qstate** %96, align 8
  store %struct.dns64_qstate* %97, %struct.dns64_qstate** %9, align 8
  %98 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %99 = icmp ne %struct.dns64_qstate* %98, null
  br i1 %99, label %100, label %112

100:                                              ; preds = %90
  %101 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %102 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DNS64_INTERNAL_QUERY, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %100
  %107 = load %struct.dns64_qstate*, %struct.dns64_qstate** %9, align 8
  %108 = getelementptr inbounds %struct.dns64_qstate, %struct.dns64_qstate* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %111 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  br label %112

112:                                              ; preds = %106, %100, %90
  br label %113

113:                                              ; preds = %112, %80
  ret void
}

declare dso_local i32 @verbose(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @strextstate(i64) #1

declare dso_local i32 @strmodulevent(i32) #1

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i64 @regional_alloc(i32, i32) #1

declare dso_local i64 @handle_event_pass(%struct.module_qstate*, i32) #1

declare dso_local i64 @handle_event_moddone(%struct.module_qstate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
