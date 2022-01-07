; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c__hx509_expr_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c__hx509_expr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx_expr = type { i32, %struct.hx_expr*, %struct.hx_expr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_hx509_expr_free(%struct.hx_expr* %0) #0 {
  %2 = alloca %struct.hx_expr*, align 8
  store %struct.hx_expr* %0, %struct.hx_expr** %2, align 8
  %3 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %4 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %25 [
    i32 130, label %6
    i32 131, label %6
    i32 128, label %11
    i32 132, label %11
    i32 129, label %11
  ]

6:                                                ; preds = %1, %1
  %7 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %8 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %7, i32 0, i32 2
  %9 = load %struct.hx_expr*, %struct.hx_expr** %8, align 8
  %10 = call i32 @free(%struct.hx_expr* %9)
  br label %44

11:                                               ; preds = %1, %1, %1
  %12 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %13 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %12, i32 0, i32 2
  %14 = load %struct.hx_expr*, %struct.hx_expr** %13, align 8
  %15 = call i32 @free(%struct.hx_expr* %14)
  %16 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %17 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %16, i32 0, i32 1
  %18 = load %struct.hx_expr*, %struct.hx_expr** %17, align 8
  %19 = icmp ne %struct.hx_expr* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %22 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %21, i32 0, i32 1
  %23 = load %struct.hx_expr*, %struct.hx_expr** %22, align 8
  call void @_hx509_expr_free(%struct.hx_expr* %23)
  br label %24

24:                                               ; preds = %20, %11
  br label %44

25:                                               ; preds = %1
  %26 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %27 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %26, i32 0, i32 2
  %28 = load %struct.hx_expr*, %struct.hx_expr** %27, align 8
  %29 = icmp ne %struct.hx_expr* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %32 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %31, i32 0, i32 2
  %33 = load %struct.hx_expr*, %struct.hx_expr** %32, align 8
  call void @_hx509_expr_free(%struct.hx_expr* %33)
  br label %34

34:                                               ; preds = %30, %25
  %35 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %36 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %35, i32 0, i32 1
  %37 = load %struct.hx_expr*, %struct.hx_expr** %36, align 8
  %38 = icmp ne %struct.hx_expr* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %41 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %40, i32 0, i32 1
  %42 = load %struct.hx_expr*, %struct.hx_expr** %41, align 8
  call void @_hx509_expr_free(%struct.hx_expr* %42)
  br label %43

43:                                               ; preds = %39, %34
  br label %44

44:                                               ; preds = %43, %24, %6
  %45 = load %struct.hx_expr*, %struct.hx_expr** %2, align 8
  %46 = call i32 @free(%struct.hx_expr* %45)
  ret void
}

declare dso_local i32 @free(%struct.hx_expr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
