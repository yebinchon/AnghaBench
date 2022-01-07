; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c_grouping_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfprintf.c_grouping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouping_state = type { i32*, i32, i32, i32, i32, i32 }
%struct.lconv = type { i32*, i32 }

@CHAR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grouping_state*, i32, i32)* @grouping_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grouping_init(%struct.grouping_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.grouping_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lconv*, align 8
  store %struct.grouping_state* %0, %struct.grouping_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call %struct.lconv* @localeconv_l(i32 %8)
  store %struct.lconv* %9, %struct.lconv** %7, align 8
  %10 = load %struct.lconv*, %struct.lconv** %7, align 8
  %11 = getelementptr inbounds %struct.lconv, %struct.lconv* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %14 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %13, i32 0, i32 0
  store i32* %12, i32** %14, align 8
  %15 = load %struct.lconv*, %struct.lconv** %7, align 8
  %16 = getelementptr inbounds %struct.lconv, %struct.lconv* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %19 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %21 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @strlen(i32 %22)
  %24 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %25 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %27 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %26, i32 0, i32 3
  store i32 0, i32* %27, align 8
  %28 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %29 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %28, i32 0, i32 2
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %32 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %79, %3
  %34 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %35 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CHAR_MAX, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %80

40:                                               ; preds = %33
  %41 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %42 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %45 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp sle i32 %43, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %80

50:                                               ; preds = %40
  %51 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %52 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %56 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %60 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %50
  %66 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %67 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %71 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %71, align 8
  br label %79

74:                                               ; preds = %50
  %75 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %76 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %74, %65
  br label %33

80:                                               ; preds = %49, %33
  %81 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %82 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %85 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %83, %86
  %88 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %89 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = mul nsw i32 %87, %90
  ret i32 %91
}

declare dso_local %struct.lconv* @localeconv_l(i32) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
