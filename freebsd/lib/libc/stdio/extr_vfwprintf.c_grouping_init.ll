; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c_grouping_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwprintf.c_grouping_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouping_state = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@CHAR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.grouping_state*, i32, i32)* @grouping_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grouping_init(%struct.grouping_state* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.grouping_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.grouping_state* %0, %struct.grouping_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.TYPE_2__* @localeconv_l(i32 %7)
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %12 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @get_thousep(i32 %13)
  %15 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %16 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %18 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %20 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %19, i32 0, i32 1
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %23 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %70, %3
  %25 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %26 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CHAR_MAX, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %33 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %36 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp sle i32 %34, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %71

41:                                               ; preds = %31
  %42 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %43 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %47 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %51 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %41
  %57 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %58 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  %61 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %62 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %62, align 8
  br label %70

65:                                               ; preds = %41
  %66 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %67 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %65, %56
  br label %24

71:                                               ; preds = %40, %24
  %72 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %73 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.grouping_state*, %struct.grouping_state** %4, align 8
  %76 = getelementptr inbounds %struct.grouping_state, %struct.grouping_state* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  ret i32 %78
}

declare dso_local %struct.TYPE_2__* @localeconv_l(i32) #1

declare dso_local i32 @get_thousep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
