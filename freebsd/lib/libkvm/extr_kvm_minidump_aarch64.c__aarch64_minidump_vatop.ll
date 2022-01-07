; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_aarch64.c__aarch64_minidump_vatop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libkvm/extr_kvm_minidump_aarch64.c__aarch64_minidump_vatop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.vmstate* }
%struct.vmstate = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }

@AARCH64_PAGE_MASK = common dso_local global i64 0, align 8
@AARCH64_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"_aarch64_minidump_vatop: direct map address 0x%jx not in minidump\00", align 1
@AARCH64_L3_SHIFT = common dso_local global i64 0, align 8
@AARCH64_ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@AARCH64_L3_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"_aarch64_minidump_vatop: pde not valid\00", align 1
@AARCH64_ATTR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"_aarch64_minidump_vatop: physical address 0x%jx not in minidump\00", align 1
@.str.3 = private unnamed_addr constant [62 x i8] c"_aarch64_minidump_vatop: virtual address 0x%jx not minidumped\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid address (0x%jx)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i64, i32*)* @_aarch64_minidump_vatop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_aarch64_minidump_vatop(%struct.TYPE_8__* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vmstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %16 = load %struct.vmstate*, %struct.vmstate** %15, align 8
  store %struct.vmstate* %16, %struct.vmstate** %8, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @AARCH64_PAGE_MASK, align 8
  %19 = and i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %23 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sge i64 %21, %25
  br i1 %26, label %27, label %72

27:                                               ; preds = %3
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %30 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %28, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %27
  %35 = load i64, i64* %6, align 8
  %36 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %37 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %35, %39
  %41 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %42 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %40, %44
  %46 = load i64, i64* @AARCH64_PAGE_MASK, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* @AARCH64_PAGE_SIZE, align 4
  %53 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %50, i32 %51, i32 %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %64

56:                                               ; preds = %34
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %57, i32 %60, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %146

64:                                               ; preds = %34
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32*, i32** %7, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @AARCH64_PAGE_SIZE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  store i32 %71, i32* %4, align 4
  br label %151

72:                                               ; preds = %27, %3
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %75 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %73, %77
  br i1 %78, label %79, label %138

79:                                               ; preds = %72
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %82 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %80, %84
  %86 = load i64, i64* @AARCH64_L3_SHIFT, align 8
  %87 = ashr i64 %85, %86
  store i64 %87, i64* %11, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.vmstate*, %struct.vmstate** %8, align 8
  %90 = getelementptr inbounds %struct.vmstate, %struct.vmstate* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = udiv i64 %93, 4
  %95 = icmp uge i64 %88, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %146

97:                                               ; preds = %79
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %99 = load i64, i64* %11, align 8
  %100 = call i32 @_aarch64_pte_get(%struct.TYPE_8__* %98, i64 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @AARCH64_ATTR_DESCR_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @AARCH64_L3_PAGE, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %107, i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %146

112:                                              ; preds = %97
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @AARCH64_ATTR_MASK, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  store i32 %116, i32* %12, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @AARCH64_PAGE_SIZE, align 4
  %120 = call i32 @_kvm_pt_find(%struct.TYPE_8__* %117, i32 %118, i32 %119)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %130

123:                                              ; preds = %112
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %124, i32 %127, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  br label %146

130:                                              ; preds = %112
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32*, i32** %7, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @AARCH64_PAGE_SIZE, align 4
  %136 = load i32, i32* %9, align 4
  %137 = sub nsw i32 %135, %136
  store i32 %137, i32* %4, align 4
  br label %151

138:                                              ; preds = %72
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %6, align 8
  %144 = trunc i64 %143 to i32
  %145 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %139, i32 %142, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %138, %123, %106, %96, %56
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %148 = load i64, i64* %6, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 (%struct.TYPE_8__*, i32, i8*, ...) @_kvm_err(%struct.TYPE_8__* %147, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %149)
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %146, %130, %64
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i32 @_kvm_pt_find(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @_kvm_err(%struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @_aarch64_pte_get(%struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
