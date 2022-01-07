; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_getreg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/intel/dtrace/extr_fasttrap_isa.c_fasttrap_getreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSR_FSBASE = common dso_local global i32 0, align 4
@MSR_GSBASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"dtrace: illegal register constant\00", align 1
@_NGREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reg*, i32)* @fasttrap_getreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_getreg(%struct.reg* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reg*, align 8
  %5 = alloca i32, align 4
  store %struct.reg* %0, %struct.reg** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %117 [
    i32 142, label %7
    i32 143, label %11
    i32 144, label %15
    i32 145, label %19
    i32 146, label %23
    i32 147, label %27
    i32 140, label %31
    i32 141, label %35
    i32 135, label %39
    i32 131, label %43
    i32 138, label %47
    i32 137, label %51
    i32 134, label %55
    i32 136, label %59
    i32 139, label %63
    i32 128, label %67
    i32 153, label %71
    i32 132, label %75
    i32 155, label %79
    i32 133, label %83
    i32 130, label %87
    i32 129, label %91
    i32 151, label %95
    i32 149, label %99
    i32 154, label %103
    i32 152, label %107
    i32 150, label %111
    i32 148, label %114
  ]

7:                                                ; preds = %2
  %8 = load %struct.reg*, %struct.reg** %4, align 8
  %9 = getelementptr inbounds %struct.reg, %struct.reg* %8, i32 0, i32 25
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %119

11:                                               ; preds = %2
  %12 = load %struct.reg*, %struct.reg** %4, align 8
  %13 = getelementptr inbounds %struct.reg, %struct.reg* %12, i32 0, i32 24
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %119

15:                                               ; preds = %2
  %16 = load %struct.reg*, %struct.reg** %4, align 8
  %17 = getelementptr inbounds %struct.reg, %struct.reg* %16, i32 0, i32 23
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  br label %119

19:                                               ; preds = %2
  %20 = load %struct.reg*, %struct.reg** %4, align 8
  %21 = getelementptr inbounds %struct.reg, %struct.reg* %20, i32 0, i32 22
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %3, align 4
  br label %119

23:                                               ; preds = %2
  %24 = load %struct.reg*, %struct.reg** %4, align 8
  %25 = getelementptr inbounds %struct.reg, %struct.reg* %24, i32 0, i32 21
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  %28 = load %struct.reg*, %struct.reg** %4, align 8
  %29 = getelementptr inbounds %struct.reg, %struct.reg* %28, i32 0, i32 20
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %119

31:                                               ; preds = %2
  %32 = load %struct.reg*, %struct.reg** %4, align 8
  %33 = getelementptr inbounds %struct.reg, %struct.reg* %32, i32 0, i32 19
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %3, align 4
  br label %119

35:                                               ; preds = %2
  %36 = load %struct.reg*, %struct.reg** %4, align 8
  %37 = getelementptr inbounds %struct.reg, %struct.reg* %36, i32 0, i32 18
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %3, align 4
  br label %119

39:                                               ; preds = %2
  %40 = load %struct.reg*, %struct.reg** %4, align 8
  %41 = getelementptr inbounds %struct.reg, %struct.reg* %40, i32 0, i32 17
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %3, align 4
  br label %119

43:                                               ; preds = %2
  %44 = load %struct.reg*, %struct.reg** %4, align 8
  %45 = getelementptr inbounds %struct.reg, %struct.reg* %44, i32 0, i32 16
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %3, align 4
  br label %119

47:                                               ; preds = %2
  %48 = load %struct.reg*, %struct.reg** %4, align 8
  %49 = getelementptr inbounds %struct.reg, %struct.reg* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %3, align 4
  br label %119

51:                                               ; preds = %2
  %52 = load %struct.reg*, %struct.reg** %4, align 8
  %53 = getelementptr inbounds %struct.reg, %struct.reg* %52, i32 0, i32 14
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %3, align 4
  br label %119

55:                                               ; preds = %2
  %56 = load %struct.reg*, %struct.reg** %4, align 8
  %57 = getelementptr inbounds %struct.reg, %struct.reg* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %3, align 4
  br label %119

59:                                               ; preds = %2
  %60 = load %struct.reg*, %struct.reg** %4, align 8
  %61 = getelementptr inbounds %struct.reg, %struct.reg* %60, i32 0, i32 12
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %3, align 4
  br label %119

63:                                               ; preds = %2
  %64 = load %struct.reg*, %struct.reg** %4, align 8
  %65 = getelementptr inbounds %struct.reg, %struct.reg* %64, i32 0, i32 11
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %3, align 4
  br label %119

67:                                               ; preds = %2
  %68 = load %struct.reg*, %struct.reg** %4, align 8
  %69 = getelementptr inbounds %struct.reg, %struct.reg* %68, i32 0, i32 10
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %3, align 4
  br label %119

71:                                               ; preds = %2
  %72 = load %struct.reg*, %struct.reg** %4, align 8
  %73 = getelementptr inbounds %struct.reg, %struct.reg* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %3, align 4
  br label %119

75:                                               ; preds = %2
  %76 = load %struct.reg*, %struct.reg** %4, align 8
  %77 = getelementptr inbounds %struct.reg, %struct.reg* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %3, align 4
  br label %119

79:                                               ; preds = %2
  %80 = load %struct.reg*, %struct.reg** %4, align 8
  %81 = getelementptr inbounds %struct.reg, %struct.reg* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %3, align 4
  br label %119

83:                                               ; preds = %2
  %84 = load %struct.reg*, %struct.reg** %4, align 8
  %85 = getelementptr inbounds %struct.reg, %struct.reg* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %3, align 4
  br label %119

87:                                               ; preds = %2
  %88 = load %struct.reg*, %struct.reg** %4, align 8
  %89 = getelementptr inbounds %struct.reg, %struct.reg* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %3, align 4
  br label %119

91:                                               ; preds = %2
  %92 = load %struct.reg*, %struct.reg** %4, align 8
  %93 = getelementptr inbounds %struct.reg, %struct.reg* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %3, align 4
  br label %119

95:                                               ; preds = %2
  %96 = load %struct.reg*, %struct.reg** %4, align 8
  %97 = getelementptr inbounds %struct.reg, %struct.reg* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %3, align 4
  br label %119

99:                                               ; preds = %2
  %100 = load %struct.reg*, %struct.reg** %4, align 8
  %101 = getelementptr inbounds %struct.reg, %struct.reg* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %3, align 4
  br label %119

103:                                              ; preds = %2
  %104 = load %struct.reg*, %struct.reg** %4, align 8
  %105 = getelementptr inbounds %struct.reg, %struct.reg* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %3, align 4
  br label %119

107:                                              ; preds = %2
  %108 = load %struct.reg*, %struct.reg** %4, align 8
  %109 = getelementptr inbounds %struct.reg, %struct.reg* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %3, align 4
  br label %119

111:                                              ; preds = %2
  %112 = load i32, i32* @MSR_FSBASE, align 4
  %113 = call i32 @rdmsr(i32 %112)
  store i32 %113, i32* %3, align 4
  br label %119

114:                                              ; preds = %2
  %115 = load i32, i32* @MSR_GSBASE, align 4
  %116 = call i32 @rdmsr(i32 %115)
  store i32 %116, i32* %3, align 4
  br label %119

117:                                              ; preds = %2
  %118 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %119

119:                                              ; preds = %117, %114, %111, %107, %103, %99, %95, %91, %87, %83, %79, %75, %71, %67, %63, %59, %55, %51, %47, %43, %39, %35, %31, %27, %23, %19, %15, %11, %7
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
