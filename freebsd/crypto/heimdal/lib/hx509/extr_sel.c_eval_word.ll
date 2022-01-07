; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_eval_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_sel.c_eval_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx_expr = type { i32, i8*, %struct.hx_expr* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32*, %struct.hx_expr*)* @eval_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @eval_word(i32 %0, i32* %1, %struct.hx_expr* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hx_expr*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store %struct.hx_expr* %2, %struct.hx_expr** %7, align 8
  %8 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %9 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %44 [
    i32 129, label %11
    i32 128, label %15
  ]

11:                                               ; preds = %3
  %12 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %13 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %4, align 8
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %17 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %16, i32 0, i32 2
  %18 = load %struct.hx_expr*, %struct.hx_expr** %17, align 8
  %19 = icmp eq %struct.hx_expr* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %24 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @hx509_env_find(i32 %21, i32* %22, i8* %25)
  store i8* %26, i8** %4, align 8
  br label %45

27:                                               ; preds = %15
  %28 = load i32, i32* %5, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %31 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32* @hx509_env_find_binding(i32 %28, i32* %29, i8* %32)
  store i32* %33, i32** %6, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i8* null, i8** %4, align 8
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %5, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load %struct.hx_expr*, %struct.hx_expr** %7, align 8
  %41 = getelementptr inbounds %struct.hx_expr, %struct.hx_expr* %40, i32 0, i32 2
  %42 = load %struct.hx_expr*, %struct.hx_expr** %41, align 8
  %43 = call i8* @eval_word(i32 %38, i32* %39, %struct.hx_expr* %42)
  store i8* %43, i8** %4, align 8
  br label %45

44:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %45

45:                                               ; preds = %44, %37, %36, %20, %11
  %46 = load i8*, i8** %4, align 8
  ret i8* %46
}

declare dso_local i8* @hx509_env_find(i32, i32*, i8*) #1

declare dso_local i32* @hx509_env_find_binding(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
