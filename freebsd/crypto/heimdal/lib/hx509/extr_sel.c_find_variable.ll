; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_find_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_find_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx_expr = type { i64, %struct.hx_expr*, i32 }

@expr_VAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*, %struct.hx_expr*)* @find_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @find_variable(i32 %0, i32* %1, %struct.hx_expr* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hx_expr*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.hx_expr* %2, %struct.hx_expr** %7, align 8
  %8 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %9 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @expr_VAR, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %16 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %15, i32 0, i32 1
  %17 = load %struct.hx_expr*, %struct.hx_expr** %16, align 8
  %18 = icmp eq %struct.hx_expr* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %23 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32* @hx509_env_find_binding(i32 %20, i32* %21, i32 %24)
  store i32* %25, i32** %4, align 8
  br label %43

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %30 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32* @hx509_env_find_binding(i32 %27, i32* %28, i32 %31)
  store i32* %32, i32** %6, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32* null, i32** %4, align 8
  br label %43

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %40 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %39, i32 0, i32 1
  %41 = load %struct.hx_expr*, %struct.hx_expr** %40, align 8
  %42 = call i32* @find_variable(i32 %37, i32* %38, %struct.hx_expr* %41)
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %36, %35, %19
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @hx509_env_find_binding(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
