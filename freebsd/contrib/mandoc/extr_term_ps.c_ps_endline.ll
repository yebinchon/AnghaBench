; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_endline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_term_ps.c_ps_endline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termp = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i32, i32 }

@PS_MARGINS = common dso_local global i32 0, align 4
@PS_NEWPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.termp*)* @ps_endline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_endline(%struct.termp* %0) #0 {
  %2 = alloca %struct.termp*, align 8
  store %struct.termp* %0, %struct.termp** %2, align 8
  %3 = load %struct.termp*, %struct.termp** %2, align 8
  %4 = call i32 @ps_plast(%struct.termp* %3)
  %5 = load %struct.termp*, %struct.termp** %2, align 8
  %6 = call i32 @ps_pclose(%struct.termp* %5)
  %7 = load i32, i32* @PS_MARGINS, align 4
  %8 = load %struct.termp*, %struct.termp** %2, align 8
  %9 = getelementptr inbounds %struct.termp, %struct.termp* %8, i32 0, i32 2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %7, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %81

16:                                               ; preds = %1
  %17 = load %struct.termp*, %struct.termp** %2, align 8
  %18 = getelementptr inbounds %struct.termp, %struct.termp* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.termp*, %struct.termp** %2, align 8
  %23 = getelementptr inbounds %struct.termp, %struct.termp* %22, i32 0, i32 2
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 5
  store i32 %21, i32* %25, align 4
  %26 = load i32, i32* @PS_NEWPAGE, align 4
  %27 = load %struct.termp*, %struct.termp** %2, align 8
  %28 = getelementptr inbounds %struct.termp, %struct.termp* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %26, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %81

35:                                               ; preds = %16
  %36 = load %struct.termp*, %struct.termp** %2, align 8
  %37 = getelementptr inbounds %struct.termp, %struct.termp* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.termp*, %struct.termp** %2, align 8
  %42 = getelementptr inbounds %struct.termp, %struct.termp* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.termp*, %struct.termp** %2, align 8
  %47 = getelementptr inbounds %struct.termp, %struct.termp* %46, i32 0, i32 2
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %45, %50
  %52 = icmp sge i64 %40, %51
  br i1 %52, label %53, label %65

53:                                               ; preds = %35
  %54 = load %struct.termp*, %struct.termp** %2, align 8
  %55 = getelementptr inbounds %struct.termp, %struct.termp* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.termp*, %struct.termp** %2, align 8
  %60 = getelementptr inbounds %struct.termp, %struct.termp* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, %58
  store i64 %64, i64* %62, align 8
  br label %81

65:                                               ; preds = %35
  %66 = load %struct.termp*, %struct.termp** %2, align 8
  %67 = call i32 @ps_closepage(%struct.termp* %66)
  %68 = load %struct.termp*, %struct.termp** %2, align 8
  %69 = getelementptr inbounds %struct.termp, %struct.termp* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.termp*, %struct.termp** %2, align 8
  %72 = getelementptr inbounds %struct.termp, %struct.termp* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = sub nsw i64 %76, %70
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.termp*, %struct.termp** %2, align 8
  %80 = getelementptr inbounds %struct.termp, %struct.termp* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %65, %53, %34, %15
  ret void
}

declare dso_local i32 @ps_plast(%struct.termp*) #1

declare dso_local i32 @ps_pclose(%struct.termp*) #1

declare dso_local i32 @ps_closepage(%struct.termp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
