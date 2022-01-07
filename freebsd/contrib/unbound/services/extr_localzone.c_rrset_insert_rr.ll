; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_rrset_insert_rr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_localzone.c_rrset_insert_rr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regional = type { i32 }
%struct.packed_rrset_data = type { i64*, i32, i32**, i32** }

@LOCALZONE_RRSET_COUNT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"RRset '%s' has more than %d records, record ignored\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rrset_insert_rr(%struct.regional* %0, %struct.packed_rrset_data* %1, i32* %2, i64 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.regional*, align 8
  %9 = alloca %struct.packed_rrset_data*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  store %struct.regional* %0, %struct.regional** %8, align 8
  store %struct.packed_rrset_data* %1, %struct.packed_rrset_data** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %18 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  store i64* %19, i64** %14, align 8
  %20 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %21 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %20, i32 0, i32 3
  %22 = load i32**, i32*** %21, align 8
  store i32** %22, i32*** %15, align 8
  %23 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %24 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %23, i32 0, i32 2
  %25 = load i32**, i32*** %24, align 8
  store i32** %25, i32*** %16, align 8
  %26 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %27 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @LOCALZONE_RRSET_COUNT_MAX, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %6
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* @LOCALZONE_RRSET_COUNT_MAX, align 4
  %34 = call i32 @log_warn(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %32, i32 %33)
  store i32 1, i32* %7, align 4
  br label %166

35:                                               ; preds = %6
  %36 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %37 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.regional*, %struct.regional** %8, align 8
  %41 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %42 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i8* @regional_alloc(%struct.regional* %40, i32 %46)
  %48 = bitcast i8* %47 to i64*
  %49 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %50 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %49, i32 0, i32 0
  store i64* %48, i64** %50, align 8
  %51 = load %struct.regional*, %struct.regional** %8, align 8
  %52 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %53 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 8, %55
  %57 = trunc i64 %56 to i32
  %58 = call i8* @regional_alloc(%struct.regional* %51, i32 %57)
  %59 = bitcast i8* %58 to i32**
  %60 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %61 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %60, i32 0, i32 3
  store i32** %59, i32*** %61, align 8
  %62 = load %struct.regional*, %struct.regional** %8, align 8
  %63 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %64 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = mul i64 8, %66
  %68 = trunc i64 %67 to i32
  %69 = call i8* @regional_alloc(%struct.regional* %62, i32 %68)
  %70 = bitcast i8* %69 to i32**
  %71 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %72 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %71, i32 0, i32 2
  store i32** %70, i32*** %72, align 8
  %73 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %74 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %73, i32 0, i32 0
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %87

77:                                               ; preds = %35
  %78 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %79 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %78, i32 0, i32 3
  %80 = load i32**, i32*** %79, align 8
  %81 = icmp ne i32** %80, null
  br i1 %81, label %82, label %87

82:                                               ; preds = %77
  %83 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %84 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = icmp ne i32** %85, null
  br i1 %86, label %89, label %87

87:                                               ; preds = %82, %77, %35
  %88 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %166

89:                                               ; preds = %82
  %90 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %91 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %94, label %138

94:                                               ; preds = %89
  %95 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %96 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 1
  %99 = load i64*, i64** %14, align 8
  %100 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %101 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = mul i64 8, %104
  %106 = trunc i64 %105 to i32
  %107 = call i32 @memcpy(i64* %98, i64* %99, i32 %106)
  %108 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %109 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %108, i32 0, i32 3
  %110 = load i32**, i32*** %109, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i64 1
  %112 = bitcast i32** %111 to i64*
  %113 = load i32**, i32*** %15, align 8
  %114 = bitcast i32** %113 to i64*
  %115 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %116 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = mul i64 8, %119
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memcpy(i64* %112, i64* %114, i32 %121)
  %123 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %124 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %123, i32 0, i32 2
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 1
  %127 = bitcast i32** %126 to i64*
  %128 = load i32**, i32*** %16, align 8
  %129 = bitcast i32** %128 to i64*
  %130 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %131 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = mul i64 8, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(i64* %127, i64* %129, i32 %136)
  br label %138

138:                                              ; preds = %94, %89
  %139 = load i64, i64* %11, align 8
  %140 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %141 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  store i64 %139, i64* %143, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %146 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %145, i32 0, i32 3
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  store i32* %144, i32** %148, align 8
  %149 = load %struct.regional*, %struct.regional** %8, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i64, i64* %11, align 8
  %152 = call i32* @regional_alloc_init(%struct.regional* %149, i32* %150, i64 %151)
  %153 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %154 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %153, i32 0, i32 2
  %155 = load i32**, i32*** %154, align 8
  %156 = getelementptr inbounds i32*, i32** %155, i64 0
  store i32* %152, i32** %156, align 8
  %157 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %9, align 8
  %158 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %157, i32 0, i32 2
  %159 = load i32**, i32*** %158, align 8
  %160 = getelementptr inbounds i32*, i32** %159, i64 0
  %161 = load i32*, i32** %160, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %138
  %164 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %166

165:                                              ; preds = %138
  store i32 1, i32* %7, align 4
  br label %166

166:                                              ; preds = %165, %163, %87, %31
  %167 = load i32, i32* %7, align 4
  ret i32 %167
}

declare dso_local i32 @log_warn(i8*, i8*, i32) #1

declare dso_local i8* @regional_alloc(%struct.regional*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32* @regional_alloc_init(%struct.regional*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
