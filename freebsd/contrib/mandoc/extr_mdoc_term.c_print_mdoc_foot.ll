; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_mdoc_foot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_mdoc_term.c_print_mdoc_foot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.roff_meta = type { i32, i32 }

@TERMFONT_NONE = common dso_local global i32 0, align 4
@TERMP_NOSPACE = common dso_local global i32 0, align 4
@TERMP_NOBREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*, %struct.roff_meta*)* @print_mdoc_foot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_mdoc_foot(%struct.termp* %0, %struct.roff_meta* %1) #0 {
  %3 = alloca %struct.termp*, align 8
  %4 = alloca %struct.roff_meta*, align 8
  %5 = alloca i64, align 8
  store %struct.termp* %0, %struct.termp** %3, align 8
  store %struct.roff_meta* %1, %struct.roff_meta** %4, align 8
  %6 = load %struct.termp*, %struct.termp** %3, align 8
  %7 = load i32, i32* @TERMFONT_NONE, align 4
  %8 = call i32 @term_fontrepl(%struct.termp* %6, i32 %7)
  %9 = load %struct.termp*, %struct.termp** %3, align 8
  %10 = call i32 @term_vspace(%struct.termp* %9)
  %11 = load %struct.termp*, %struct.termp** %3, align 8
  %12 = getelementptr inbounds %struct.termp, %struct.termp* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.termp*, %struct.termp** %3, align 8
  %16 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %17 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @term_strlen(%struct.termp* %15, i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.termp*, %struct.termp** %3, align 8
  %21 = getelementptr inbounds %struct.termp, %struct.termp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.termp*, %struct.termp** %3, align 8
  %27 = getelementptr inbounds %struct.termp, %struct.termp* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.termp*, %struct.termp** %3, align 8
  %30 = call i64 @term_len(%struct.termp* %29, i32 1)
  %31 = add i64 %28, %30
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %31, %32
  %34 = udiv i64 %33, 2
  br label %36

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35, %25
  %37 = phi i64 [ %34, %25 ], [ 0, %35 ]
  %38 = load %struct.termp*, %struct.termp** %3, align 8
  %39 = getelementptr inbounds %struct.termp, %struct.termp* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  %42 = load %struct.termp*, %struct.termp** %3, align 8
  %43 = getelementptr inbounds %struct.termp, %struct.termp* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @TERMP_NOSPACE, align 4
  %45 = load i32, i32* @TERMP_NOBREAK, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.termp*, %struct.termp** %3, align 8
  %48 = getelementptr inbounds %struct.termp, %struct.termp* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.termp*, %struct.termp** %3, align 8
  %52 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %53 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @term_word(%struct.termp* %51, i32 %54)
  %56 = load %struct.termp*, %struct.termp** %3, align 8
  %57 = call i32 @term_flushln(%struct.termp* %56)
  %58 = load %struct.termp*, %struct.termp** %3, align 8
  %59 = getelementptr inbounds %struct.termp, %struct.termp* %58, i32 0, i32 3
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.termp*, %struct.termp** %3, align 8
  %64 = getelementptr inbounds %struct.termp, %struct.termp* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i64 %62, i64* %66, align 8
  %67 = load %struct.termp*, %struct.termp** %3, align 8
  %68 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %69 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @term_strlen(%struct.termp* %67, i32 %70)
  store i64 %71, i64* %5, align 8
  %72 = load %struct.termp*, %struct.termp** %3, align 8
  %73 = getelementptr inbounds %struct.termp, %struct.termp* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ugt i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %36
  %78 = load %struct.termp*, %struct.termp** %3, align 8
  %79 = getelementptr inbounds %struct.termp, %struct.termp* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* %5, align 8
  %82 = sub i64 %80, %81
  br label %84

83:                                               ; preds = %36
  br label %84

84:                                               ; preds = %83, %77
  %85 = phi i64 [ %82, %77 ], [ 0, %83 ]
  %86 = load %struct.termp*, %struct.termp** %3, align 8
  %87 = getelementptr inbounds %struct.termp, %struct.termp* %86, i32 0, i32 3
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i64 %85, i64* %89, align 8
  %90 = load i32, i32* @TERMP_NOSPACE, align 4
  %91 = load %struct.termp*, %struct.termp** %3, align 8
  %92 = getelementptr inbounds %struct.termp, %struct.termp* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  %95 = load %struct.termp*, %struct.termp** %3, align 8
  %96 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %97 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @term_word(%struct.termp* %95, i32 %98)
  %100 = load %struct.termp*, %struct.termp** %3, align 8
  %101 = call i32 @term_flushln(%struct.termp* %100)
  %102 = load %struct.termp*, %struct.termp** %3, align 8
  %103 = getelementptr inbounds %struct.termp, %struct.termp* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.termp*, %struct.termp** %3, align 8
  %108 = getelementptr inbounds %struct.termp, %struct.termp* %107, i32 0, i32 3
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i64 %106, i64* %110, align 8
  %111 = load %struct.termp*, %struct.termp** %3, align 8
  %112 = getelementptr inbounds %struct.termp, %struct.termp* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.termp*, %struct.termp** %3, align 8
  %115 = getelementptr inbounds %struct.termp, %struct.termp* %114, i32 0, i32 3
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i64 %113, i64* %117, align 8
  %118 = load %struct.termp*, %struct.termp** %3, align 8
  %119 = getelementptr inbounds %struct.termp, %struct.termp* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* @TERMP_NOBREAK, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.termp*, %struct.termp** %3, align 8
  %123 = getelementptr inbounds %struct.termp, %struct.termp* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  %126 = load i32, i32* @TERMP_NOSPACE, align 4
  %127 = load %struct.termp*, %struct.termp** %3, align 8
  %128 = getelementptr inbounds %struct.termp, %struct.termp* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.termp*, %struct.termp** %3, align 8
  %132 = load %struct.roff_meta*, %struct.roff_meta** %4, align 8
  %133 = getelementptr inbounds %struct.roff_meta, %struct.roff_meta* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @term_word(%struct.termp* %131, i32 %134)
  %136 = load %struct.termp*, %struct.termp** %3, align 8
  %137 = call i32 @term_flushln(%struct.termp* %136)
  %138 = load %struct.termp*, %struct.termp** %3, align 8
  %139 = getelementptr inbounds %struct.termp, %struct.termp* %138, i32 0, i32 3
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  store i64 0, i64* %141, align 8
  %142 = load %struct.termp*, %struct.termp** %3, align 8
  %143 = getelementptr inbounds %struct.termp, %struct.termp* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.termp*, %struct.termp** %3, align 8
  %146 = getelementptr inbounds %struct.termp, %struct.termp* %145, i32 0, i32 3
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  store i64 %144, i64* %148, align 8
  %149 = load %struct.termp*, %struct.termp** %3, align 8
  %150 = getelementptr inbounds %struct.termp, %struct.termp* %149, i32 0, i32 2
  store i32 0, i32* %150, align 4
  ret void
}

declare dso_local i32 @term_fontrepl(%struct.termp*, i32) #1

declare dso_local i32 @term_vspace(%struct.termp*) #1

declare dso_local i64 @term_strlen(%struct.termp*, i32) #1

declare dso_local i64 @term_len(%struct.termp*, i32) #1

declare dso_local i32 @term_word(%struct.termp*, i32) #1

declare dso_local i32 @term_flushln(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
