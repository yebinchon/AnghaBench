; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_process_answer_detail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_process_answer_detail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i32 }
%struct.ub_result = type { i32, i32*, i32 }
%struct.ctx_query = type { %struct.TYPE_2__, %struct.ub_result*, i32*, i64, i32, i8*, i32*, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.regional = type { i32 }

@UB_LIBCMD_ANSWER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"error: bad data from bg worker %d\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_ctx*, i32*, i32, i32**, i8**, i32*, %struct.ub_result**)* @process_answer_detail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_answer_detail(%struct.ub_ctx* %0, i32* %1, i32 %2, i32** %3, i8** %4, i32* %5, %struct.ub_result** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ub_ctx*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.ub_result**, align 8
  %16 = alloca %struct.ctx_query*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.regional*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32** %3, i32*** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.ub_result** %6, %struct.ub_result*** %15, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %11, align 4
  %21 = call i64 @context_serial_getcmd(i32* %19, i32 %20)
  %22 = load i64, i64* @UB_LIBCMD_ANSWER, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %7
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @context_serial_getcmd(i32* %25, i32 %26)
  %28 = trunc i64 %27 to i32
  %29 = call i32 @log_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 0, i32* %8, align 4
  br label %163

30:                                               ; preds = %7
  %31 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %32 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %31, i32 0, i32 0
  %33 = call i32 @lock_basic_lock(i32* %32)
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = call %struct.ctx_query* @context_deserialize_answer(%struct.ub_ctx* %34, i32* %35, i32 %36, i32* %37)
  store %struct.ctx_query* %38, %struct.ctx_query** %16, align 8
  %39 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %40 = icmp ne %struct.ctx_query* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %43 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %42, i32 0, i32 0
  %44 = call i32 @lock_basic_unlock(i32* %43)
  store i32 1, i32* %8, align 4
  br label %163

45:                                               ; preds = %30
  %46 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %47 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @log_assert(i32 %48)
  %50 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %51 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32**, i32*** %12, align 8
  store i32* null, i32** %55, align 8
  %56 = load i8**, i8*** %13, align 8
  store i8* null, i8** %56, align 8
  br label %66

57:                                               ; preds = %45
  %58 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %59 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %58, i32 0, i32 6
  %60 = load i32*, i32** %59, align 8
  %61 = load i32**, i32*** %12, align 8
  store i32* %60, i32** %61, align 8
  %62 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %63 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %62, i32 0, i32 5
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %13, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i32*, i32** %14, align 8
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  store %struct.ub_result* null, %struct.ub_result** %71, align 8
  %72 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %73 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %72, i32 0, i32 1
  %74 = load %struct.ub_result*, %struct.ub_result** %73, align 8
  %75 = call i32 @ub_resolve_free(%struct.ub_result* %74)
  br label %136

76:                                               ; preds = %66
  %77 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %78 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = call i32* @sldns_buffer_new(i64 %79)
  store i32* %80, i32** %17, align 8
  %81 = call %struct.regional* (...) @regional_create()
  store %struct.regional* %81, %struct.regional** %18, align 8
  %82 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %83 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %82, i32 0, i32 1
  %84 = load %struct.ub_result*, %struct.ub_result** %83, align 8
  %85 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  store %struct.ub_result* %84, %struct.ub_result** %85, align 8
  %86 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %87 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  %88 = load %struct.ub_result*, %struct.ub_result** %87, align 8
  %89 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %88, i32 0, i32 2
  store i32 %86, i32* %89, align 8
  %90 = load %struct.regional*, %struct.regional** %18, align 8
  %91 = icmp ne %struct.regional* %90, null
  br i1 %91, label %92, label %116

92:                                               ; preds = %76
  %93 = load i32*, i32** %17, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %116

95:                                               ; preds = %92
  %96 = load i32*, i32** %17, align 8
  %97 = call i32 @sldns_buffer_clear(i32* %96)
  %98 = load i32*, i32** %17, align 8
  %99 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %100 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %103 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %102, i32 0, i32 3
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @sldns_buffer_write(i32* %98, i32* %101, i64 %104)
  %106 = load i32*, i32** %17, align 8
  %107 = call i32 @sldns_buffer_flip(i32* %106)
  %108 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  %109 = load %struct.ub_result*, %struct.ub_result** %108, align 8
  %110 = load i32*, i32** %17, align 8
  %111 = load %struct.regional*, %struct.regional** %18, align 8
  %112 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %113 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @libworker_enter_result(%struct.ub_result* %109, i32* %110, %struct.regional* %111, i32 %114)
  br label %116

116:                                              ; preds = %95, %92, %76
  %117 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %118 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  %121 = load %struct.ub_result*, %struct.ub_result** %120, align 8
  %122 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %121, i32 0, i32 1
  store i32* %119, i32** %122, align 8
  %123 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %124 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  %128 = load %struct.ub_result*, %struct.ub_result** %127, align 8
  %129 = getelementptr inbounds %struct.ub_result, %struct.ub_result* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 8
  %130 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %131 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load i32*, i32** %17, align 8
  %133 = call i32 @sldns_buffer_free(i32* %132)
  %134 = load %struct.regional*, %struct.regional** %18, align 8
  %135 = call i32 @regional_destroy(%struct.regional* %134)
  br label %136

136:                                              ; preds = %116, %70
  %137 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %138 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %137, i32 0, i32 1
  store %struct.ub_result* null, %struct.ub_result** %138, align 8
  %139 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %140 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %139, i32 0, i32 2
  %141 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %142 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @rbtree_delete(i32* %140, i32 %144)
  %146 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %147 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, -1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.ctx_query*, %struct.ctx_query** %16, align 8
  %151 = call i32 @context_query_delete(%struct.ctx_query* %150)
  %152 = load %struct.ub_ctx*, %struct.ub_ctx** %9, align 8
  %153 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %152, i32 0, i32 0
  %154 = call i32 @lock_basic_unlock(i32* %153)
  %155 = load i32**, i32*** %12, align 8
  %156 = load i32*, i32** %155, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %136
  store i32 2, i32* %8, align 4
  br label %163

159:                                              ; preds = %136
  %160 = load %struct.ub_result**, %struct.ub_result*** %15, align 8
  %161 = load %struct.ub_result*, %struct.ub_result** %160, align 8
  %162 = call i32 @ub_resolve_free(%struct.ub_result* %161)
  store i32 1, i32* %8, align 4
  br label %163

163:                                              ; preds = %159, %158, %41, %24
  %164 = load i32, i32* %8, align 4
  ret i32 %164
}

declare dso_local i64 @context_serial_getcmd(i32*, i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.ctx_query* @context_deserialize_answer(%struct.ub_ctx*, i32*, i32, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @ub_resolve_free(%struct.ub_result*) #1

declare dso_local i32* @sldns_buffer_new(i64) #1

declare dso_local %struct.regional* @regional_create(...) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i64) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i32 @libworker_enter_result(%struct.ub_result*, i32*, %struct.regional*, i32) #1

declare dso_local i32 @sldns_buffer_free(i32*) #1

declare dso_local i32 @regional_destroy(%struct.regional*) #1

declare dso_local i32 @rbtree_delete(i32*, i32) #1

declare dso_local i32 @context_query_delete(%struct.ctx_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
