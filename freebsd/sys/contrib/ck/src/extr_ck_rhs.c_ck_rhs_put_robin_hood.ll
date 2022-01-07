; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_put_robin_hood.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_put_robin_hood.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i32, i32*, i32 }
%struct.ck_rhs.0 = type opaque
%struct.ck_rhs_entry_desc = type { i64, i32 }

@CK_RHS_MAX_RH = common dso_local global i32 0, align 4
@CK_RHS_PROBE_NO_RH = common dso_local global i32 0, align 4
@CK_RHS_PROBE_ROBIN_HOOD = common dso_local global i32 0, align 4
@CK_RHS_G_MASK = common dso_local global i64 0, align 8
@CK_RHS_MODE_OBJECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ck_rhs*, i64, %struct.ck_rhs_entry_desc*)* @ck_rhs_put_robin_hood to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ck_rhs_put_robin_hood(%struct.ck_rhs* %0, i64 %1, %struct.ck_rhs_entry_desc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ck_rhs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ck_rhs_entry_desc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ck_rhs_map*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.ck_rhs_entry_desc* %2, %struct.ck_rhs_entry_desc** %7, align 8
  store i64 0, i64* %14, align 8
  %23 = load i32, i32* @CK_RHS_MAX_RH, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i64, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %27 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %28 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %27, i32 0, i32 1
  %29 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %28, align 8
  store %struct.ck_rhs_map* %29, %struct.ck_rhs_map** %13, align 8
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %32 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  br label %34

34:                                               ; preds = %100, %3
  %35 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i8* @ck_rhs_entry(%struct.ck_rhs_map* %35, i64 %36)
  %38 = call i8* @CK_CC_DECONST_PTR(i8* %37)
  store i8* %38, i8** %16, align 8
  %39 = load i8*, i8** %16, align 8
  store i8* %39, i8** %11, align 8
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %6, align 8
  %41 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @ck_rhs_set_rh(%struct.ck_rhs_map* %41, i64 %42)
  %44 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %45 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %44, i32 0, i32 0
  %46 = load i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)** %45, align 8
  %47 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %48 = bitcast %struct.ck_rhs* %47 to %struct.ck_rhs.0*
  %49 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %53 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @CK_RHS_MAX_RH, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %34
  %59 = load i32, i32* @CK_RHS_PROBE_NO_RH, align 4
  br label %62

60:                                               ; preds = %34
  %61 = load i32, i32* @CK_RHS_PROBE_ROBIN_HOOD, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i64 %46(%struct.ck_rhs.0* %48, %struct.ck_rhs_map* %49, i64* %12, i64* %9, i64 %50, i8* %51, i8** %10, i32 %54, i32 %63)
  store i64 %64, i64* %8, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp eq i64 %65, -1
  br i1 %66, label %67, label %97

67:                                               ; preds = %62
  %68 = load i64, i64* %9, align 8
  %69 = icmp eq i64 %68, -1
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  %71 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %72 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %73 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 1
  %76 = call i32 @ck_rhs_grow(%struct.ck_rhs* %71, i32 %75)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %70
  %79 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %80 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  store i32 0, i32* %20, align 4
  br label %81

81:                                               ; preds = %92, %78
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %87 = load i32, i32* %20, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %26, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @ck_rhs_unset_rh(%struct.ck_rhs_map* %86, i64 %90)
  br label %92

92:                                               ; preds = %85
  %93 = load i32, i32* %20, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %20, align 4
  br label %81

95:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %205

96:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %205

97:                                               ; preds = %67, %62
  %98 = load i64, i64* %9, align 8
  %99 = icmp ne i64 %98, -1
  br i1 %99, label %100, label %127

100:                                              ; preds = %97
  %101 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %102 = load i64, i64* %9, align 8
  %103 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %101, i64 %102)
  store %struct.ck_rhs_entry_desc* %103, %struct.ck_rhs_entry_desc** %7, align 8
  %104 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %105 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %22, align 4
  %108 = load i64, i64* %12, align 8
  %109 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %110 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map* %111, i64 %112, i64 %113)
  store i64 %114, i64* %14, align 8
  %115 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %115, i64 %116, i64 %117)
  %119 = load i64, i64* %6, align 8
  store i64 %119, i64* %15, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i32, i32* %19, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %19, align 4
  %123 = zext i32 %121 to i64
  %124 = getelementptr inbounds i64, i64* %26, i64 %123
  store i64 %120, i64* %124, align 8
  %125 = load i32, i32* %22, align 4
  %126 = sext i32 %125 to i64
  store i64 %126, i64* %12, align 8
  br label %34

127:                                              ; preds = %97
  %128 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map* %128, i64 %129, i64 %130)
  store i64 %131, i64* %14, align 8
  %132 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %132, i64 %133, i64 %134)
  %136 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %136, i64 %137)
  %139 = load i8*, i8** %11, align 8
  %140 = call i32 @ck_pr_store_ptr(i32 %138, i8* %139)
  %141 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %142 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %141, i32 0, i32 2
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* @CK_RHS_G_MASK, align 8
  %146 = and i64 %144, %145
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = call i32 @ck_pr_inc_uint(i32* %147)
  %149 = call i32 (...) @ck_pr_fence_atomic_store()
  %150 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %151 = load i64, i64* %8, align 8
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %150, i64 %151, i64 %152)
  %154 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %155 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %154, i32 0, i32 1
  store i32 0, i32* %155, align 8
  %156 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %157 = load i64, i64* %8, align 8
  %158 = load i64, i64* %6, align 8
  %159 = load i64, i64* %14, align 8
  %160 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %156, i64 %157, i64 %158, i64 %159)
  br label %161

161:                                              ; preds = %127
  br label %162

162:                                              ; preds = %165, %161
  %163 = load i32, i32* %19, align 4
  %164 = icmp ugt i32 %163, 0
  br i1 %164, label %165, label %204

165:                                              ; preds = %162
  %166 = load i32, i32* %19, align 4
  %167 = add i32 %166, -1
  store i32 %167, i32* %19, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %26, i64 %168
  %170 = load i64, i64* %169, align 8
  store i64 %170, i64* %15, align 8
  %171 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %171, i64 %172)
  %174 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %175 = load i64, i64* %15, align 8
  %176 = call i8* @ck_rhs_entry(%struct.ck_rhs_map* %174, i64 %175)
  %177 = call i32 @ck_pr_store_ptr(i32 %173, i8* %176)
  %178 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %179 = load i64, i64* %6, align 8
  %180 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %181 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = call i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map* %178, i64 %179, i64 %182)
  store i64 %183, i64* %14, align 8
  %184 = load %struct.ck_rhs*, %struct.ck_rhs** %5, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i64, i64* %15, align 8
  %187 = load i64, i64* %14, align 8
  %188 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %184, i64 %185, i64 %186, i64 %187)
  %189 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %190 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %189, i32 0, i32 2
  %191 = load i32*, i32** %190, align 8
  %192 = load i64, i64* %14, align 8
  %193 = load i64, i64* @CK_RHS_G_MASK, align 8
  %194 = and i64 %192, %193
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = call i32 @ck_pr_inc_uint(i32* %195)
  %197 = call i32 (...) @ck_pr_fence_atomic_store()
  %198 = load i64, i64* %15, align 8
  store i64 %198, i64* %6, align 8
  %199 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %7, align 8
  %200 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %199, i32 0, i32 1
  store i32 0, i32* %200, align 8
  %201 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %13, align 8
  %202 = load i64, i64* %6, align 8
  %203 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %201, i64 %202)
  store %struct.ck_rhs_entry_desc* %203, %struct.ck_rhs_entry_desc** %7, align 8
  br label %162

204:                                              ; preds = %162
  store i32 0, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %205

205:                                              ; preds = %204, %96, %95
  %206 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %206)
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CK_CC_DECONST_PTR(i8*) #2

declare dso_local i8* @ck_rhs_entry(%struct.ck_rhs_map*, i64) #2

declare dso_local i32 @ck_rhs_set_rh(%struct.ck_rhs_map*, i64) #2

declare dso_local i32 @ck_rhs_grow(%struct.ck_rhs*, i32) #2

declare dso_local i32 @ck_rhs_unset_rh(%struct.ck_rhs_map*, i64) #2

declare dso_local %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map*, i64) #2

declare dso_local i64 @ck_rhs_get_first_offset(%struct.ck_rhs_map*, i64, i64) #2

declare dso_local i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map*, i64, i64) #2

declare dso_local i32 @ck_pr_store_ptr(i32, i8*) #2

declare dso_local i32 @ck_rhs_entry_addr(%struct.ck_rhs_map*, i64) #2

declare dso_local i32 @ck_pr_inc_uint(i32*) #2

declare dso_local i32 @ck_pr_fence_atomic_store(...) #2

declare dso_local i32 @ck_rhs_set_probes(%struct.ck_rhs_map*, i64, i64) #2

declare dso_local i32 @ck_rhs_add_wanted(%struct.ck_rhs*, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
