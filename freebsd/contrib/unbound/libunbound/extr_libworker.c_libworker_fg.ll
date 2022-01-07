; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_fg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_libworker_fg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ctx_query = type { %struct.libworker* }
%struct.libworker = type { i32, %struct.TYPE_6__*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.query_info = type { i32 }
%struct.edns_data = type { i32 }

@UB_INITFAIL = common dso_local global i32 0, align 4
@UB_SYNTAX = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@sec_status_insecure = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4
@libworker_fg_done_cb = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @libworker_fg(%struct.ub_ctx* %0, %struct.ctx_query* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_ctx*, align 8
  %5 = alloca %struct.ctx_query*, align 8
  %6 = alloca %struct.libworker*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.query_info, align 4
  %10 = alloca %struct.edns_data, align 4
  store %struct.ub_ctx* %0, %struct.ub_ctx** %4, align 8
  store %struct.ctx_query* %1, %struct.ctx_query** %5, align 8
  %11 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %12 = call %struct.libworker* @libworker_setup(%struct.ub_ctx* %11, i32 0, i32* null)
  store %struct.libworker* %12, %struct.libworker** %6, align 8
  %13 = load %struct.libworker*, %struct.libworker** %6, align 8
  %14 = icmp ne %struct.libworker* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %16, i32* %3, align 4
  br label %168

17:                                               ; preds = %2
  %18 = load %struct.libworker*, %struct.libworker** %6, align 8
  %19 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  %20 = call i32 @setup_qinfo_edns(%struct.libworker* %18, %struct.ctx_query* %19, %struct.query_info* %9, %struct.edns_data* %10)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %17
  %23 = load %struct.libworker*, %struct.libworker** %6, align 8
  %24 = call i32 @libworker_delete(%struct.libworker* %23)
  %25 = load i32, i32* @UB_SYNTAX, align 4
  store i32 %25, i32* %3, align 4
  br label %168

26:                                               ; preds = %17
  store i64 0, i64* %8, align 8
  %27 = load i64, i64* @BIT_RD, align 8
  store i64 %27, i64* %7, align 8
  %28 = load %struct.libworker*, %struct.libworker** %6, align 8
  %29 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  %30 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %29, i32 0, i32 0
  store %struct.libworker* %28, %struct.libworker** %30, align 8
  %31 = load %struct.libworker*, %struct.libworker** %6, align 8
  %32 = getelementptr inbounds %struct.libworker, %struct.libworker* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @sldns_buffer_write_u16_at(i32 %35, i32 0, i64 %36)
  %38 = load %struct.libworker*, %struct.libworker** %6, align 8
  %39 = getelementptr inbounds %struct.libworker, %struct.libworker* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @sldns_buffer_write_u16_at(i32 %42, i32 2, i64 %43)
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.libworker*, %struct.libworker** %6, align 8
  %49 = getelementptr inbounds %struct.libworker, %struct.libworker* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load %struct.libworker*, %struct.libworker** %6, align 8
  %52 = getelementptr inbounds %struct.libworker, %struct.libworker* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.libworker*, %struct.libworker** %6, align 8
  %57 = getelementptr inbounds %struct.libworker, %struct.libworker* %56, i32 0, i32 2
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @local_zones_answer(i32 %47, %struct.TYPE_7__* %50, %struct.query_info* %9, %struct.edns_data* %10, i32 %55, i32 %60, i32* null, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %26
  %64 = load %struct.libworker*, %struct.libworker** %6, align 8
  %65 = getelementptr inbounds %struct.libworker, %struct.libworker* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @regional_free_all(i32 %68)
  %70 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  %71 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %72 = load %struct.libworker*, %struct.libworker** %6, align 8
  %73 = getelementptr inbounds %struct.libworker, %struct.libworker* %72, i32 0, i32 1
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @sec_status_insecure, align 4
  %78 = call i32 @libworker_fillup_fg(%struct.ctx_query* %70, i32 %71, i32 %76, i32 %77, i32* null, i32 0)
  %79 = load %struct.libworker*, %struct.libworker** %6, align 8
  %80 = call i32 @libworker_delete(%struct.libworker* %79)
  %81 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @free(i32 %82)
  %84 = load i32, i32* @UB_NOERROR, align 4
  store i32 %84, i32* %3, align 4
  br label %168

85:                                               ; preds = %26
  %86 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %135

92:                                               ; preds = %85
  %93 = load %struct.ub_ctx*, %struct.ub_ctx** %4, align 8
  %94 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.libworker*, %struct.libworker** %6, align 8
  %99 = getelementptr inbounds %struct.libworker, %struct.libworker* %98, i32 0, i32 2
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = load %struct.libworker*, %struct.libworker** %6, align 8
  %102 = getelementptr inbounds %struct.libworker, %struct.libworker* %101, i32 0, i32 1
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.libworker*, %struct.libworker** %6, align 8
  %107 = getelementptr inbounds %struct.libworker, %struct.libworker* %106, i32 0, i32 2
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @auth_zones_answer(i64 %97, %struct.TYPE_7__* %100, %struct.query_info* %9, %struct.edns_data* %10, i32* null, i32 %105, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %92
  %114 = load %struct.libworker*, %struct.libworker** %6, align 8
  %115 = getelementptr inbounds %struct.libworker, %struct.libworker* %114, i32 0, i32 2
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @regional_free_all(i32 %118)
  %120 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  %121 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %122 = load %struct.libworker*, %struct.libworker** %6, align 8
  %123 = getelementptr inbounds %struct.libworker, %struct.libworker* %122, i32 0, i32 1
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @sec_status_insecure, align 4
  %128 = call i32 @libworker_fillup_fg(%struct.ctx_query* %120, i32 %121, i32 %126, i32 %127, i32* null, i32 0)
  %129 = load %struct.libworker*, %struct.libworker** %6, align 8
  %130 = call i32 @libworker_delete(%struct.libworker* %129)
  %131 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @free(i32 %132)
  %134 = load i32, i32* @UB_NOERROR, align 4
  store i32 %134, i32* %3, align 4
  br label %168

135:                                              ; preds = %92, %85
  %136 = load %struct.libworker*, %struct.libworker** %6, align 8
  %137 = getelementptr inbounds %struct.libworker, %struct.libworker* %136, i32 0, i32 2
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.libworker*, %struct.libworker** %6, align 8
  %143 = getelementptr inbounds %struct.libworker, %struct.libworker* %142, i32 0, i32 1
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i64, i64* %8, align 8
  %148 = load i32, i32* @libworker_fg_done_cb, align 4
  %149 = load %struct.ctx_query*, %struct.ctx_query** %5, align 8
  %150 = call i32 @mesh_new_callback(i32 %140, %struct.query_info* %9, i64 %141, %struct.edns_data* %10, i32 %146, i64 %147, i32 %148, %struct.ctx_query* %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %135
  %153 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @free(i32 %154)
  %156 = load i32, i32* @UB_NOMEM, align 4
  store i32 %156, i32* %3, align 4
  br label %168

157:                                              ; preds = %135
  %158 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @free(i32 %159)
  %161 = load %struct.libworker*, %struct.libworker** %6, align 8
  %162 = getelementptr inbounds %struct.libworker, %struct.libworker* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @comm_base_dispatch(i32 %163)
  %165 = load %struct.libworker*, %struct.libworker** %6, align 8
  %166 = call i32 @libworker_delete(%struct.libworker* %165)
  %167 = load i32, i32* @UB_NOERROR, align 4
  store i32 %167, i32* %3, align 4
  br label %168

168:                                              ; preds = %157, %152, %113, %63, %22, %15
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.libworker* @libworker_setup(%struct.ub_ctx*, i32, i32*) #1

declare dso_local i32 @setup_qinfo_edns(%struct.libworker*, %struct.ctx_query*, %struct.query_info*, %struct.edns_data*) #1

declare dso_local i32 @libworker_delete(%struct.libworker*) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32, i32, i64) #1

declare dso_local i64 @local_zones_answer(i32, %struct.TYPE_7__*, %struct.query_info*, %struct.edns_data*, i32, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i32 @libworker_fillup_fg(%struct.ctx_query*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @free(i32) #1

declare dso_local i64 @auth_zones_answer(i64, %struct.TYPE_7__*, %struct.query_info*, %struct.edns_data*, i32*, i32, i32) #1

declare dso_local i32 @mesh_new_callback(i32, %struct.query_info*, i64, %struct.edns_data*, i32, i64, i32, %struct.ctx_query*) #1

declare dso_local i32 @comm_base_dispatch(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
