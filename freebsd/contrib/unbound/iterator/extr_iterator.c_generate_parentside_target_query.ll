; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_parentside_target_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_generate_parentside_target_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_8__, %struct.TYPE_9__*, i64, i32, i32, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64* }
%struct.iter_qstate = type { i32, i32, %struct.TYPE_10__*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }

@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@FINISHED_STATE = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"new pside target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, i32, i32*, i64, i32, i32)* @generate_parentside_target_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_parentside_target_query(%struct.module_qstate* %0, %struct.iter_qstate* %1, i32 %2, i32* %3, i64 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.module_qstate*, align 8
  %10 = alloca %struct.iter_qstate*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.module_qstate*, align 8
  %17 = alloca %struct.iter_qstate*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %9, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i32*, i32** %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = load i32, i32* %14, align 4
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.module_qstate*, %struct.module_qstate** %9, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %25 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %26 = load i32, i32* @FINISHED_STATE, align 4
  %27 = call i32 @generate_sub_request(i32* %18, i64 %19, i32 %20, i32 %21, %struct.module_qstate* %22, i32 %23, %struct.iter_qstate* %24, i32 %25, i32 %26, %struct.module_qstate** %16, i32 0)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %137

30:                                               ; preds = %7
  %31 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %32 = icmp ne %struct.module_qstate* %31, null
  br i1 %32, label %33, label %131

33:                                               ; preds = %30
  %34 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %35 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %34, i32 0, i32 5
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.iter_qstate*
  store %struct.iter_qstate* %41, %struct.iter_qstate** %17, align 8
  %42 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %43 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %42, i32 0, i32 4
  %44 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %45 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sock_list_insert(i32* %43, i32* null, i32 0, i32 %46)
  %48 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %49 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %52 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %51, i32 0, i32 2
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @dname_subdomain_c(i32* %50, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %83

58:                                               ; preds = %33
  %59 = load %struct.iter_qstate*, %struct.iter_qstate** %10, align 8
  %60 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %59, i32 0, i32 2
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %63 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call %struct.TYPE_10__* @delegpt_copy(%struct.TYPE_10__* %61, i32 %64)
  %66 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %67 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %66, i32 0, i32 2
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %67, align 8
  %68 = load %struct.module_qstate*, %struct.module_qstate** %9, align 8
  %69 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %68, i32 0, i32 1
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %72 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i8* @iter_indicates_dnssec(%struct.TYPE_9__* %70, %struct.TYPE_10__* %73, i32* null, i32 %77)
  %79 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %80 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %79, i32 0, i32 3
  store i8* %78, i8** %80, align 8
  %81 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %82 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  br label %130

83:                                               ; preds = %33
  %84 = load %struct.module_qstate*, %struct.module_qstate** %9, align 8
  %85 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = load i32*, i32** %12, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %15, align 4
  %91 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %92 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %95 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %94, i32 0, i32 4
  %96 = load %struct.module_qstate*, %struct.module_qstate** %9, align 8
  %97 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = add nsw i64 %101, %104
  %106 = call %struct.TYPE_10__* @dns_cache_find_delegation(%struct.TYPE_9__* %86, i32* %87, i64 %88, i32 %89, i32 %90, i32 %93, i32* %95, i64 %105)
  %107 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %108 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %107, i32 0, i32 2
  store %struct.TYPE_10__* %106, %struct.TYPE_10__** %108, align 8
  %109 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %110 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %109, i32 0, i32 2
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = icmp ne %struct.TYPE_10__* %111, null
  br i1 %112, label %113, label %129

113:                                              ; preds = %83
  %114 = load %struct.module_qstate*, %struct.module_qstate** %9, align 8
  %115 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %114, i32 0, i32 1
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %115, align 8
  %117 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %118 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = load %struct.module_qstate*, %struct.module_qstate** %16, align 8
  %121 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i8* @iter_indicates_dnssec(%struct.TYPE_9__* %116, %struct.TYPE_10__* %119, i32* null, i32 %123)
  %125 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %126 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %125, i32 0, i32 3
  store i8* %124, i8** %126, align 8
  %127 = load %struct.iter_qstate*, %struct.iter_qstate** %17, align 8
  %128 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %127, i32 0, i32 1
  store i32 1, i32* %128, align 4
  br label %129

129:                                              ; preds = %113, %83
  br label %130

130:                                              ; preds = %129, %58
  br label %131

131:                                              ; preds = %130, %30
  %132 = load i32, i32* @VERB_QUERY, align 4
  %133 = load i32*, i32** %12, align 8
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = call i32 @log_nametypeclass(i32 %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %133, i32 %134, i32 %135)
  store i32 1, i32* %8, align 4
  br label %137

137:                                              ; preds = %131, %29
  %138 = load i32, i32* %8, align 4
  ret i32 %138
}

declare dso_local i32 @generate_sub_request(i32*, i64, i32, i32, %struct.module_qstate*, i32, %struct.iter_qstate*, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @sock_list_insert(i32*, i32*, i32, i32) #1

declare dso_local i64 @dname_subdomain_c(i32*, i32) #1

declare dso_local %struct.TYPE_10__* @delegpt_copy(%struct.TYPE_10__*, i32) #1

declare dso_local i8* @iter_indicates_dnssec(%struct.TYPE_9__*, %struct.TYPE_10__*, i32*, i32) #1

declare dso_local %struct.TYPE_10__* @dns_cache_find_delegation(%struct.TYPE_9__*, i32*, i64, i32, i32, i32, i32*, i64) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
