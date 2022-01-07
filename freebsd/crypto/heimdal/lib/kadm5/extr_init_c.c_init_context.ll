; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_init_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_init_c.c_init_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32, i8*, i32, i8*, i32*, i64, i64, i8**)* @init_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_context(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6, i64 %7, i64 %8, i8** %9) #0 {
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i64 %8, i64* %20, align 8
  store i8** %9, i8*** %21, align 8
  %25 = call i64 @krb5_init_context(i32* %22)
  store i64 %25, i64* %23, align 8
  %26 = load i64, i64* %23, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %10
  %29 = load i64, i64* %23, align 8
  store i64 %29, i64* %11, align 8
  br label %55

30:                                               ; preds = %10
  %31 = load i32, i32* %22, align 4
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load i8*, i8** %15, align 8
  %36 = load i32, i32* %16, align 4
  %37 = load i8*, i8** %17, align 8
  %38 = load i32*, i32** %18, align 8
  %39 = load i64, i64* %19, align 8
  %40 = load i64, i64* %20, align 8
  %41 = load i8**, i8*** %21, align 8
  %42 = call i64 @kadm5_c_init_with_context(i32 %31, i8* %32, i8* %33, i32 %34, i8* %35, i32 %36, i8* %37, i32* %38, i64 %39, i64 %40, i8** %41)
  store i64 %42, i64* %23, align 8
  %43 = load i64, i64* %23, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %30
  %46 = load i32, i32* %22, align 4
  %47 = call i32 @krb5_free_context(i32 %46)
  %48 = load i64, i64* %23, align 8
  store i64 %48, i64* %11, align 8
  br label %55

49:                                               ; preds = %30
  %50 = load i8**, i8*** %21, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = bitcast i8* %51 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %52, %struct.TYPE_2__** %24, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  store i64 0, i64* %11, align 8
  br label %55

55:                                               ; preds = %49, %45, %28
  %56 = load i64, i64* %11, align 8
  ret i64 %56
}

declare dso_local i64 @krb5_init_context(i32*) #1

declare dso_local i64 @kadm5_c_init_with_context(i32, i8*, i8*, i32, i8*, i32, i8*, i32*, i64, i64, i8**) #1

declare dso_local i32 @krb5_free_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
