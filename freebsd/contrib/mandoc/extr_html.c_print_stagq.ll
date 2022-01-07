; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_stagq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_html.c_print_stagq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.html = type { %struct.tag* }
%struct.tag = type { i64, %struct.tag* }

@TAG_P = common dso_local global i64 0, align 8
@TAG_PRE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_stagq(%struct.html* %0, %struct.tag* %1) #0 {
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

10:                                               ; preds = %41, %2
  %11 = load %struct.tag*, %struct.tag** %5, align 8
  %12 = icmp ne %struct.tag* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %10
  %14 = load %struct.tag*, %struct.tag** %5, align 8
  %15 = getelementptr inbounds %struct.tag, %struct.tag* %14, i32 0, i32 1
  %16 = load %struct.tag*, %struct.tag** %15, align 8
  store %struct.tag* %16, %struct.tag** %6, align 8
  %17 = load %struct.tag*, %struct.tag** %5, align 8
  %18 = load %struct.tag*, %struct.tag** %4, align 8
  %19 = icmp eq %struct.tag* %17, %18
  br i1 %19, label %36, label %20

20:                                               ; preds = %13
  %21 = load %struct.tag*, %struct.tag** %6, align 8
  %22 = load %struct.tag*, %struct.tag** %4, align 8
  %23 = icmp eq %struct.tag* %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %20
  %25 = load %struct.tag*, %struct.tag** %5, align 8
  %26 = getelementptr inbounds %struct.tag, %struct.tag* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TAG_P, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.tag*, %struct.tag** %5, align 8
  %32 = getelementptr inbounds %struct.tag, %struct.tag* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @TAG_PRE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30, %24, %13
  br label %43

37:                                               ; preds = %30, %20
  %38 = load %struct.html*, %struct.html** %3, align 8
  %39 = load %struct.tag*, %struct.tag** %5, align 8
  %40 = call i32 @print_ctag(%struct.html* %38, %struct.tag* %39)
  br label %41

41:                                               ; preds = %37
  %42 = load %struct.tag*, %struct.tag** %6, align 8
  store %struct.tag* %42, %struct.tag** %5, align 8
  br label %10

43:                                               ; preds = %36, %10
  ret void
}

declare dso_local i32 @print_ctag(%struct.html*, %struct.tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
