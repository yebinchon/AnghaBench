; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_N_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/ex/extr_ex_args.c_ex_N_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_19__*, i32, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i32 }

@E_C_FORCE = common dso_local global i32 0, align 4
@FS_FORCE = common dso_local global i32 0, align 4
@SC_STATUS_CNT = common dso_local global i32 0, align 4
@SC_SSWITCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)* @ex_N_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ex_N_next(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = call i64 @screen_init(i32 %12, %struct.TYPE_19__* %13, %struct.TYPE_19__** %6)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %87

17:                                               ; preds = %2
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %20 = call i64 @vs_split(%struct.TYPE_19__* %18, %struct.TYPE_19__* %19, i32 0)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %24 = call i32 @screen_end(%struct.TYPE_19__* %23)
  store i32 1, i32* %3, align 4
  br label %87

25:                                               ; preds = %17
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %29, i64 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %36, i64 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  %42 = load i8*, i8** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @INT2CHAR(%struct.TYPE_19__* %26, i32 %33, i64 %41, i8* %42, i64 %43)
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = call i32* @file_add(%struct.TYPE_19__* %45, i8* %46)
  store i32* %47, i32** %7, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %65, label %49

49:                                               ; preds = %25
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @E_C_FORCE, align 4
  %56 = call i64 @FL_ISSET(i32 %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @FS_FORCE, align 4
  br label %61

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  %63 = call i64 @file_init(%struct.TYPE_19__* %50, i32* %51, i32* null, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %61, %25
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %67 = call i32 @vs_discard(%struct.TYPE_19__* %66, i32* null)
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = call i32 @screen_end(%struct.TYPE_19__* %68)
  store i32 1, i32* %3, align 4
  br label %87

70:                                               ; preds = %61
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %73 = call i32 @ex_buildargv(%struct.TYPE_19__* %71, %struct.TYPE_20__* %72, i32* null)
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  store i32 %73, i32* %77, align 4
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %79 = load i32, i32* @SC_STATUS_CNT, align 4
  %80 = call i32 @F_SET(%struct.TYPE_19__* %78, i32 %79)
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 0
  store %struct.TYPE_19__* %81, %struct.TYPE_19__** %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %85 = load i32, i32* @SC_SSWITCH, align 4
  %86 = call i32 @F_SET(%struct.TYPE_19__* %84, i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %70, %65, %22, %16
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i64 @screen_init(i32, %struct.TYPE_19__*, %struct.TYPE_19__**) #1

declare dso_local i64 @vs_split(%struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @screen_end(%struct.TYPE_19__*) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_19__*, i32, i64, i8*, i64) #1

declare dso_local i32* @file_add(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @file_init(%struct.TYPE_19__*, i32*, i32*, i32) #1

declare dso_local i64 @FL_ISSET(i32, i32) #1

declare dso_local i32 @vs_discard(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @ex_buildargv(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @F_SET(%struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
