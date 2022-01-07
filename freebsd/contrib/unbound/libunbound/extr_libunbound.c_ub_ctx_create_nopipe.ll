; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create_nopipe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/libunbound/extr_libunbound.c_ub_ctx_create_nopipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_ctx = type { i32, i32, i64, %struct.ub_ctx*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.module_env = type { i32, i32, i64, %struct.module_env*, i32*, i32, i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"libunbound\00", align 1
@verbosity = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@context_query_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_ctx* ()* @ub_ctx_create_nopipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_ctx* @ub_ctx_create_nopipe() #0 {
  %1 = alloca %struct.ub_ctx*, align 8
  %2 = alloca %struct.ub_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @checklock_start()
  %5 = call i32 @log_init(i32* null, i32 0, i32* null)
  %6 = call i32 @log_ident_set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @verbosity, align 8
  %7 = call i32 (...) @checklock_start()
  %8 = call i64 @calloc(i32 1, i32 72)
  %9 = inttoptr i64 %8 to %struct.ub_ctx*
  store %struct.ub_ctx* %9, %struct.ub_ctx** %2, align 8
  %10 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %11 = icmp ne %struct.ub_ctx* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* @ENOMEM, align 4
  store i32 %13, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

14:                                               ; preds = %0
  %15 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %15, i32 0, i32 5
  %17 = call i32 @alloc_init(i32* %16, i32* null, i32 0)
  %18 = call i64 @time(i32* null)
  %19 = trunc i64 %18 to i32
  %20 = call i64 (...) @getpid()
  %21 = trunc i64 %20 to i32
  %22 = xor i32 %19, %21
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @ub_initstate(i32 %23, i32* null)
  %25 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %25, i32 0, i32 7
  store i32 %24, i32* %26, align 8
  %27 = icmp ne i32 %24, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %14
  %29 = call i32 @explicit_bzero(i32* %3, i32 4)
  %30 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ub_randfree(i32 %32)
  %34 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %35 = call i32 @free(%struct.ub_ctx* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  store i32 %36, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

37:                                               ; preds = %14
  %38 = call i32 @explicit_bzero(i32* %3, i32 4)
  %39 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %40 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %39, i32 0, i32 12
  %41 = call i32 @lock_basic_init(i32* %40)
  %42 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %43 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %42, i32 0, i32 11
  %44 = call i32 @lock_basic_init(i32* %43)
  %45 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %45, i32 0, i32 10
  %47 = call i32 @lock_basic_init(i32* %46)
  %48 = call i64 @calloc(i32 1, i32 72)
  %49 = inttoptr i64 %48 to %struct.module_env*
  %50 = bitcast %struct.module_env* %49 to %struct.ub_ctx*
  %51 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %51, i32 0, i32 3
  store %struct.ub_ctx* %50, %struct.ub_ctx** %52, align 8
  %53 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %54 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %53, i32 0, i32 3
  %55 = load %struct.ub_ctx*, %struct.ub_ctx** %54, align 8
  %56 = icmp ne %struct.ub_ctx* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %37
  %58 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %59 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %58, i32 0, i32 7
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ub_randfree(i32 %60)
  %62 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %63 = call i32 @free(%struct.ub_ctx* %62)
  %64 = load i32, i32* @ENOMEM, align 4
  store i32 %64, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

65:                                               ; preds = %37
  %66 = call i32 (...) @config_create_forlib()
  %67 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %67, i32 0, i32 3
  %69 = load %struct.ub_ctx*, %struct.ub_ctx** %68, align 8
  %70 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %69, i32 0, i32 8
  store i32 %66, i32* %70, align 4
  %71 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %71, i32 0, i32 3
  %73 = load %struct.ub_ctx*, %struct.ub_ctx** %72, align 8
  %74 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %73, i32 0, i32 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %89, label %77

77:                                               ; preds = %65
  %78 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %78, i32 0, i32 3
  %80 = load %struct.ub_ctx*, %struct.ub_ctx** %79, align 8
  %81 = call i32 @free(%struct.ub_ctx* %80)
  %82 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %83 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @ub_randfree(i32 %84)
  %86 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %87 = call i32 @free(%struct.ub_ctx* %86)
  %88 = load i32, i32* @ENOMEM, align 4
  store i32 %88, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

89:                                               ; preds = %65
  %90 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %91 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %90, i32 0, i32 3
  %92 = load %struct.ub_ctx*, %struct.ub_ctx** %91, align 8
  %93 = call i32 @edns_known_options_init(%struct.ub_ctx* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %113, label %95

95:                                               ; preds = %89
  %96 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %97 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %96, i32 0, i32 3
  %98 = load %struct.ub_ctx*, %struct.ub_ctx** %97, align 8
  %99 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @config_delete(i32 %100)
  %102 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %102, i32 0, i32 3
  %104 = load %struct.ub_ctx*, %struct.ub_ctx** %103, align 8
  %105 = call i32 @free(%struct.ub_ctx* %104)
  %106 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %107 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @ub_randfree(i32 %108)
  %110 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %111 = call i32 @free(%struct.ub_ctx* %110)
  %112 = load i32, i32* @ENOMEM, align 4
  store i32 %112, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

113:                                              ; preds = %89
  %114 = call i32 (...) @auth_zones_create()
  %115 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %115, i32 0, i32 3
  %117 = load %struct.ub_ctx*, %struct.ub_ctx** %116, align 8
  %118 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %117, i32 0, i32 9
  store i32 %114, i32* %118, align 8
  %119 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %120 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %119, i32 0, i32 3
  %121 = load %struct.ub_ctx*, %struct.ub_ctx** %120, align 8
  %122 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %147, label %125

125:                                              ; preds = %113
  %126 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %127 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %126, i32 0, i32 3
  %128 = load %struct.ub_ctx*, %struct.ub_ctx** %127, align 8
  %129 = call i32 @edns_known_options_delete(%struct.ub_ctx* %128)
  %130 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %131 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %130, i32 0, i32 3
  %132 = load %struct.ub_ctx*, %struct.ub_ctx** %131, align 8
  %133 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %132, i32 0, i32 8
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @config_delete(i32 %134)
  %136 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %137 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %136, i32 0, i32 3
  %138 = load %struct.ub_ctx*, %struct.ub_ctx** %137, align 8
  %139 = call i32 @free(%struct.ub_ctx* %138)
  %140 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %141 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ub_randfree(i32 %142)
  %144 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %145 = call i32 @free(%struct.ub_ctx* %144)
  %146 = load i32, i32* @ENOMEM, align 4
  store i32 %146, i32* @errno, align 4
  store %struct.ub_ctx* null, %struct.ub_ctx** %1, align 8
  br label %169

147:                                              ; preds = %113
  %148 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %149 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %148, i32 0, i32 5
  %150 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %151 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %150, i32 0, i32 3
  %152 = load %struct.ub_ctx*, %struct.ub_ctx** %151, align 8
  %153 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %152, i32 0, i32 6
  store i32* %149, i32** %153, align 8
  %154 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %155 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %154, i32 0, i32 3
  %156 = load %struct.ub_ctx*, %struct.ub_ctx** %155, align 8
  %157 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %156, i32 0, i32 4
  store i32* null, i32** %157, align 8
  %158 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %159 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %158, i32 0, i32 3
  %160 = load %struct.ub_ctx*, %struct.ub_ctx** %159, align 8
  %161 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %160, i32 0, i32 2
  store i64 0, i64* %161, align 8
  %162 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %163 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %162, i32 0, i32 1
  %164 = call i32 @modstack_init(i32* %163)
  %165 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  %166 = getelementptr inbounds %struct.ub_ctx, %struct.ub_ctx* %165, i32 0, i32 0
  %167 = call i32 @rbtree_init(i32* %166, i32* @context_query_cmp)
  %168 = load %struct.ub_ctx*, %struct.ub_ctx** %2, align 8
  store %struct.ub_ctx* %168, %struct.ub_ctx** %1, align 8
  br label %169

169:                                              ; preds = %147, %125, %95, %77, %57, %28, %12
  %170 = load %struct.ub_ctx*, %struct.ub_ctx** %1, align 8
  ret %struct.ub_ctx* %170
}

declare dso_local i32 @checklock_start(...) #1

declare dso_local i32 @log_init(i32*, i32, i32*) #1

declare dso_local i32 @log_ident_set(i8*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @alloc_init(i32*, i32*, i32) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @ub_initstate(i32, i32*) #1

declare dso_local i32 @explicit_bzero(i32*, i32) #1

declare dso_local i32 @ub_randfree(i32) #1

declare dso_local i32 @free(%struct.ub_ctx*) #1

declare dso_local i32 @lock_basic_init(i32*) #1

declare dso_local i32 @config_create_forlib(...) #1

declare dso_local i32 @edns_known_options_init(%struct.ub_ctx*) #1

declare dso_local i32 @config_delete(i32) #1

declare dso_local i32 @auth_zones_create(...) #1

declare dso_local i32 @edns_known_options_delete(%struct.ub_ctx*) #1

declare dso_local i32 @modstack_init(i32*) #1

declare dso_local i32 @rbtree_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
