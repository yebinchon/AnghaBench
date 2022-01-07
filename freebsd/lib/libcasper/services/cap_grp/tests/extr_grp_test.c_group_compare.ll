; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_group_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcasper/services/cap_grp/tests/extr_grp_test.c_group_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group = type { i64, i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.group*, %struct.group*)* @group_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @group_compare(%struct.group* %0, %struct.group* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.group*, align 8
  %5 = alloca %struct.group*, align 8
  store %struct.group* %0, %struct.group** %4, align 8
  store %struct.group* %1, %struct.group** %5, align 8
  %6 = load %struct.group*, %struct.group** %4, align 8
  %7 = icmp eq %struct.group* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.group*, %struct.group** %5, align 8
  %10 = icmp eq %struct.group* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %81

12:                                               ; preds = %8, %2
  %13 = load %struct.group*, %struct.group** %4, align 8
  %14 = icmp eq %struct.group* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.group*, %struct.group** %5, align 8
  %17 = icmp eq %struct.group* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %81

19:                                               ; preds = %15
  %20 = load %struct.group*, %struct.group** %4, align 8
  %21 = getelementptr inbounds %struct.group, %struct.group* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.group*, %struct.group** %5, align 8
  %24 = getelementptr inbounds %struct.group, %struct.group* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i64 @strcmp(i32* %22, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %81

29:                                               ; preds = %19
  %30 = load %struct.group*, %struct.group** %4, align 8
  %31 = getelementptr inbounds %struct.group, %struct.group* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.group*, %struct.group** %5, align 8
  %36 = getelementptr inbounds %struct.group, %struct.group* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %61

39:                                               ; preds = %34, %29
  %40 = load %struct.group*, %struct.group** %4, align 8
  %41 = getelementptr inbounds %struct.group, %struct.group* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = load %struct.group*, %struct.group** %5, align 8
  %46 = getelementptr inbounds %struct.group, %struct.group* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  store i32 0, i32* %3, align 4
  br label %81

50:                                               ; preds = %44
  %51 = load %struct.group*, %struct.group** %4, align 8
  %52 = getelementptr inbounds %struct.group, %struct.group* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.group*, %struct.group** %5, align 8
  %55 = getelementptr inbounds %struct.group, %struct.group* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i64 @strcmp(i32* %53, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %81

60:                                               ; preds = %50
  br label %61

61:                                               ; preds = %60, %34
  %62 = load %struct.group*, %struct.group** %4, align 8
  %63 = getelementptr inbounds %struct.group, %struct.group* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.group*, %struct.group** %5, align 8
  %66 = getelementptr inbounds %struct.group, %struct.group* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %81

70:                                               ; preds = %61
  %71 = load %struct.group*, %struct.group** %4, align 8
  %72 = getelementptr inbounds %struct.group, %struct.group* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.group*, %struct.group** %5, align 8
  %75 = getelementptr inbounds %struct.group, %struct.group* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @group_mem_compare(i32 %73, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  store i32 0, i32* %3, align 4
  br label %81

80:                                               ; preds = %70
  store i32 1, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %79, %69, %59, %49, %28, %18, %11
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i64 @strcmp(i32*, i32*) #1

declare dso_local i32 @group_mem_compare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
