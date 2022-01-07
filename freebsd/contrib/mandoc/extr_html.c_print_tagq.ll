; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_tagq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_tagq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { %struct.tag* }
%struct.tag = type { %struct.tag* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_tagq(%struct.html* %0, %struct.tag* %1) #0 {
  %3 = alloca %struct.html*, align 8
  %4 = alloca %struct.tag*, align 8
  %5 = alloca %struct.tag*, align 8
  %6 = alloca %struct.tag*, align 8
  store %struct.html* %0, %struct.html** %3, align 8
  store %struct.tag* %1, %struct.tag** %4, align 8
  %7 = load %struct.html*, %struct.html** %3, align 8
  %8 = getelementptr inbounds %struct.html, %struct.html* %7, i32 0, i32 0
  %9 = load %struct.tag*, %struct.tag** %8, align 8
  store %struct.tag* %9, %struct.tag** %5, align 8
  br label %10

10:                                               ; preds = %27, %2
  %11 = load %struct.tag*, %struct.tag** %5, align 8
  %12 = icmp ne %struct.tag* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.tag*, %struct.tag** %5, align 8
  %15 = load %struct.tag*, %struct.tag** %4, align 8
  %16 = icmp eq %struct.tag* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  br label %22

18:                                               ; preds = %13
  %19 = load %struct.tag*, %struct.tag** %5, align 8
  %20 = getelementptr inbounds %struct.tag, %struct.tag* %19, i32 0, i32 0
  %21 = load %struct.tag*, %struct.tag** %20, align 8
  br label %22

22:                                               ; preds = %18, %17
  %23 = phi %struct.tag* [ null, %17 ], [ %21, %18 ]
  store %struct.tag* %23, %struct.tag** %6, align 8
  %24 = load %struct.html*, %struct.html** %3, align 8
  %25 = load %struct.tag*, %struct.tag** %5, align 8
  %26 = call i32 @print_ctag(%struct.html* %24, %struct.tag* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.tag*, %struct.tag** %6, align 8
  store %struct.tag* %28, %struct.tag** %5, align 8
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @print_ctag(%struct.html*, %struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
