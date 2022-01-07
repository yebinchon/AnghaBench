; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_html.c_print_eqn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_eqn_html.c_print_eqn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { i32 }
%struct.eqn_box = type { i32* }
%struct.tag = type { i32 }

@TAG_MATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"eqn\00", align 1
@HTML_NONOSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_eqn(%struct.html* %0, %struct.eqn_box* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.eqn_box*, align 8
  %5 = alloca %struct.tag*, align 8
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.eqn_box* %1, %struct.eqn_box** %4, align 8
  %6 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %7 = getelementptr inbounds %struct.eqn_box, %struct.eqn_box* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %32

11:                                               ; preds = %2
  %12 = load %struct.html*, %struct.html** %3, align 8
  %13 = load i32, i32* @TAG_MATH, align 4
  %14 = call %struct.tag* @print_otag(%struct.html* %12, i32 %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store %struct.tag* %14, %struct.tag** %5, align 8
  %15 = load i32, i32* @HTML_NONOSPACE, align 4
  %16 = load %struct.html*, %struct.html** %3, align 8
  %17 = getelementptr inbounds %struct.html, %struct.html* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.html*, %struct.html** %3, align 8
  %21 = load %struct.eqn_box*, %struct.eqn_box** %4, align 8
  %22 = call i32 @eqn_box(%struct.html* %20, %struct.eqn_box* %21)
  %23 = load i32, i32* @HTML_NONOSPACE, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.html*, %struct.html** %3, align 8
  %26 = getelementptr inbounds %struct.html, %struct.html* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.html*, %struct.html** %3, align 8
  %30 = load %struct.tag*, %struct.tag** %5, align 8
  %31 = call i32 @print_tagq(%struct.html* %29, %struct.tag* %30)
  br label %32

32:                                               ; preds = %11, %10
  ret void
}

declare dso_local %struct.tag* @print_otag(%struct.html*, i32, i8*, i8*) #1

declare dso_local i32 @eqn_box(%struct.html*, %struct.eqn_box*) #1

declare dso_local i32 @print_tagq(%struct.html*, %struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
