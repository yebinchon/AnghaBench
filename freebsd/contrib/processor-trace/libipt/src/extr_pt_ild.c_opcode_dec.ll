; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_opcode_dec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_opcode_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_ild = type { i32, i32, i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@PTI_MAP_0 = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@PTI_MAP_2 = common dso_local global i32 0, align 4
@PTI_MAP_3 = common dso_local global i32 0, align 4
@PTI_MAP_INVALID = common dso_local global i32 0, align 4
@PTI_MAP_AMD3DNOW = common dso_local global i32 0, align 4
@PTI_MAP_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_ild*, i32)* @opcode_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opcode_dec(%struct.pt_ild* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_ild*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pt_ild* %0, %struct.pt_ild** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %9 = icmp ne %struct.pt_ild* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @pte_internal, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %106

13:                                               ; preds = %2
  %14 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @get_byte(%struct.pt_ild* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 15
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load i32, i32* @PTI_MAP_0, align 4
  %21 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %22 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %25 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @modrm_dec(%struct.pt_ild* %26, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %106

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %5, align 4
  %33 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %34 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @pte_bad_insn, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %106

41:                                               ; preds = %30
  %42 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @get_byte(%struct.pt_ild* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 56
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* @PTI_MAP_2, align 4
  %49 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %50 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  %54 = call i32 @get_next_as_opcode(%struct.pt_ild* %51, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %106

55:                                               ; preds = %41
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %56, 58
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* @PTI_MAP_3, align 4
  %60 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %61 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 4
  %62 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %63 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %62, i32 0, i32 2
  store i32 1, i32* %63, align 4
  %64 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @get_next_as_opcode(%struct.pt_ild* %64, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %106

68:                                               ; preds = %55
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @bits_match(i32 %69, i32 248, i32 56)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %68
  %73 = load i32, i32* @PTI_MAP_INVALID, align 4
  %74 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %75 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  %79 = call i32 @get_next_as_opcode(%struct.pt_ild* %76, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %106

80:                                               ; preds = %68
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 15
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* @PTI_MAP_AMD3DNOW, align 4
  %85 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %86 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %88 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %87, i32 0, i32 2
  store i32 1, i32* %88, align 4
  %89 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %90 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %89, i32 0, i32 0
  store i32 15, i32* %90, align 4
  %91 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @modrm_dec(%struct.pt_ild* %91, i32 %93)
  store i32 %94, i32* %3, align 4
  br label %106

95:                                               ; preds = %80
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %98 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @PTI_MAP_1, align 4
  %100 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %101 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %100, i32 0, i32 3
  store i32 %99, i32* %101, align 4
  %102 = load %struct.pt_ild*, %struct.pt_ild** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 @modrm_dec(%struct.pt_ild* %102, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %95, %83, %72, %58, %47, %38, %19, %10
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @get_byte(%struct.pt_ild*, i32) #1

declare dso_local i32 @modrm_dec(%struct.pt_ild*, i32) #1

declare dso_local i32 @get_next_as_opcode(%struct.pt_ild*, i32) #1

declare dso_local i64 @bits_match(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
