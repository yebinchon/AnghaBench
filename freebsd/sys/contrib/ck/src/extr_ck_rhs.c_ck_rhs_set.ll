; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i32, i64, i64, i32*, i32 }
%struct.ck_rhs.0 = type opaque
%struct.ck_rhs_entry_desc = type { i32, i64 }

@CK_RHS_PROBE_INSERT = common dso_local global i32 0, align 4
@CK_RHS_G_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ck_rhs_set(%struct.ck_rhs* %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_rhs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ck_rhs_map*, align 8
  %16 = alloca %struct.ck_rhs_entry_desc*, align 8
  %17 = alloca %struct.ck_rhs_entry_desc*, align 8
  %18 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %19 = load i8**, i8*** %9, align 8
  store i8* null, i8** %19, align 8
  br label %20

20:                                               ; preds = %93, %51, %4
  %21 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %22 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %21, i32 0, i32 1
  %23 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %22, align 8
  store %struct.ck_rhs_map* %23, %struct.ck_rhs_map** %15, align 8
  %24 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %25 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %24, i32 0, i32 0
  %26 = load i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)** %25, align 8
  %27 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %28 = bitcast %struct.ck_rhs* %27 to %struct.ck_rhs.0*
  %29 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %33 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CK_RHS_PROBE_INSERT, align 4
  %36 = call i64 %26(%struct.ck_rhs.0* %28, %struct.ck_rhs_map* %29, i64* %14, i64* %11, i64 %30, i8* %31, i8** %12, i32 %34, i32 %35)
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %37, -1
  br i1 %38, label %39, label %52

39:                                               ; preds = %20
  %40 = load i64, i64* %11, align 8
  %41 = icmp eq i64 %40, -1
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %44 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %45 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 %46, 1
  %48 = call i32 @ck_rhs_grow(%struct.ck_rhs* %43, i32 %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %175

51:                                               ; preds = %42
  br label %20

52:                                               ; preds = %39, %20
  %53 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %14, align 8
  %56 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %53, i64 %54, i64 %55)
  %57 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %58 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i64, i64* %7, align 8
  %62 = call i8* @ck_rhs_marshal(i32 %59, i8* %60, i64 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ne i64 %63, -1
  br i1 %64, label %65, label %130

65:                                               ; preds = %52
  store %struct.ck_rhs_entry_desc* null, %struct.ck_rhs_entry_desc** %16, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, -1
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %69, i64 %70)
  store %struct.ck_rhs_entry_desc* %71, %struct.ck_rhs_entry_desc** %16, align 8
  %72 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %73 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %65
  %75 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %76 = load i64, i64* %11, align 8
  %77 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %75, i64 %76)
  store %struct.ck_rhs_entry_desc* %77, %struct.ck_rhs_entry_desc** %17, align 8
  %78 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %17, align 8
  %81 = call i32 @ck_rhs_put_robin_hood(%struct.ck_rhs* %78, i64 %79, %struct.ck_rhs_entry_desc* %80)
  store i32 %81, i32* %18, align 4
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, -1
  br i1 %83, label %84, label %87

84:                                               ; preds = %74
  %85 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %86 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %85, i32 0, i32 0
  store i32 0, i32* %86, align 8
  br label %87

87:                                               ; preds = %84, %74
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 1
  %90 = zext i1 %89 to i32
  %91 = call i64 @CK_CC_UNLIKELY(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  br label %20

94:                                               ; preds = %87
  %95 = load i32, i32* %18, align 4
  %96 = icmp eq i32 %95, -1
  %97 = zext i1 %96 to i32
  %98 = call i64 @CK_CC_UNLIKELY(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 0, i32* %5, align 4
  br label %175

101:                                              ; preds = %94
  %102 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %103 = load i64, i64* %11, align 8
  %104 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %102, i64 %103)
  %105 = load i8*, i8** %13, align 8
  %106 = call i32 @ck_pr_store_ptr(i32 %104, i8* %105)
  %107 = load i64, i64* %14, align 8
  %108 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %17, align 8
  %109 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  %110 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %110, i64 %111, i32 -1, i64 %112)
  %114 = load i8*, i8** %12, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %129

116:                                              ; preds = %101
  %117 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %118 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* @CK_RHS_G_MASK, align 8
  %122 = and i64 %120, %121
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = call i32 @ck_pr_inc_uint(i32* %123)
  %125 = call i32 (...) @ck_pr_fence_atomic_store()
  %126 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %127 = load i64, i64* %10, align 8
  %128 = call i32 @ck_rhs_do_backward_shift_delete(%struct.ck_rhs* %126, i64 %127)
  br label %129

129:                                              ; preds = %116, %101
  br label %148

130:                                              ; preds = %52
  %131 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %132 = load i64, i64* %10, align 8
  %133 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %131, i64 %132)
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @ck_pr_store_ptr(i32 %133, i8* %134)
  %136 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* %14, align 8
  %139 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %136, i64 %137, i64 %138)
  %140 = load i8*, i8** %12, align 8
  %141 = icmp eq i8* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %130
  %143 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %144 = load i64, i64* %10, align 8
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %143, i64 %144, i32 -1, i64 %145)
  br label %147

147:                                              ; preds = %142, %130
  br label %148

148:                                              ; preds = %147, %129
  %149 = load i8*, i8** %12, align 8
  %150 = icmp eq i8* %149, null
  br i1 %150, label %151, label %171

151:                                              ; preds = %148
  %152 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %153 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, 1
  store i64 %155, i64* %153, align 8
  %156 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %157 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %160 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = icmp sgt i64 %158, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %151
  %164 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %165 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %166 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = shl i32 %167, 1
  %169 = call i32 @ck_rhs_grow(%struct.ck_rhs* %164, i32 %168)
  br label %170

170:                                              ; preds = %163, %151
  br label %171

171:                                              ; preds = %170, %148
  %172 = load i8*, i8** %12, align 8
  %173 = call i8* @CK_CC_DECONST_PTR(i8* %172)
  %174 = load i8**, i8*** %9, align 8
  store i8* %173, i8** %174, align 8
  store i32 1, i32* %5, align 4
  br label %175

175:                                              ; preds = %171, %100, %50
  %176 = load i32, i32* %5, align 4
  ret i32 %176
}

declare dso_local i32 @ck_rhs_grow(%struct.ck_rhs*, i32) #1

declare dso_local i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i8* @ck_rhs_marshal(i32, i8*, i64) #1

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_put_robin_hood(%struct.ck_rhs*, i64, %struct.ck_rhs_entry_desc*) #1

declare dso_local i64 @CK_CC_UNLIKELY(i32) #1

declare dso_local i32 @ck_pr_store_ptr(i32, i8*) #1

declare dso_local i32 @ck_rhs_entry_addr(%struct.ck_rhs_map*, i64) #1

declare dso_local i32 @ck_rhs_add_wanted(%struct.ck_rhs*, i64, i32, i64) #1

declare dso_local i32 @ck_pr_inc_uint(i32*) #1

declare dso_local i32 @ck_pr_fence_atomic_store(...) #1

declare dso_local i32 @ck_rhs_do_backward_shift_delete(%struct.ck_rhs*, i64) #1

declare dso_local i32 @ck_rhs_set_probes(%struct.ck_rhs_map*, i64, i64) #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
