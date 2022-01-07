; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_Nswitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_tag.c_ex_tag_Nswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_23__*, i32, i32, %struct.TYPE_20__*, %struct.TYPE_21__*, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__*, i32 }

@SC_SCR_TOP = common dso_local global i32 0, align 4
@SC_SCR_CENTER = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ex_tag_Nswitch(%struct.TYPE_23__* %0, %struct.TYPE_22__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %12 = icmp eq %struct.TYPE_20__* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %15 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.TYPE_20__* @file_add(%struct.TYPE_23__* %14, i32 %17)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 0
  store %struct.TYPE_20__* %18, %struct.TYPE_20__** %20, align 8
  %21 = icmp eq %struct.TYPE_20__* %18, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %116

23:                                               ; preds = %13, %3
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %28 = call i64 @screen_init(i32 %26, %struct.TYPE_23__* %27, %struct.TYPE_23__** %8)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %116

31:                                               ; preds = %23
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %34 = call i64 @vs_split(%struct.TYPE_23__* %32, %struct.TYPE_23__* %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %31
  %37 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 4
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %39, align 8
  %41 = call i32 @file_end(%struct.TYPE_23__* %37, %struct.TYPE_21__* %40, i32 1)
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %43 = call i32 @screen_end(%struct.TYPE_23__* %42)
  store i32 1, i32* %4, align 4
  br label %116

44:                                               ; preds = %31
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  %48 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = icmp eq %struct.TYPE_20__* %47, %50
  br i1 %51, label %52, label %78

52:                                               ; preds = %44
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %54, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 4
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %57, align 8
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 3
  store %struct.TYPE_20__* %66, %struct.TYPE_20__** %68, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  br label %92

78:                                               ; preds = %44
  %79 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @file_init(%struct.TYPE_23__* %79, %struct.TYPE_20__* %82, i32* null, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %88 = call i32 @vs_discard(%struct.TYPE_23__* %87, i32* null)
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %90 = call i32 @screen_end(%struct.TYPE_23__* %89)
  store i32 1, i32* %4, align 4
  br label %116

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %52
  %93 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @ex_buildargv(%struct.TYPE_23__* %93, i32* null, i32 %98)
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  store i32 %99, i32* %103, align 4
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %105 = load i32, i32* @SC_SCR_TOP, align 4
  %106 = call i32 @F_CLR(%struct.TYPE_23__* %104, i32 %105)
  %107 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %108 = load i32, i32* @SC_SCR_CENTER, align 4
  %109 = call i32 @F_SET(%struct.TYPE_23__* %107, i32 %108)
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %111 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %111, i32 0, i32 0
  store %struct.TYPE_23__* %110, %struct.TYPE_23__** %112, align 8
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %114 = load i32, i32* @SC_SSWITCH, align 4
  %115 = call i32 @F_SET(%struct.TYPE_23__* %113, i32 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %92, %86, %36, %30, %22
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.TYPE_20__* @file_add(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @screen_init(i32, %struct.TYPE_23__*, %struct.TYPE_23__**) #1

declare dso_local i64 @vs_split(%struct.TYPE_23__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @file_end(%struct.TYPE_23__*, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @screen_end(%struct.TYPE_23__*) #1

declare dso_local i64 @file_init(%struct.TYPE_23__*, %struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @vs_discard(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @ex_buildargv(%struct.TYPE_23__*, i32*, i32) #1

declare dso_local i32 @F_CLR(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
