; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_tab.c_term_tab_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.tablist, %struct.tablist }
%struct.tablist = type { i64, i64, i64* }
%struct.termp = type { i32 }
%struct.roffsu = type { i32 }

@term_tab_set.recording_period = internal global i32 0, align 4
@tabs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [4 x i8] c".8i\00", align 1
@SCALE_IN = common dso_local global i32 0, align 4
@SCALE_EM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_tab_set(%struct.termp* %0, i8* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.roffsu, align 4
  %6 = alloca %struct.tablist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.termp* %0, %struct.termp** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %2
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 2, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 1, i32 0), align 8
  store i32 0, i32* @term_tab_set.recording_period, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 0), align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = load i32, i32* @SCALE_IN, align 4
  %16 = call i32* @a2roffsu(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.roffsu* %5, i32 %15)
  %17 = load %struct.termp*, %struct.termp** %3, align 8
  %18 = call i8* @term_hen(%struct.termp* %17, %struct.roffsu* %5)
  %19 = ptrtoint i8* %18 to i64
  store i64 %19, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 0), align 8
  br label %20

20:                                               ; preds = %14, %11
  br label %118

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 84
  br i1 %26, label %27, label %34

27:                                               ; preds = %21
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 1
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* @term_tab_set.recording_period, align 4
  br label %118

34:                                               ; preds = %27, %21
  %35 = load i8*, i8** %4, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 43
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  store i32 1, i32* %8, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %4, align 8
  br label %43

42:                                               ; preds = %34
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %42, %39
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @SCALE_EM, align 4
  %46 = call i32* @a2roffsu(i8* %44, %struct.roffsu* %5, i32 %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %118

49:                                               ; preds = %43
  %50 = load i32, i32* @term_tab_set.recording_period, align 4
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, %struct.tablist* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 2), %struct.tablist* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tabs, i32 0, i32 1)
  store %struct.tablist* %53, %struct.tablist** %6, align 8
  %54 = load %struct.tablist*, %struct.tablist** %6, align 8
  %55 = getelementptr inbounds %struct.tablist, %struct.tablist* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.tablist*, %struct.tablist** %6, align 8
  %58 = getelementptr inbounds %struct.tablist, %struct.tablist* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp uge i64 %56, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %49
  %62 = load %struct.tablist*, %struct.tablist** %6, align 8
  %63 = getelementptr inbounds %struct.tablist, %struct.tablist* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 %64, 8
  store i64 %65, i64* %63, align 8
  %66 = load %struct.tablist*, %struct.tablist** %6, align 8
  %67 = getelementptr inbounds %struct.tablist, %struct.tablist* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.tablist*, %struct.tablist** %6, align 8
  %70 = getelementptr inbounds %struct.tablist, %struct.tablist* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64* @mandoc_reallocarray(i64* %68, i64 %71, i32 8)
  %73 = load %struct.tablist*, %struct.tablist** %6, align 8
  %74 = getelementptr inbounds %struct.tablist, %struct.tablist* %73, i32 0, i32 2
  store i64* %72, i64** %74, align 8
  br label %75

75:                                               ; preds = %61, %49
  %76 = load %struct.termp*, %struct.termp** %3, align 8
  %77 = call i8* @term_hen(%struct.termp* %76, %struct.roffsu* %5)
  %78 = ptrtoint i8* %77 to i64
  store i64 %78, i64* %7, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.tablist*, %struct.tablist** %6, align 8
  %81 = getelementptr inbounds %struct.tablist, %struct.tablist* %80, i32 0, i32 2
  %82 = load i64*, i64** %81, align 8
  %83 = load %struct.tablist*, %struct.tablist** %6, align 8
  %84 = getelementptr inbounds %struct.tablist, %struct.tablist* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i64, i64* %82, i64 %85
  store i64 %79, i64* %86, align 8
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %75
  %90 = load %struct.tablist*, %struct.tablist** %6, align 8
  %91 = getelementptr inbounds %struct.tablist, %struct.tablist* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %89
  %95 = load %struct.tablist*, %struct.tablist** %6, align 8
  %96 = getelementptr inbounds %struct.tablist, %struct.tablist* %95, i32 0, i32 2
  %97 = load i64*, i64** %96, align 8
  %98 = load %struct.tablist*, %struct.tablist** %6, align 8
  %99 = getelementptr inbounds %struct.tablist, %struct.tablist* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub i64 %100, 1
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.tablist*, %struct.tablist** %6, align 8
  %105 = getelementptr inbounds %struct.tablist, %struct.tablist* %104, i32 0, i32 2
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.tablist*, %struct.tablist** %6, align 8
  %108 = getelementptr inbounds %struct.tablist, %struct.tablist* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds i64, i64* %106, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = add i64 %111, %103
  store i64 %112, i64* %110, align 8
  br label %113

113:                                              ; preds = %94, %89, %75
  %114 = load %struct.tablist*, %struct.tablist** %6, align 8
  %115 = getelementptr inbounds %struct.tablist, %struct.tablist* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %115, align 8
  br label %118

118:                                              ; preds = %113, %48, %33, %20
  ret void
}

declare dso_local i32* @a2roffsu(i8*, %struct.roffsu*, i32) #1

declare dso_local i8* @term_hen(%struct.termp*, %struct.roffsu*) #1

declare dso_local i64* @mandoc_reallocarray(i64*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
