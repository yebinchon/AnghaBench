; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, i64 (i8*, i32)*, i32, %struct.ck_rhs_map*, i32 }
%struct.ck_rhs_map = type { i64, i64, i32, i32 }

@CK_RHS_EMPTY = common dso_local global i8* null, align 8
@CK_RHS_MODE_OBJECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_grow(%struct.ck_rhs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ck_rhs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ck_rhs_map*, align 8
  %7 = alloca %struct.ck_rhs_map*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %4, align 8
  store i64 %1, i64* %5, align 8
  br label %17

17:                                               ; preds = %74, %2
  %18 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %19 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %18, i32 0, i32 3
  %20 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %19, align 8
  store %struct.ck_rhs_map* %20, %struct.ck_rhs_map** %6, align 8
  %21 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %22 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %164

27:                                               ; preds = %17
  %28 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call %struct.ck_rhs_map* @ck_rhs_map_create(%struct.ck_rhs* %28, i64 %29)
  store %struct.ck_rhs_map* %30, %struct.ck_rhs_map** %7, align 8
  %31 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %32 = icmp eq %struct.ck_rhs_map* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %164

34:                                               ; preds = %27
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %150, %34
  %36 = load i64, i64* %10, align 8
  %37 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %38 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %153

41:                                               ; preds = %35
  %42 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %43 = load i64, i64* %10, align 8
  %44 = call i8* @ck_rhs_entry(%struct.ck_rhs_map* %42, i64 %43)
  store i8* %44, i8** %8, align 8
  store i8* %44, i8** %9, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i8*, i8** @CK_RHS_EMPTY, align 8
  %47 = icmp eq i8* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %150

49:                                               ; preds = %41
  %50 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %51 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %50, i32 0, i32 1
  %52 = load i64 (i8*, i32)*, i64 (i8*, i32)** %51, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %55 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i64 %52(i8* %53, i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %60 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = and i64 %58, %61
  store i64 %62, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %63

63:                                               ; preds = %141, %111, %49
  %64 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i8** @ck_rhs_entry_addr(%struct.ck_rhs_map* %64, i64 %65)
  store i8** %66, i8*** %14, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %12, align 8
  %69 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %70 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = icmp eq i64 %67, %72
  br i1 %73, label %74, label %82

74:                                               ; preds = %63
  %75 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %76 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %79 = call i32 @ck_rhs_map_destroy(i32 %77, %struct.ck_rhs_map* %78, i32 0)
  %80 = load i64, i64* %5, align 8
  %81 = shl i64 %80, 1
  store i64 %81, i64* %5, align 8
  br label %17

82:                                               ; preds = %63
  %83 = load i8**, i8*** %14, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** @CK_RHS_EMPTY, align 8
  %86 = icmp eq i8* %84, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @CK_CC_LIKELY(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %82
  %91 = load i8*, i8** %9, align 8
  %92 = load i8**, i8*** %14, align 8
  store i8* %91, i8** %92, align 8
  %93 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %94 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %98 = load i64, i64* %11, align 8
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %97, i64 %98, i64 %99)
  %101 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %102 = load i64, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %101, i64 %102, i64 %103)
  br label %149

105:                                              ; preds = %82
  %106 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call i64 @ck_rhs_probes(%struct.ck_rhs_map* %106, i64 %107)
  %109 = load i64, i64* %12, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %140

111:                                              ; preds = %105
  %112 = load i8*, i8** %9, align 8
  store i8* %112, i8** %15, align 8
  %113 = load i8**, i8*** %14, align 8
  %114 = load i8*, i8** %113, align 8
  store i8* %114, i8** %8, align 8
  store i8* %114, i8** %9, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = load i8**, i8*** %14, align 8
  store i8* %115, i8** %116, align 8
  %117 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %117, i64 %118, i64 %119)
  %121 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %122 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %121, i32 0, i32 1
  %123 = load i64 (i8*, i32)*, i64 (i8*, i32)** %122, align 8
  %124 = load i8*, i8** %8, align 8
  %125 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %126 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = call i64 %123(i8* %124, i32 %127)
  store i64 %128, i64* %13, align 8
  %129 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %130 = load i64, i64* %11, align 8
  %131 = call i64 @ck_rhs_probes(%struct.ck_rhs_map* %129, i64 %130)
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %16, align 4
  %133 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %133, i64 %134, i64 %135)
  %137 = load i32, i32* %16, align 4
  %138 = sub i32 %137, 1
  %139 = zext i32 %138 to i64
  store i64 %139, i64* %12, align 8
  br label %63

140:                                              ; preds = %105
  br label %141

141:                                              ; preds = %140
  %142 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %143 = load i64, i64* %11, align 8
  %144 = call i32 @ck_rhs_wanted_inc(%struct.ck_rhs_map* %142, i64 %143)
  %145 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %12, align 8
  %148 = call i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map* %145, i64 %146, i64 %147)
  store i64 %148, i64* %11, align 8
  br label %63

149:                                              ; preds = %90
  br label %150

150:                                              ; preds = %149, %48
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %35

153:                                              ; preds = %35
  %154 = call i32 (...) @ck_pr_fence_store()
  %155 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %156 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %155, i32 0, i32 3
  %157 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %7, align 8
  %158 = call i32 @ck_pr_store_ptr(%struct.ck_rhs_map** %156, %struct.ck_rhs_map* %157)
  %159 = load %struct.ck_rhs*, %struct.ck_rhs** %4, align 8
  %160 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %6, align 8
  %163 = call i32 @ck_rhs_map_destroy(i32 %161, %struct.ck_rhs_map* %162, i32 1)
  store i32 1, i32* %3, align 4
  br label %164

164:                                              ; preds = %153, %33, %26
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.ck_rhs_map* @ck_rhs_map_create(%struct.ck_rhs*, i64) #1

declare dso_local i8* @ck_rhs_entry(%struct.ck_rhs_map*, i64) #1

declare dso_local i8** @ck_rhs_entry_addr(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_map_destroy(i32, %struct.ck_rhs_map*, i32) #1

declare dso_local i64 @CK_CC_LIKELY(i32) #1

declare dso_local i32 @ck_rhs_set_probes(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i64 @ck_rhs_probes(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_wanted_inc(%struct.ck_rhs_map*, i64) #1

declare dso_local i64 @ck_rhs_map_probe_next(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i32 @ck_pr_fence_store(...) #1

declare dso_local i32 @ck_pr_store_ptr(%struct.ck_rhs_map**, %struct.ck_rhs_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
