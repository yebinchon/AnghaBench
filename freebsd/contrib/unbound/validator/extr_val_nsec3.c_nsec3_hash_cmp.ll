; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_nsec3.c_nsec3_hash_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsec3_cached_hash = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsec3_hash_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nsec3_cached_hash*, align 8
  %7 = alloca %struct.nsec3_cached_hash*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.nsec3_cached_hash*
  store %struct.nsec3_cached_hash* %14, %struct.nsec3_cached_hash** %6, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.nsec3_cached_hash*
  store %struct.nsec3_cached_hash* %16, %struct.nsec3_cached_hash** %7, align 8
  %17 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %18 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %21 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @query_dname_compare(i32 %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %12, align 4
  store i32 %27, i32* %3, align 4
  br label %140

28:                                               ; preds = %2
  %29 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %30 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %33 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @nsec3_get_algo(i32 %31, i32 %34)
  %36 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %37 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %40 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @nsec3_get_algo(i32 %38, i32 %41)
  %43 = icmp ne i64 %35, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %28
  %45 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %46 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %49 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @nsec3_get_algo(i32 %47, i32 %50)
  %52 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %53 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %56 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nsec3_get_algo(i32 %54, i32 %57)
  %59 = icmp slt i64 %51, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %44
  store i32 -1, i32* %3, align 4
  br label %140

61:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %140

62:                                               ; preds = %28
  %63 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %64 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %67 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @nsec3_get_iter(i32 %65, i32 %68)
  %70 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %71 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %74 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @nsec3_get_iter(i32 %72, i32 %75)
  %77 = icmp ne i64 %69, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %62
  %79 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %80 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %83 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @nsec3_get_iter(i32 %81, i32 %84)
  %86 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %87 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %90 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @nsec3_get_iter(i32 %88, i32 %91)
  %93 = icmp slt i64 %85, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %140

95:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %140

96:                                               ; preds = %62
  %97 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %98 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %6, align 8
  %101 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @nsec3_get_salt(i32 %99, i32 %102, i32** %8, i64* %10)
  %104 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %105 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.nsec3_cached_hash*, %struct.nsec3_cached_hash** %7, align 8
  %108 = getelementptr inbounds %struct.nsec3_cached_hash, %struct.nsec3_cached_hash* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nsec3_get_salt(i32 %106, i32 %109, i32** %9, i64* %11)
  %111 = load i64, i64* %10, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %96
  %114 = load i64, i64* %11, align 8
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %113
  store i32 0, i32* %3, align 4
  br label %140

117:                                              ; preds = %113, %96
  %118 = load i32*, i32** %8, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %121, label %120

120:                                              ; preds = %117
  store i32 -1, i32* %3, align 4
  br label %140

121:                                              ; preds = %117
  %122 = load i32*, i32** %9, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  store i32 1, i32* %3, align 4
  br label %140

125:                                              ; preds = %121
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* %11, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i64, i64* %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 -1, i32* %3, align 4
  br label %140

134:                                              ; preds = %129
  store i32 1, i32* %3, align 4
  br label %140

135:                                              ; preds = %125
  %136 = load i32*, i32** %8, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = call i32 @memcmp(i32* %136, i32* %137, i64 %138)
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %135, %134, %133, %124, %120, %116, %95, %94, %61, %60, %26
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @query_dname_compare(i32, i32) #1

declare dso_local i64 @nsec3_get_algo(i32, i32) #1

declare dso_local i64 @nsec3_get_iter(i32, i32) #1

declare dso_local i32 @nsec3_get_salt(i32, i32, i32**, i64*) #1

declare dso_local i32 @memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
