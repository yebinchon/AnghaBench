; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_descope.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_man.c_man_descope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.roff_man = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { i32 }

@MAN_ELINE = common dso_local global i32 0, align 4
@ROFFT_ROOT = common dso_local global i64 0, align 8
@MAN_ESCOPED = common dso_local global i32 0, align 4
@MAN_BLINE = common dso_local global i32 0, align 4
@ROFF_NONOFILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @man_descope(%struct.roff_man* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.roff_man*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.roff_man* %0, %struct.roff_man** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %4
  %12 = load i8*, i8** %8, align 8
  %13 = call i32* @man_hasc(i8* %12)
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %98

16:                                               ; preds = %11, %4
  %17 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %18 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MAN_ELINE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %50, %23
  %25 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %26 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ROFFT_ROOT, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %36 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_6__* @man_macro(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MAN_ESCOPED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %34, %24
  %49 = phi i1 [ false, %24 ], [ %47, %34 ]
  br i1 %49, label %50, label %58

50:                                               ; preds = %48
  %51 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %52 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %53 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @man_unscope(%struct.roff_man* %51, %struct.TYPE_5__* %56)
  br label %24

58:                                               ; preds = %48
  %59 = load i32, i32* @MAN_ELINE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %62 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %58, %16
  %66 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %67 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MAN_BLINE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  br label %98

73:                                               ; preds = %65
  %74 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %75 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %76 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = call i32 @man_unscope(%struct.roff_man* %74, %struct.TYPE_5__* %79)
  %81 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %85 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @roff_body_alloc(%struct.roff_man* %81, i32 %82, i32 %83, i32 %88)
  %90 = load i32, i32* @MAN_BLINE, align 4
  %91 = load i32, i32* @ROFF_NONOFILL, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load %struct.roff_man*, %struct.roff_man** %5, align 8
  %95 = getelementptr inbounds %struct.roff_man, %struct.roff_man* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %73, %72, %15
  ret void
}

declare dso_local i32* @man_hasc(i8*) #1

declare dso_local %struct.TYPE_6__* @man_macro(i32) #1

declare dso_local i32 @man_unscope(%struct.roff_man*, %struct.TYPE_5__*) #1

declare dso_local i32 @roff_body_alloc(%struct.roff_man*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
