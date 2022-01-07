; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_edit.c_ex_N_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_edit.c_ex_N_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_24__*, i32, i32, i32, i32, %struct.TYPE_25__*, %struct.TYPE_23__*, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32* }
%struct.TYPE_25__ = type { i32, i32 }

@cmds = common dso_local global i32* null, align 8
@C_VSPLIT = common dso_local global i64 0, align 8
@E_C_FORCE = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4
@OS_STRDUP = common dso_local global i32 0, align 4
@O_FILEENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_25__*, i32)* @ex_N_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_N_edit(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %15 = call i64 @screen_init(i32 %13, %struct.TYPE_24__* %14, %struct.TYPE_24__** %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %122

18:                                               ; preds = %4
  %19 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32*, i32** @cmds, align 8
  %23 = load i64, i64* @C_VSPLIT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = icmp eq i32* %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %29 = call i64 @vs_vsplit(%struct.TYPE_24__* %27, %struct.TYPE_24__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26, %18
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32*, i32** @cmds, align 8
  %36 = load i64, i64* @C_VSPLIT, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = icmp ne i32* %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %42 = call i64 @vs_split(%struct.TYPE_24__* %40, %struct.TYPE_24__* %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39, %26
  %45 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %46 = call i32 @screen_end(%struct.TYPE_24__* %45)
  store i32 1, i32* %5, align 4
  br label %122

47:                                               ; preds = %39, %31
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %84

50:                                               ; preds = %47
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %52, align 8
  %54 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 6
  store %struct.TYPE_23__* %53, %struct.TYPE_23__** %55, align 8
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %56, i32 0, i32 6
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 5
  store %struct.TYPE_25__* %62, %struct.TYPE_25__** %64, align 8
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %72, i32 0, i32 1
  store i32 %69, i32* %73, align 4
  %74 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 8
  br label %106

84:                                               ; preds = %47
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %86 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @E_C_FORCE, align 4
  %91 = call i64 @FL_ISSET(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i32, i32* @FS_FORCE, align 4
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = call i64 @file_init(%struct.TYPE_24__* %85, %struct.TYPE_25__* %86, i32* null, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %102 = call i32 @vs_discard(%struct.TYPE_24__* %101, i32* null)
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %104 = call i32 @screen_end(%struct.TYPE_24__* %103)
  store i32 1, i32* %5, align 4
  br label %122

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %50
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ex_buildargv(%struct.TYPE_24__* %107, i32* null, i32 %110)
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %115 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %114, i32 0, i32 2
  store i32 %111, i32* %115, align 4
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %117, i32 0, i32 0
  store %struct.TYPE_24__* %116, %struct.TYPE_24__** %118, align 8
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %120 = load i32, i32* @SC_SSWITCH, align 4
  %121 = call i32 @F_SET(%struct.TYPE_24__* %119, i32 %120)
  store i32 0, i32* %5, align 4
  br label %122

122:                                              ; preds = %106, %100, %44, %17
  %123 = load i32, i32* %5, align 4
  ret i32 %123
}

declare dso_local i64 @screen_init(i32, %struct.TYPE_24__*, %struct.TYPE_24__**) #1

declare dso_local i64 @vs_vsplit(%struct.TYPE_24__*, %struct.TYPE_24__*) #1

declare dso_local i64 @vs_split(%struct.TYPE_24__*, %struct.TYPE_24__*, i32) #1

declare dso_local i32 @screen_end(%struct.TYPE_24__*) #1

declare dso_local i64 @file_init(%struct.TYPE_24__*, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32 @vs_discard(%struct.TYPE_24__*, i32*) #1

declare dso_local i32 @ex_buildargv(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @F_SET(%struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
