; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_set_branch_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/processor-trace/libipt/src/extr_pt_ild.c_set_branch_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_insn_ext = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pt_ild = type { i32, i32 }

@pte_internal = common dso_local global i32 0, align 4
@pte_bad_insn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_insn_ext*, %struct.pt_ild*)* @set_branch_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_branch_target(%struct.pt_insn_ext* %0, %struct.pt_ild* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pt_insn_ext*, align 8
  %5 = alloca %struct.pt_ild*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store %struct.pt_insn_ext* %0, %struct.pt_insn_ext** %4, align 8
  store %struct.pt_ild* %1, %struct.pt_ild** %5, align 8
  %9 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %4, align 8
  %10 = icmp ne %struct.pt_insn_ext* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %13 = icmp ne %struct.pt_ild* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @pte_internal, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %81

17:                                               ; preds = %11
  %18 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %4, align 8
  %19 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %23 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

26:                                               ; preds = %17
  %27 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %28 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %29 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_byte_ptr(%struct.pt_ild* %27, i32 %30)
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %4, align 8
  %36 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i32 %34, i32* %38, align 4
  br label %80

39:                                               ; preds = %17
  %40 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %41 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 2
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %46 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %47 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @get_byte_ptr(%struct.pt_ild* %45, i32 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %4, align 8
  %54 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 %52, i32* %56, align 4
  br label %79

57:                                               ; preds = %39
  %58 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %59 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %64 = load %struct.pt_ild*, %struct.pt_ild** %5, align 8
  %65 = getelementptr inbounds %struct.pt_ild, %struct.pt_ild* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @get_byte_ptr(%struct.pt_ild* %63, i32 %66)
  %68 = inttoptr i64 %67 to i32*
  store i32* %68, i32** %8, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pt_insn_ext*, %struct.pt_insn_ext** %4, align 8
  %72 = getelementptr inbounds %struct.pt_insn_ext, %struct.pt_insn_ext* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %70, i32* %74, align 4
  br label %78

75:                                               ; preds = %57
  %76 = load i32, i32* @pte_bad_insn, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %81

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %44
  br label %80

80:                                               ; preds = %79, %26
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %75, %14
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @get_byte_ptr(%struct.pt_ild*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
