; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_handle_newq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libworker.c_handle_newq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libworker = type { %struct.TYPE_8__*, %struct.TYPE_9__*, %struct.TYPE_10__*, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.query_info = type { i32* }
%struct.edns_data = type { i32 }
%struct.ctx_query = type { %struct.libworker*, i8* }

@.str = private unnamed_addr constant [27 x i8] c"failed to deserialize newq\00", align 1
@UB_SYNTAX = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i64 0, align 8
@sec_status_insecure = common dso_local global i8* null, align 8
@UB_NOERROR = common dso_local global i32 0, align 4
@libworker_bg_done_cb = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.libworker*, i32*, i32)* @handle_newq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_newq(%struct.libworker* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.libworker*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.query_info, align 8
  %10 = alloca %struct.edns_data, align 4
  %11 = alloca %struct.ctx_query*, align 8
  store %struct.libworker* %0, %struct.libworker** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.libworker*, %struct.libworker** %4, align 8
  %13 = getelementptr inbounds %struct.libworker, %struct.libworker* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %3
  %17 = load %struct.libworker*, %struct.libworker** %4, align 8
  %18 = getelementptr inbounds %struct.libworker, %struct.libworker* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 2
  %21 = call i32 @lock_basic_lock(i32* %20)
  %22 = load %struct.libworker*, %struct.libworker** %4, align 8
  %23 = getelementptr inbounds %struct.libworker, %struct.libworker* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call %struct.ctx_query* @context_lookup_new_query(%struct.TYPE_10__* %24, i32* %25, i32 %26)
  store %struct.ctx_query* %27, %struct.ctx_query** %11, align 8
  %28 = load %struct.libworker*, %struct.libworker** %4, align 8
  %29 = getelementptr inbounds %struct.libworker, %struct.libworker* %28, i32 0, i32 2
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = call i32 @lock_basic_unlock(i32* %31)
  br label %40

33:                                               ; preds = %3
  %34 = load %struct.libworker*, %struct.libworker** %4, align 8
  %35 = getelementptr inbounds %struct.libworker, %struct.libworker* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call %struct.ctx_query* @context_deserialize_new_query(%struct.TYPE_10__* %36, i32* %37, i32 %38)
  store %struct.ctx_query* %39, %struct.ctx_query** %11, align 8
  br label %40

40:                                               ; preds = %33, %16
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @free(i32* %41)
  %43 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %44 = icmp ne %struct.ctx_query* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 @log_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %198

47:                                               ; preds = %40
  %48 = load %struct.libworker*, %struct.libworker** %4, align 8
  %49 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %50 = call i32 @setup_qinfo_edns(%struct.libworker* %48, %struct.ctx_query* %49, %struct.query_info* %9, %struct.edns_data* %10)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load %struct.libworker*, %struct.libworker** %4, align 8
  %54 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %55 = load i32, i32* @UB_SYNTAX, align 4
  %56 = call i32 @add_bg_result(%struct.libworker* %53, %struct.ctx_query* %54, i32* null, i32 %55, i32* null, i32 0)
  br label %198

57:                                               ; preds = %47
  store i64 0, i64* %8, align 8
  %58 = load i64, i64* @BIT_RD, align 8
  store i64 %58, i64* %7, align 8
  %59 = load %struct.libworker*, %struct.libworker** %4, align 8
  %60 = getelementptr inbounds %struct.libworker, %struct.libworker* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @sldns_buffer_write_u16_at(i32* %63, i32 0, i64 %64)
  %66 = load %struct.libworker*, %struct.libworker** %4, align 8
  %67 = getelementptr inbounds %struct.libworker, %struct.libworker* %66, i32 0, i32 0
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @sldns_buffer_write_u16_at(i32* %70, i32 2, i64 %71)
  %73 = load %struct.libworker*, %struct.libworker** %4, align 8
  %74 = getelementptr inbounds %struct.libworker, %struct.libworker* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.libworker*, %struct.libworker** %4, align 8
  %79 = getelementptr inbounds %struct.libworker, %struct.libworker* %78, i32 0, i32 1
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.libworker*, %struct.libworker** %4, align 8
  %82 = getelementptr inbounds %struct.libworker, %struct.libworker* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.libworker*, %struct.libworker** %4, align 8
  %87 = getelementptr inbounds %struct.libworker, %struct.libworker* %86, i32 0, i32 1
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @local_zones_answer(i32 %77, %struct.TYPE_9__* %80, %struct.query_info* %9, %struct.edns_data* %10, i32* %85, i32 %90, i32* null, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null, i32 0, i32* null)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %57
  %94 = load %struct.libworker*, %struct.libworker** %4, align 8
  %95 = getelementptr inbounds %struct.libworker, %struct.libworker* %94, i32 0, i32 1
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @regional_free_all(i32 %98)
  %100 = load i8*, i8** @sec_status_insecure, align 8
  %101 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %102 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %101, i32 0, i32 1
  store i8* %100, i8** %102, align 8
  %103 = load %struct.libworker*, %struct.libworker** %4, align 8
  %104 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %105 = load %struct.libworker*, %struct.libworker** %4, align 8
  %106 = getelementptr inbounds %struct.libworker, %struct.libworker* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @UB_NOERROR, align 4
  %111 = call i32 @add_bg_result(%struct.libworker* %103, %struct.ctx_query* %104, i32* %109, i32 %110, i32* null, i32 0)
  %112 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @free(i32* %113)
  br label %198

115:                                              ; preds = %57
  %116 = load %struct.libworker*, %struct.libworker** %4, align 8
  %117 = getelementptr inbounds %struct.libworker, %struct.libworker* %116, i32 0, i32 2
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %169

124:                                              ; preds = %115
  %125 = load %struct.libworker*, %struct.libworker** %4, align 8
  %126 = getelementptr inbounds %struct.libworker, %struct.libworker* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.libworker*, %struct.libworker** %4, align 8
  %133 = getelementptr inbounds %struct.libworker, %struct.libworker* %132, i32 0, i32 1
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %133, align 8
  %135 = load %struct.libworker*, %struct.libworker** %4, align 8
  %136 = getelementptr inbounds %struct.libworker, %struct.libworker* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.libworker*, %struct.libworker** %4, align 8
  %141 = getelementptr inbounds %struct.libworker, %struct.libworker* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i64 @auth_zones_answer(i64 %131, %struct.TYPE_9__* %134, %struct.query_info* %9, %struct.edns_data* %10, i32* null, i32* %139, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %169

147:                                              ; preds = %124
  %148 = load %struct.libworker*, %struct.libworker** %4, align 8
  %149 = getelementptr inbounds %struct.libworker, %struct.libworker* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @regional_free_all(i32 %152)
  %154 = load i8*, i8** @sec_status_insecure, align 8
  %155 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %156 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load %struct.libworker*, %struct.libworker** %4, align 8
  %158 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %159 = load %struct.libworker*, %struct.libworker** %4, align 8
  %160 = getelementptr inbounds %struct.libworker, %struct.libworker* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* @UB_NOERROR, align 4
  %165 = call i32 @add_bg_result(%struct.libworker* %157, %struct.ctx_query* %158, i32* %163, i32 %164, i32* null, i32 0)
  %166 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @free(i32* %167)
  br label %198

169:                                              ; preds = %124, %115
  %170 = load %struct.libworker*, %struct.libworker** %4, align 8
  %171 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %172 = getelementptr inbounds %struct.ctx_query, %struct.ctx_query* %171, i32 0, i32 0
  store %struct.libworker* %170, %struct.libworker** %172, align 8
  %173 = load %struct.libworker*, %struct.libworker** %4, align 8
  %174 = getelementptr inbounds %struct.libworker, %struct.libworker* %173, i32 0, i32 1
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.libworker*, %struct.libworker** %4, align 8
  %180 = getelementptr inbounds %struct.libworker, %struct.libworker* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i32, i32* @libworker_bg_done_cb, align 4
  %186 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %187 = call i32 @mesh_new_callback(i32 %177, %struct.query_info* %9, i64 %178, %struct.edns_data* %10, i32* %183, i64 %184, i32 %185, %struct.ctx_query* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %194, label %189

189:                                              ; preds = %169
  %190 = load %struct.libworker*, %struct.libworker** %4, align 8
  %191 = load %struct.ctx_query*, %struct.ctx_query** %11, align 8
  %192 = load i32, i32* @UB_NOMEM, align 4
  %193 = call i32 @add_bg_result(%struct.libworker* %190, %struct.ctx_query* %191, i32* null, i32 %192, i32* null, i32 0)
  br label %194

194:                                              ; preds = %189, %169
  %195 = getelementptr inbounds %struct.query_info, %struct.query_info* %9, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @free(i32* %196)
  br label %198

198:                                              ; preds = %194, %147, %93, %52, %45
  ret void
}

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local %struct.ctx_query* @context_lookup_new_query(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local %struct.ctx_query* @context_deserialize_new_query(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @setup_qinfo_edns(%struct.libworker*, %struct.ctx_query*, %struct.query_info*, %struct.edns_data*) #1

declare dso_local i32 @add_bg_result(%struct.libworker*, %struct.ctx_query*, i32*, i32, i32*, i32) #1

declare dso_local i32 @sldns_buffer_write_u16_at(i32*, i32, i64) #1

declare dso_local i64 @local_zones_answer(i32, %struct.TYPE_9__*, %struct.query_info*, %struct.edns_data*, i32*, i32, i32*, i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i64 @auth_zones_answer(i64, %struct.TYPE_9__*, %struct.query_info*, %struct.edns_data*, i32*, i32*, i32) #1

declare dso_local i32 @mesh_new_callback(i32, %struct.query_info*, i64, %struct.edns_data*, i32*, i64, i32, %struct.ctx_query*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
