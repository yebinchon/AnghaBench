; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_event_names_of_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libpmc/extr_libpmc.c_pmc_event_names_of_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc_event_descr = type { i8* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@iaf_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@iaf = common dso_local global i32 0, align 4
@tsc_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@tsc = common dso_local global i32 0, align 4
@k8_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@k8 = common dso_local global i32 0, align 4
@xscale_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@xscale = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cortex_a8_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@cortex_a8 = common dso_local global i32 0, align 4
@cortex_a9_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@cortex_a9 = common dso_local global i32 0, align 4
@cortex_a53_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@cortex_a53 = common dso_local global i32 0, align 4
@cortex_a57_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@cortex_a57 = common dso_local global i32 0, align 4
@beri_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@beri = common dso_local global i32 0, align 4
@mips24k_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@mips24k = common dso_local global i32 0, align 4
@mips74k_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@mips74k = common dso_local global i32 0, align 4
@octeon_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@octeon = common dso_local global i32 0, align 4
@ppc7450_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@ppc7450 = common dso_local global i32 0, align 4
@ppc970_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@ppc970 = common dso_local global i32 0, align 4
@e500_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@e500 = common dso_local global i32 0, align 4
@soft_event_table = common dso_local global %struct.pmc_event_descr* null, align 8
@soft_event_info = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmc_event_names_of_class(i32 %0, i8*** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8***, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.pmc_event_descr*, align 8
  store i32 %0, i32* %5, align 4
  store i8*** %1, i8**** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %83 [
    i32 141, label %12
    i32 133, label %16
    i32 140, label %20
    i32 132, label %24
    i32 145, label %28
    i32 144, label %40
    i32 143, label %52
    i32 139, label %56
    i32 138, label %60
    i32 137, label %64
    i32 136, label %68
    i32 135, label %72
    i32 142, label %76
    i32 134, label %80
  ]

12:                                               ; preds = %3
  %13 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @iaf_event_table, align 8
  store %struct.pmc_event_descr* %13, %struct.pmc_event_descr** %10, align 8
  %14 = load i32, i32* @iaf, align 4
  %15 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %14)
  store i32 %15, i32* %8, align 4
  br label %85

16:                                               ; preds = %3
  %17 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @tsc_event_table, align 8
  store %struct.pmc_event_descr* %17, %struct.pmc_event_descr** %10, align 8
  %18 = load i32, i32* @tsc, align 4
  %19 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %18)
  store i32 %19, i32* %8, align 4
  br label %85

20:                                               ; preds = %3
  %21 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @k8_event_table, align 8
  store %struct.pmc_event_descr* %21, %struct.pmc_event_descr** %10, align 8
  %22 = load i32, i32* @k8, align 4
  %23 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %22)
  store i32 %23, i32* %8, align 4
  br label %85

24:                                               ; preds = %3
  %25 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @xscale_event_table, align 8
  store %struct.pmc_event_descr* %25, %struct.pmc_event_descr** %10, align 8
  %26 = load i32, i32* @xscale, align 4
  %27 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %26)
  store i32 %27, i32* %8, align 4
  br label %85

28:                                               ; preds = %3
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_info, i32 0, i32 0), align 4
  switch i32 %29, label %30 [
    i32 131, label %31
    i32 130, label %35
  ]

30:                                               ; preds = %28
  br label %31

31:                                               ; preds = %28, %30
  %32 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @cortex_a8_event_table, align 8
  store %struct.pmc_event_descr* %32, %struct.pmc_event_descr** %10, align 8
  %33 = load i32, i32* @cortex_a8, align 4
  %34 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %33)
  store i32 %34, i32* %8, align 4
  br label %39

35:                                               ; preds = %28
  %36 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @cortex_a9_event_table, align 8
  store %struct.pmc_event_descr* %36, %struct.pmc_event_descr** %10, align 8
  %37 = load i32, i32* @cortex_a9, align 4
  %38 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %85

40:                                               ; preds = %3
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cpu_info, i32 0, i32 0), align 4
  switch i32 %41, label %42 [
    i32 129, label %43
    i32 128, label %47
  ]

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %40, %42
  %44 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @cortex_a53_event_table, align 8
  store %struct.pmc_event_descr* %44, %struct.pmc_event_descr** %10, align 8
  %45 = load i32, i32* @cortex_a53, align 4
  %46 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %45)
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @cortex_a57_event_table, align 8
  store %struct.pmc_event_descr* %48, %struct.pmc_event_descr** %10, align 8
  %49 = load i32, i32* @cortex_a57, align 4
  %50 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %85

52:                                               ; preds = %3
  %53 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @beri_event_table, align 8
  store %struct.pmc_event_descr* %53, %struct.pmc_event_descr** %10, align 8
  %54 = load i32, i32* @beri, align 4
  %55 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %54)
  store i32 %55, i32* %8, align 4
  br label %85

56:                                               ; preds = %3
  %57 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @mips24k_event_table, align 8
  store %struct.pmc_event_descr* %57, %struct.pmc_event_descr** %10, align 8
  %58 = load i32, i32* @mips24k, align 4
  %59 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %58)
  store i32 %59, i32* %8, align 4
  br label %85

60:                                               ; preds = %3
  %61 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @mips74k_event_table, align 8
  store %struct.pmc_event_descr* %61, %struct.pmc_event_descr** %10, align 8
  %62 = load i32, i32* @mips74k, align 4
  %63 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %62)
  store i32 %63, i32* %8, align 4
  br label %85

64:                                               ; preds = %3
  %65 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @octeon_event_table, align 8
  store %struct.pmc_event_descr* %65, %struct.pmc_event_descr** %10, align 8
  %66 = load i32, i32* @octeon, align 4
  %67 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %66)
  store i32 %67, i32* %8, align 4
  br label %85

68:                                               ; preds = %3
  %69 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @ppc7450_event_table, align 8
  store %struct.pmc_event_descr* %69, %struct.pmc_event_descr** %10, align 8
  %70 = load i32, i32* @ppc7450, align 4
  %71 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %70)
  store i32 %71, i32* %8, align 4
  br label %85

72:                                               ; preds = %3
  %73 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @ppc970_event_table, align 8
  store %struct.pmc_event_descr* %73, %struct.pmc_event_descr** %10, align 8
  %74 = load i32, i32* @ppc970, align 4
  %75 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %85

76:                                               ; preds = %3
  %77 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @e500_event_table, align 8
  store %struct.pmc_event_descr* %77, %struct.pmc_event_descr** %10, align 8
  %78 = load i32, i32* @e500, align 4
  %79 = call i32 @PMC_EVENT_TABLE_SIZE(i32 %78)
  store i32 %79, i32* %8, align 4
  br label %85

80:                                               ; preds = %3
  %81 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** @soft_event_table, align 8
  store %struct.pmc_event_descr* %81, %struct.pmc_event_descr** %10, align 8
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @soft_event_info, i32 0, i32 0), align 4
  store i32 %82, i32* %8, align 4
  br label %85

83:                                               ; preds = %3
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %113

85:                                               ; preds = %80, %76, %72, %68, %64, %60, %56, %52, %51, %39, %24, %20, %16, %12
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = mul i64 %87, 8
  %89 = trunc i64 %88 to i32
  %90 = call i8** @malloc(i32 %89)
  store i8** %90, i8*** %9, align 8
  %91 = icmp eq i8** %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 -1, i32* %4, align 4
  br label %113

93:                                               ; preds = %85
  %94 = load i8**, i8*** %9, align 8
  %95 = load i8***, i8**** %6, align 8
  store i8** %94, i8*** %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %98

98:                                               ; preds = %107, %93
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %8, align 4
  %101 = icmp ne i32 %99, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %10, align 8
  %104 = getelementptr inbounds %struct.pmc_event_descr, %struct.pmc_event_descr* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i8**, i8*** %9, align 8
  store i8* %105, i8** %106, align 8
  br label %107

107:                                              ; preds = %102
  %108 = load %struct.pmc_event_descr*, %struct.pmc_event_descr** %10, align 8
  %109 = getelementptr inbounds %struct.pmc_event_descr, %struct.pmc_event_descr* %108, i32 1
  store %struct.pmc_event_descr* %109, %struct.pmc_event_descr** %10, align 8
  %110 = load i8**, i8*** %9, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i32 1
  store i8** %111, i8*** %9, align 8
  br label %98

112:                                              ; preds = %98
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %92, %83
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @PMC_EVENT_TABLE_SIZE(i32) #1

declare dso_local i8** @malloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
