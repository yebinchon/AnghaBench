; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_ex.c_v_ecl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_17__*, %struct.TYPE_21__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_19__*, %struct.TYPE_17__* }

@SC_COMEDIT = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4
@OS_STRDUP = common dso_local global i32 0, align 4
@O_FILEENCODING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*)* @v_ecl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v_ecl(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %6 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %6, i32 0, i32 5
  %8 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_21__* %8, %struct.TYPE_21__** %4, align 8
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %12 = icmp eq %struct.TYPE_18__* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = call i64 @v_ecl_init(%struct.TYPE_20__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %86

18:                                               ; preds = %13, %1
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %21 = call i64 @screen_init(%struct.TYPE_21__* %19, %struct.TYPE_20__* %20, %struct.TYPE_20__** %5)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %86

24:                                               ; preds = %18
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = call i64 @vs_split(%struct.TYPE_20__* %25, %struct.TYPE_20__* %26, i32 1)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = call i32 @screen_end(%struct.TYPE_20__* %30)
  store i32 1, i32* %2, align 4
  br label %86

32:                                               ; preds = %24
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %36, align 8
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 4
  store %struct.TYPE_17__* %37, %struct.TYPE_17__** %39, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 3
  store %struct.TYPE_19__* %50, %struct.TYPE_19__** %52, align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  store i32 %57, i32* %61, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = call i32 @db_last(%struct.TYPE_20__* %62, i32* %64)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %32
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %32
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 2
  store %struct.TYPE_20__* %74, %struct.TYPE_20__** %76, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = load i32, i32* @SC_COMEDIT, align 4
  %79 = call i32 @F_SET(%struct.TYPE_20__* %77, i32 %78)
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 1
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %82, align 8
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = load i32, i32* @SC_SSWITCH, align 4
  %85 = call i32 @F_SET(%struct.TYPE_20__* %83, i32 %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %73, %29, %23, %17
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @v_ecl_init(%struct.TYPE_20__*) #1

declare dso_local i64 @screen_init(%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_20__**) #1

declare dso_local i64 @vs_split(%struct.TYPE_20__*, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @screen_end(%struct.TYPE_20__*) #1

declare dso_local i32 @db_last(%struct.TYPE_20__*, i32*) #1

declare dso_local i32 @F_SET(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
