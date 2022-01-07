; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_finalize.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_context.c_context_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, %struct.TYPE_3__*, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.config_file*, i32, i32 }
%struct.config_file = type { i32, i32, i32, i32, i32, i32 }

@verbosity = common dso_local global i32 0, align 4
@UB_INITFAIL = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@UB_NOMEM = common dso_local global i32 0, align 4
@HASH_DEFAULT_STARTARRAY = common dso_local global i32 0, align 4
@msgreply_sizefunc = common dso_local global i32 0, align 4
@query_info_compare = common dso_local global i32 0, align 4
@query_entry_delete = common dso_local global i32 0, align 4
@reply_info_delete = common dso_local global i32 0, align 4
@UB_NOERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @context_finalize(%struct.ub_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_ctx*, align 8
  %4 = alloca %struct.config_file*, align 8
  store %struct.ub_ctx* %0, %struct.ub_ctx** %3, align 8
  %5 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %6 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load %struct.config_file*, %struct.config_file** %8, align 8
  store %struct.config_file* %9, %struct.config_file** %4, align 8
  %10 = load %struct.config_file*, %struct.config_file** %4, align 8
  %11 = getelementptr inbounds %struct.config_file, %struct.config_file* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @verbosity, align 4
  %13 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %13, i32 0, i32 5
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @log_file(i32 %20)
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.config_file*, %struct.config_file** %4, align 8
  %24 = getelementptr inbounds %struct.config_file, %struct.config_file* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.config_file*, %struct.config_file** %4, align 8
  %27 = getelementptr inbounds %struct.config_file, %struct.config_file* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @log_init(i32 %25, i32 %28, i32* null)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.config_file*, %struct.config_file** %4, align 8
  %32 = call i32 @config_apply(%struct.config_file* %31)
  %33 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %33, i32 0, i32 3
  %35 = load %struct.config_file*, %struct.config_file** %4, align 8
  %36 = getelementptr inbounds %struct.config_file, %struct.config_file* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %39 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @modstack_setup(i32* %34, i32 %37, %struct.TYPE_3__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %30
  %44 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %44, i32* %2, align 4
  br label %179

45:                                               ; preds = %30
  %46 = load i32, i32* @VERB_ALGO, align 4
  %47 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = call i32 @log_edns_known_options(i32 %46, %struct.TYPE_3__* %49)
  %51 = call i32 (...) @local_zones_create()
  %52 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %53 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* @UB_NOMEM, align 4
  store i32 %59, i32* %2, align 4
  br label %179

60:                                               ; preds = %45
  %61 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.config_file*, %struct.config_file** %4, align 8
  %65 = call i32 @local_zones_apply_cfg(i32 %63, %struct.config_file* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %68, i32* %2, align 4
  br label %179

69:                                               ; preds = %60
  %70 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %71 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.config_file*, %struct.config_file** %4, align 8
  %76 = call i32 @auth_zones_apply_cfg(i32 %74, %struct.config_file* %75, i32 1)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* @UB_INITFAIL, align 4
  store i32 %79, i32* %2, align 4
  br label %179

80:                                               ; preds = %69
  %81 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %82 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.config_file*, %struct.config_file** %4, align 8
  %87 = getelementptr inbounds %struct.config_file, %struct.config_file* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.config_file*, %struct.config_file** %4, align 8
  %90 = getelementptr inbounds %struct.config_file, %struct.config_file* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @slabhash_is_size(i32 %85, i32 %88, i32 %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %126, label %94

94:                                               ; preds = %80
  %95 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @slabhash_delete(i32 %99)
  %101 = load %struct.config_file*, %struct.config_file** %4, align 8
  %102 = getelementptr inbounds %struct.config_file, %struct.config_file* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @HASH_DEFAULT_STARTARRAY, align 4
  %105 = load %struct.config_file*, %struct.config_file** %4, align 8
  %106 = getelementptr inbounds %struct.config_file, %struct.config_file* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @msgreply_sizefunc, align 4
  %109 = load i32, i32* @query_info_compare, align 4
  %110 = load i32, i32* @query_entry_delete, align 4
  %111 = load i32, i32* @reply_info_delete, align 4
  %112 = call i32 @slabhash_create(i32 %103, i32 %104, i32 %107, i32 %108, i32 %109, i32 %110, i32 %111, i32* null)
  %113 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %114 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 4
  store i32 %112, i32* %116, align 8
  %117 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %118 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %117, i32 0, i32 1
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %94
  %124 = load i32, i32* @UB_NOMEM, align 4
  store i32 %124, i32* %2, align 4
  br label %179

125:                                              ; preds = %94
  br label %126

126:                                              ; preds = %125, %80
  %127 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %133 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %132, i32 0, i32 1
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 3
  %136 = load %struct.config_file*, %struct.config_file** %135, align 8
  %137 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @rrset_cache_adjust(i32 %131, %struct.config_file* %136, i32 %141)
  %143 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i32 %142, i32* %146, align 4
  %147 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %148 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %147, i32 0, i32 1
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %155, label %153

153:                                              ; preds = %126
  %154 = load i32, i32* @UB_NOMEM, align 4
  store i32 %154, i32* %2, align 4
  br label %179

155:                                              ; preds = %126
  %156 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %157 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.config_file*, %struct.config_file** %4, align 8
  %162 = call i32 @infra_adjust(i32 %160, %struct.config_file* %161)
  %163 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %164 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %163, i32 0, i32 1
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 0
  store i32 %162, i32* %166, align 8
  %167 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %168 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %167, i32 0, i32 1
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %175, label %173

173:                                              ; preds = %155
  %174 = load i32, i32* @UB_NOMEM, align 4
  store i32 %174, i32* %2, align 4
  br label %179

175:                                              ; preds = %155
  %176 = load %struct.ub_ctx*, %struct.ub_ctx** %3, align 8
  %177 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load i32, i32* @UB_NOERROR, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %175, %173, %153, %123, %78, %67, %58, %43
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @log_file(i32) #1

declare dso_local i32 @log_init(i32, i32, i32*) #1

declare dso_local i32 @config_apply(%struct.config_file*) #1

declare dso_local i32 @modstack_setup(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @log_edns_known_options(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @local_zones_create(...) #1

declare dso_local i32 @local_zones_apply_cfg(i32, %struct.config_file*) #1

declare dso_local i32 @auth_zones_apply_cfg(i32, %struct.config_file*, i32) #1

declare dso_local i32 @slabhash_is_size(i32, i32, i32) #1

declare dso_local i32 @slabhash_delete(i32) #1

declare dso_local i32 @slabhash_create(i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rrset_cache_adjust(i32, %struct.config_file*, i32) #1

declare dso_local i32 @infra_adjust(i32, %struct.config_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
