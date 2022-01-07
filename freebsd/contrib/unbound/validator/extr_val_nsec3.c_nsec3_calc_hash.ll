; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_calc_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_calc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.nsec3_cached_hash = type { i64, i64, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"nsec3 hash of unknown algo %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regional*, i32*, %struct.nsec3_cached_hash*)* @nsec3_calc_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsec3_calc_hash(%struct.regional* %0, i32* %1, %struct.nsec3_cached_hash* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.regional*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.nsec3_cached_hash*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.regional* %0, %struct.regional** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.nsec3_cached_hash* %2, %struct.nsec3_cached_hash** %7, align 8
  %13 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %14 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %17 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @nsec3_get_algo(i32 %15, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %21 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %24 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @nsec3_get_iter(i32 %22, i32 %25)
  store i64 %26, i64* %9, align 8
  %27 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %28 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %31 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @nsec3_get_salt(i32 %29, i32 %32, i32** %10, i64* %11)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %129

36:                                               ; preds = %3
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @sldns_buffer_clear(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %41 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %44 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @sldns_buffer_write(i32* %39, i32* %42, i64 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @sldns_buffer_begin(i32* %47)
  %49 = call i32 @query_dname_tolower(i64 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @sldns_buffer_write(i32* %50, i32* %51, i64 %52)
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @sldns_buffer_flip(i32* %54)
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @nsec3_hash_algo_size_supported(i32 %56)
  %58 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %59 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %61 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %36
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @log_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 -1, i32* %4, align 4
  br label %129

67:                                               ; preds = %36
  %68 = load %struct.regional*, %struct.regional** %5, align 8
  %69 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %70 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @regional_alloc(%struct.regional* %68, i64 %71)
  %73 = inttoptr i64 %72 to i32*
  %74 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %75 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %74, i32 0, i32 2
  store i32* %73, i32** %75, align 8
  %76 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %77 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %67
  store i32 0, i32* %4, align 4
  br label %129

81:                                               ; preds = %67
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @sldns_buffer_begin(i32* %83)
  %85 = inttoptr i64 %84 to i8*
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @sldns_buffer_limit(i32* %86)
  %88 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %89 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = bitcast i32* %90 to i8*
  %92 = call i32 @secalgo_nsec3_hash(i32 %82, i8* %85, i32 %87, i8* %91)
  store i64 0, i64* %12, align 8
  br label %93

93:                                               ; preds = %125, %81
  %94 = load i64, i64* %12, align 8
  %95 = load i64, i64* %9, align 8
  %96 = icmp ult i64 %94, %95
  br i1 %96, label %97, label %128

97:                                               ; preds = %93
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @sldns_buffer_clear(i32* %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %102 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %105 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @sldns_buffer_write(i32* %100, i32* %103, i64 %106)
  %108 = load i32*, i32** %6, align 8
  %109 = load i32*, i32** %10, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @sldns_buffer_write(i32* %108, i32* %109, i64 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = call i32 @sldns_buffer_flip(i32* %112)
  %114 = load i32, i32* %8, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = call i64 @sldns_buffer_begin(i32* %115)
  %117 = inttoptr i64 %116 to i8*
  %118 = load i32*, i32** %6, align 8
  %119 = call i32 @sldns_buffer_limit(i32* %118)
  %120 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %121 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = bitcast i32* %122 to i8*
  %124 = call i32 @secalgo_nsec3_hash(i32 %114, i8* %117, i32 %119, i8* %123)
  br label %125

125:                                              ; preds = %97
  %126 = load i64, i64* %12, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %12, align 8
  br label %93

128:                                              ; preds = %93
  store i32 1, i32* %4, align 4
  br label %129

129:                                              ; preds = %128, %80, %64, %35
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @nsec3_get_algo(i32, i32) #1

declare dso_local i64 @nsec3_get_iter(i32, i32) #1

declare dso_local i32 @nsec3_get_salt(i32, i32, i32**, i64*) #1

declare dso_local i32 @sldns_buffer_clear(i32*) #1

declare dso_local i32 @sldns_buffer_write(i32*, i32*, i64) #1

declare dso_local i32 @query_dname_tolower(i64) #1

declare dso_local i64 @sldns_buffer_begin(i32*) #1

declare dso_local i32 @sldns_buffer_flip(i32*) #1

declare dso_local i64 @nsec3_hash_algo_size_supported(i32) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i64 @regional_alloc(%struct.regional*, i64) #1

declare dso_local i32 @secalgo_nsec3_hash(i32, i8*, i32, i8*) #1

declare dso_local i32 @sldns_buffer_limit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
