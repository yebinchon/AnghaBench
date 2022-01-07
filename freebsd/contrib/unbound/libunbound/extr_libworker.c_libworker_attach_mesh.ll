; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_attach_mesh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_attach_mesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.TYPE_5__*, i32, %struct.libworker* }
%struct.TYPE_5__ = type { i64 }
%struct.libworker = type { %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ctx_query = type { i32, %struct.libworker* }
%struct.query_info = type { i32 }
%struct.edns_data = type { i32 }

@UB_INITFAIL = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libworker_attach_mesh(%struct.ub_ctx* %0, %struct.ctx_query* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_ctx*, align 8
  %6 = alloca %struct.ctx_query*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.libworker*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.query_info, align 4
  %12 = alloca %struct.edns_data, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %5, align 8
  store %struct.ctx_query* %1, %struct.ctx_query** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %13, i32 0, i32 2
  %15 = load %struct.libworker*, %struct.libworker** %14, align 8
  store %struct.libworker* %15, %struct.libworker** %8, align 8
  %16 = load %struct.libworker*, %struct.libworker** %8, align 8
  %17 = icmp ne %struct.libworker* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %19, i32* %4, align 4
  br label %166

20:                                               ; preds = %3
  %21 = load %struct.libworker*, %struct.libworker** %8, align 8
  %22 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %23 = call i32 @setup_qinfo_edns(%struct.libworker* %21, %struct.ctx_query* %22, %struct.query_info* %11, %struct.edns_data* %12)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %26, i32* %4, align 4
  br label %166

27:                                               ; preds = %20
  store i64 0, i64* %10, align 8
  %28 = load i64, i64* @BIT_RD, align 8
  store i64 %28, i64* %9, align 8
  %29 = load %struct.libworker*, %struct.libworker** %8, align 8
  %30 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %31 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %30, i32 0, i32 1
  store %struct.libworker* %29, %struct.libworker** %31, align 8
  %32 = load %struct.libworker*, %struct.libworker** %8, align 8
  %33 = getelementptr inbounds %struct.libworker, %struct.libworker* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @sldns_buffer_write_u16_at(i32 %36, i32 0, i64 %37)
  %39 = load %struct.libworker*, %struct.libworker** %8, align 8
  %40 = getelementptr inbounds %struct.libworker, %struct.libworker* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @sldns_buffer_write_u16_at(i32 %43, i32 2, i64 %44)
  %46 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.libworker*, %struct.libworker** %8, align 8
  %50 = getelementptr inbounds %struct.libworker, %struct.libworker* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.libworker*, %struct.libworker** %8, align 8
  %53 = getelementptr inbounds %struct.libworker, %struct.libworker* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.libworker*, %struct.libworker** %8, align 8
  %58 = getelementptr inbounds %struct.libworker, %struct.libworker* %57, i32 0, i32 1
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @local_zones_answer(i32 %48, %struct.TYPE_7__* %51, %struct.query_info* %11, %struct.edns_data* %12, i32 %56, i32 %61, i32* null, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %27
  %65 = load %struct.libworker*, %struct.libworker** %8, align 8
  %66 = getelementptr inbounds %struct.libworker, %struct.libworker* %65, i32 0, i32 1
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @regional_free_all(i32 %69)
  %71 = getelementptr inbounds %struct.query_info, %struct.query_info* %11, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @free(i32 %72)
  %74 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %75 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %76 = load %struct.libworker*, %struct.libworker** %8, align 8
  %77 = getelementptr inbounds %struct.libworker, %struct.libworker* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @sec_status_insecure, align 4
  %82 = call i32 @libworker_event_done_cb(%struct.ctx_query* %74, i32 %75, i32 %80, i32 %81, i32* null, i32 0)
  %83 = load i32, i32* @UB_NOERROR, align 4
  store i32 %83, i32* %4, align 4
  br label %166

84:                                               ; preds = %27
  %85 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %86 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %132

91:                                               ; preds = %84
  %92 = load %struct.ub_ctx*, %struct.ub_ctx** %5, align 8
  %93 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.libworker*, %struct.libworker** %8, align 8
  %98 = getelementptr inbounds %struct.libworker, %struct.libworker* %97, i32 0, i32 1
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load %struct.libworker*, %struct.libworker** %8, align 8
  %101 = getelementptr inbounds %struct.libworker, %struct.libworker* %100, i32 0, i32 0
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.libworker*, %struct.libworker** %8, align 8
  %106 = getelementptr inbounds %struct.libworker, %struct.libworker* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @auth_zones_answer(i64 %96, %struct.TYPE_7__* %99, %struct.query_info* %11, %struct.edns_data* %12, i32* null, i32 %104, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %91
  %113 = load %struct.libworker*, %struct.libworker** %8, align 8
  %114 = getelementptr inbounds %struct.libworker, %struct.libworker* %113, i32 0, i32 1
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regional_free_all(i32 %117)
  %119 = getelementptr inbounds %struct.query_info, %struct.query_info* %11, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @free(i32 %120)
  %122 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %123 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %124 = load %struct.libworker*, %struct.libworker** %8, align 8
  %125 = getelementptr inbounds %struct.libworker, %struct.libworker* %124, i32 0, i32 0
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @sec_status_insecure, align 4
  %130 = call i32 @libworker_event_done_cb(%struct.ctx_query* %122, i32 %123, i32 %128, i32 %129, i32* null, i32 0)
  %131 = load i32, i32* @UB_NOERROR, align 4
  store i32 %131, i32* %4, align 4
  br label %166

132:                                              ; preds = %91, %84
  %133 = load i32*, i32** %7, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %140

135:                                              ; preds = %132
  %136 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %137 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %7, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %132
  %141 = load %struct.libworker*, %struct.libworker** %8, align 8
  %142 = getelementptr inbounds %struct.libworker, %struct.libworker* %141, i32 0, i32 1
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.libworker*, %struct.libworker** %8, align 8
  %148 = getelementptr inbounds %struct.libworker, %struct.libworker* %147, i32 0, i32 0
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.ctx_query*, %struct.ctx_query** %6, align 8
  %154 = call i32 @mesh_new_callback(i32 %145, %struct.query_info* %11, i64 %146, %struct.edns_data* %12, i32 %151, i64 %152, i32 (%struct.ctx_query*, i32, i32, i32, i32*, i32)* @libworker_event_done_cb, %struct.ctx_query* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %161, label %156

156:                                              ; preds = %140
  %157 = getelementptr inbounds %struct.query_info, %struct.query_info* %11, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @free(i32 %158)
  %160 = load i32, i32* @UB_NOMEM, align 4
  store i32 %160, i32* %4, align 4
  br label %166

161:                                              ; preds = %140
  %162 = getelementptr inbounds %struct.query_info, %struct.query_info* %11, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @free(i32 %163)
  %165 = load i32, i32* @UB_NOERROR, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %161, %156, %112, %64, %25, %18
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @setup_qinfo_edns(%struct.libworker*, %struct.ctx_query*, %struct.query_info*, %struct.edns_data*) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32, i32, i64) #1

declare dso_local i64 @local_zones_answer(i32, %struct.TYPE_7__*, %struct.query_info*, %struct.edns_data*, i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @libworker_event_done_cb(%struct.ctx_query*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @auth_zones_answer(i64, %struct.TYPE_7__*, %struct.query_info*, %struct.edns_data*, i32*, i32, i32) #1

declare dso_local i32 @mesh_new_callback(i32, %struct.query_info*, i64, %struct.edns_data*, i32, i64, i32 (%struct.ctx_query*, i32, i32, i32, i32*, i32)*, %struct.ctx_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
