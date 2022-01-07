; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_put_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_rhs.c_ck_rhs_put_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_rhs = type { i32, %struct.ck_rhs_map* }
%struct.ck_rhs_map = type { i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i32, i64, i64, i32 }
%struct.ck_rhs.0 = type opaque
%struct.ck_rhs_entry_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ck_rhs*, i64, i8*, i32)* @ck_rhs_put_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ck_rhs_put_internal(%struct.ck_rhs* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ck_rhs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ck_rhs_map*, align 8
  %16 = alloca %struct.ck_rhs_entry_desc*, align 8
  %17 = alloca i32, align 4
  store %struct.ck_rhs* %0, %struct.ck_rhs** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  br label %18

18:                                               ; preds = %49, %4
  %19 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %20 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %19, i32 0, i32 1
  %21 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %20, align 8
  store %struct.ck_rhs_map* %21, %struct.ck_rhs_map** %15, align 8
  %22 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %23 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %22, i32 0, i32 0
  %24 = load i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)*, i64 (%struct.ck_rhs.0*, %struct.ck_rhs_map*, i64*, i64*, i64, i8*, i8**, i32, i32)** %23, align 8
  %25 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %26 = bitcast %struct.ck_rhs* %25 to %struct.ck_rhs.0*
  %27 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %31 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 %24(%struct.ck_rhs.0* %26, %struct.ck_rhs_map* %27, i64* %14, i64* %11, i64 %28, i8* %29, i8** %12, i32 %32, i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, -1
  br i1 %36, label %37, label %50

37:                                               ; preds = %18
  %38 = load i64, i64* %11, align 8
  %39 = icmp eq i64 %38, -1
  br i1 %39, label %40, label %50

40:                                               ; preds = %37
  %41 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %42 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %43 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 %44, 1
  %46 = call i32 @ck_rhs_grow(%struct.ck_rhs* %41, i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %141

49:                                               ; preds = %40
  br label %18

50:                                               ; preds = %37, %18
  %51 = load i8*, i8** %12, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i32 0, i32* %5, align 4
  br label %141

54:                                               ; preds = %50
  %55 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* %14, align 8
  %58 = call i32 @ck_rhs_map_bound_set(%struct.ck_rhs_map* %55, i64 %56, i64 %57)
  %59 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %60 = getelementptr inbounds %struct.ck_rhs, %struct.ck_rhs* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i8* @ck_rhs_marshal(i32 %61, i8* %62, i64 %63)
  store i8* %64, i8** %13, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp ne i64 %65, -1
  br i1 %66, label %67, label %107

67:                                               ; preds = %54
  %68 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call %struct.ck_rhs_entry_desc* @ck_rhs_desc(%struct.ck_rhs_map* %68, i64 %69)
  store %struct.ck_rhs_entry_desc* %70, %struct.ck_rhs_entry_desc** %16, align 8
  %71 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %74 = call i32 @ck_rhs_put_robin_hood(%struct.ck_rhs* %71, i64 %72, %struct.ck_rhs_entry_desc* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp eq i32 %75, 1
  %77 = zext i1 %76 to i32
  %78 = call i64 @CK_CC_UNLIKELY(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %67
  %81 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %82 = load i64, i64* %7, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @ck_rhs_put_internal(%struct.ck_rhs* %81, i64 %82, i8* %83, i32 %84)
  store i32 %85, i32* %5, align 4
  br label %141

86:                                               ; preds = %67
  %87 = load i32, i32* %17, align 4
  %88 = icmp eq i32 %87, -1
  %89 = zext i1 %88 to i32
  %90 = call i64 @CK_CC_UNLIKELY(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %5, align 4
  br label %141

93:                                               ; preds = %86
  br label %94

94:                                               ; preds = %93
  %95 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %96 = load i64, i64* %11, align 8
  %97 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %95, i64 %96)
  %98 = load i8*, i8** %13, align 8
  %99 = call i32 @ck_pr_store_ptr(i32 %97, i8* %98)
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.ck_rhs_entry_desc*, %struct.ck_rhs_entry_desc** %16, align 8
  %102 = getelementptr inbounds %struct.ck_rhs_entry_desc, %struct.ck_rhs_entry_desc* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  %103 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %104 = load i64, i64* %11, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %103, i64 %104, i32 -1, i64 %105)
  br label %121

107:                                              ; preds = %54
  %108 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %109 = load i64, i64* %10, align 8
  %110 = call i32 @ck_rhs_entry_addr(%struct.ck_rhs_map* %108, i64 %109)
  %111 = load i8*, i8** %13, align 8
  %112 = call i32 @ck_pr_store_ptr(i32 %110, i8* %111)
  %113 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %14, align 8
  %116 = call i32 @ck_rhs_set_probes(%struct.ck_rhs_map* %113, i64 %114, i64 %115)
  %117 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %118 = load i64, i64* %10, align 8
  %119 = load i64, i64* %7, align 8
  %120 = call i32 @ck_rhs_add_wanted(%struct.ck_rhs* %117, i64 %118, i32 -1, i64 %119)
  br label %121

121:                                              ; preds = %107, %94
  %122 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %123 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %127 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %130 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %128, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %121
  %134 = load %struct.ck_rhs*, %struct.ck_rhs** %6, align 8
  %135 = load %struct.ck_rhs_map*, %struct.ck_rhs_map** %15, align 8
  %136 = getelementptr inbounds %struct.ck_rhs_map, %struct.ck_rhs_map* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = shl i32 %137, 1
  %139 = call i32 @ck_rhs_grow(%struct.ck_rhs* %134, i32 %138)
  br label %140

140:                                              ; preds = %133, %121
  store i32 1, i32* %5, align 4
  br label %141

141:                                              ; preds = %140, %92, %80, %53, %48
  %142 = load i32, i32* %5, align 4
  ret i32 %142
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

declare dso_local i32 @ck_rhs_set_probes(%struct.ck_rhs_map*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
