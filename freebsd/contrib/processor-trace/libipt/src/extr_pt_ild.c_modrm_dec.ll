; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_modrm_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_modrm_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i64, i64, i64, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@modrm_dec.has_modrm_2d = internal constant [2 x i64*] [i64* inttoptr (i64 129 to i64*), i64* inttoptr (i64 128 to i64*)], align 16
@PTI_MODRM_FALSE = common dso_local global i32 0, align 4
@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_2 = common dso_local global i64 0, align 8
@PTI_MODRM_TRUE = common dso_local global i32 0, align 4
@PTI_MODRM_UNDEF = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@PTI_MODRM_IGNORE_MOD = common dso_local global i32 0, align 4
@eamode_table = common dso_local global i64** null, align 8
@disp_default = common dso_local global i32*** null, align 8
@has_sib = common dso_local global i64*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i64)* @modrm_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @modrm_dec(%struct.pt_ild* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_ild*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.pt_ild* %0, %struct.pt_ild** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32, i32* @PTI_MODRM_FALSE, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %14 = icmp ne %struct.pt_ild* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @pte_internal, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %121

18:                                               ; preds = %2
  %19 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %20 = call i64 @pti_get_map(%struct.pt_ild* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @PTI_MAP_2, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @PTI_MODRM_TRUE, align 4
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = getelementptr inbounds [2 x i64*], [2 x i64*]* @modrm_dec.has_modrm_2d, i64 0, i64 %27
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %31 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %26, %24
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PTI_MODRM_FALSE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @PTI_MODRM_UNDEF, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40, %36
  %45 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @disp_dec(%struct.pt_ild* %45, i64 %46)
  store i32 %47, i32* %3, align 4
  br label %121

48:                                               ; preds = %40
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %51 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* @pte_bad_insn, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %121

57:                                               ; preds = %48
  %58 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @get_byte(%struct.pt_ild* %58, i64 %59)
  %61 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %62 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PTI_MODRM_IGNORE_MOD, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %116

66:                                               ; preds = %57
  %67 = load i64**, i64*** @eamode_table, align 8
  %68 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %69 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds i64*, i64** %67, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %76 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %8, align 8
  %80 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %81 = call i32 @pti_get_modrm_mod(%struct.pt_ild* %80)
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %9, align 8
  %83 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %84 = call i32 @pti_get_modrm_rm(%struct.pt_ild* %83)
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %10, align 8
  %86 = load i32***, i32**** @disp_default, align 8
  %87 = load i64, i64* %8, align 8
  %88 = getelementptr inbounds i32**, i32*** %86, i64 %87
  %89 = load i32**, i32*** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %97 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 8
  %98 = load i64***, i64**** @has_sib, align 8
  %99 = load i64, i64* %8, align 8
  %100 = getelementptr inbounds i64**, i64*** %98, i64 %99
  %101 = load i64**, i64*** %100, align 8
  %102 = load i64, i64* %9, align 8
  %103 = getelementptr inbounds i64*, i64** %101, i64 %102
  %104 = load i64*, i64** %103, align 8
  %105 = load i64, i64* %10, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %11, align 8
  %108 = load i64, i64* %11, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %66
  %111 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, 1
  %114 = call i32 @sib_dec(%struct.pt_ild* %111, i64 %113)
  store i32 %114, i32* %3, align 4
  br label %121

115:                                              ; preds = %66
  br label %116

116:                                              ; preds = %115, %57
  %117 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = add nsw i64 %118, 1
  %120 = call i32 @disp_dec(%struct.pt_ild* %117, i64 %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %110, %54, %44, %15
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @pti_get_map(%struct.pt_ild*) #1

declare dso_local i32 @disp_dec(%struct.pt_ild*, i64) #1

declare dso_local i32 @get_byte(%struct.pt_ild*, i64) #1

declare dso_local i32 @pti_get_modrm_mod(%struct.pt_ild*) #1

declare dso_local i32 @pti_get_modrm_rm(%struct.pt_ild*) #1

declare dso_local i32 @sib_dec(%struct.pt_ild*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
