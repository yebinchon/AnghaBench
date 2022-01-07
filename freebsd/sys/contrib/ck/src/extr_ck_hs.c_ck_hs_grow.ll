; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_hs.c_ck_hs_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_hs = type { i32, i64 (i8*, i32)*, i32, %struct.ck_hs_map*, i32 }
%struct.ck_hs_map = type { i64, i8**, i64, i64, i32 }

@CK_HS_EMPTY = common dso_local global i8* null, align 8
@CK_HS_TOMBSTONE = common dso_local global i8* null, align 8
@CK_MD_CACHELINE = common dso_local global i32 0, align 4
@CK_HS_PROBE_L1 = common dso_local global i64 0, align 8
@CK_HS_MODE_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_hs_grow(%struct.ck_hs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_hs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ck_hs_map*, align 8
  %7 = alloca %struct.ck_hs_map*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  store %struct.ck_hs* %0, %struct.ck_hs** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %17

17:                                               ; preds = %151, %2
  %18 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %19 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %18, i32 0, i32 3
  %20 = load %struct.ck_hs_map*, %struct.ck_hs_map** %19, align 8
  store %struct.ck_hs_map* %20, %struct.ck_hs_map** %6, align 8
  %21 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %22 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %174

27:                                               ; preds = %17
  %28 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.ck_hs_map* @ck_hs_map_create(%struct.ck_hs* %28, i64 %29)
  store %struct.ck_hs_map* %30, %struct.ck_hs_map** %7, align 8
  %31 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %32 = icmp eq %struct.ck_hs_map* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %174

34:                                               ; preds = %27
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %160, %34
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %38 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %163

41:                                               ; preds = %35
  %42 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %43 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %42, i32 0, i32 1
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %13, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i8*, i8** @CK_HS_EMPTY, align 8
  %50 = icmp eq i8* %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load i8*, i8** %13, align 8
  %53 = load i8*, i8** @CK_HS_TOMBSTONE, align 8
  %54 = icmp eq i8* %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %41
  br label %160

56:                                               ; preds = %51
  %57 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %58 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %57, i32 0, i32 1
  %59 = load i64 (i8*, i32)*, i64 (i8*, i32)** %58, align 8
  %60 = load i8*, i8** %13, align 8
  %61 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %62 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i64 %59(i8* %60, i32 %63)
  store i64 %64, i64* %15, align 8
  %65 = load i64, i64* %15, align 8
  %66 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %67 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = and i64 %65, %68
  store i64 %69, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %9, align 8
  br label %70

70:                                               ; preds = %136, %56
  %71 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %72 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %71, i32 0, i32 1
  %73 = load i8**, i8*** %72, align 8
  %74 = load i64, i64* %11, align 8
  %75 = getelementptr inbounds i8*, i8** %73, i64 %74
  %76 = ptrtoint i8** %75 to i64
  %77 = load i32, i32* @CK_MD_CACHELINE, align 4
  %78 = sub nsw i32 %77, 1
  %79 = xor i32 %78, -1
  %80 = sext i32 %79 to i64
  %81 = and i64 %76, %80
  %82 = inttoptr i64 %81 to i8**
  store i8** %82, i8*** %14, align 8
  store i64 0, i64* %10, align 8
  br label %83

83:                                               ; preds = %128, %70
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %131

87:                                               ; preds = %83
  %88 = load i8**, i8*** %14, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load i64, i64* %11, align 8
  %91 = add i64 %89, %90
  %92 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %93 = sub i64 %92, 1
  %94 = and i64 %91, %93
  %95 = getelementptr inbounds i8*, i8** %88, i64 %94
  store i8** %95, i8*** %16, align 8
  %96 = load i64, i64* %12, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %12, align 8
  %98 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %99 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %96, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %87
  br label %131

103:                                              ; preds = %87
  %104 = load i8**, i8*** %16, align 8
  %105 = load i8*, i8** %104, align 8
  %106 = load i8*, i8** @CK_HS_EMPTY, align 8
  %107 = icmp eq i8* %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i64 @CK_CC_LIKELY(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %103
  %112 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %113 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds i8*, i8** %114, i64 %115
  %117 = load i8*, i8** %116, align 8
  %118 = load i8**, i8*** %16, align 8
  store i8* %117, i8** %118, align 8
  %119 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %120 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 8
  %123 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %124 = load i64, i64* %15, align 8
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @ck_hs_map_bound_set(%struct.ck_hs_map* %123, i64 %124, i64 %125)
  br label %131

127:                                              ; preds = %103
  br label %128

128:                                              ; preds = %127
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, 1
  store i64 %130, i64* %10, align 8
  br label %83

131:                                              ; preds = %111, %102, %83
  %132 = load i64, i64* %10, align 8
  %133 = load i64, i64* @CK_HS_PROBE_L1, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %145

136:                                              ; preds = %131
  %137 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* %15, align 8
  %140 = load i64, i64* %9, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %9, align 8
  %142 = trunc i64 %140 to i32
  %143 = load i64, i64* %12, align 8
  %144 = call i64 @ck_hs_map_probe_next(%struct.ck_hs_map* %137, i64 %138, i64 %139, i32 %142, i64 %143)
  store i64 %144, i64* %11, align 8
  br label %70

145:                                              ; preds = %135
  %146 = load i64, i64* %12, align 8
  %147 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %148 = getelementptr inbounds %struct.ck_hs_map, %struct.ck_hs_map* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ugt i64 %146, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  %152 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %153 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %156 = call i32 @ck_hs_map_destroy(i32 %154, %struct.ck_hs_map* %155, i32 0)
  %157 = load i64, i64* %5, align 8
  %158 = shl i64 %157, 1
  store i64 %158, i64* %5, align 8
  br label %17

159:                                              ; preds = %145
  br label %160

160:                                              ; preds = %159, %55
  %161 = load i64, i64* %8, align 8
  %162 = add i64 %161, 1
  store i64 %162, i64* %8, align 8
  br label %35

163:                                              ; preds = %35
  %164 = call i32 (...) @ck_pr_fence_store()
  %165 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %166 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %165, i32 0, i32 3
  %167 = load %struct.ck_hs_map*, %struct.ck_hs_map** %7, align 8
  %168 = call i32 @ck_pr_store_ptr(%struct.ck_hs_map** %166, %struct.ck_hs_map* %167)
  %169 = load %struct.ck_hs*, %struct.ck_hs** %4, align 8
  %170 = getelementptr inbounds %struct.ck_hs, %struct.ck_hs* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.ck_hs_map*, %struct.ck_hs_map** %6, align 8
  %173 = call i32 @ck_hs_map_destroy(i32 %171, %struct.ck_hs_map* %172, i32 1)
  store i32 1, i32* %3, align 4
  br label %174

174:                                              ; preds = %163, %33, %26
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local %struct.ck_hs_map* @ck_hs_map_create(%struct.ck_hs*, i64) #1

declare dso_local i64 @CK_CC_LIKELY(i32) #1

declare dso_local i32 @ck_hs_map_bound_set(%struct.ck_hs_map*, i64, i64) #1

declare dso_local i64 @ck_hs_map_probe_next(%struct.ck_hs_map*, i64, i64, i32, i64) #1

declare dso_local i32 @ck_hs_map_destroy(i32, %struct.ck_hs_map*, i32) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr(%struct.ck_hs_map**, %struct.ck_hs_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
