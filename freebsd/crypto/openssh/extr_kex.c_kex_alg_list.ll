; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_alg_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_kex.c_kex_alg_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kexalg = type { i32* }

@kexalgs = common dso_local global %struct.kexalg* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kex_alg_list(i8 signext %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.kexalg*, align 8
  store i8 %0, i8* %3, align 1
  store i8* null, i8** %4, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.kexalg*, %struct.kexalg** @kexalgs, align 8
  store %struct.kexalg* %9, %struct.kexalg** %8, align 8
  br label %10

10:                                               ; preds = %53, %1
  %11 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %12 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %56

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load i8, i8* %3, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = load i64, i64* %7, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %7, align 8
  %23 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8 %19, i8* %23, align 1
  br label %24

24:                                               ; preds = %18, %15
  %25 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %26 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i64 @strlen(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = add i64 %30, %31
  %33 = add i64 %32, 2
  %34 = call i8* @realloc(i8* %29, i64 %33)
  store i8* %34, i8** %5, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load i8*, i8** %4, align 8
  %38 = call i32 @free(i8* %37)
  store i8* null, i8** %2, align 8
  br label %58

39:                                               ; preds = %24
  %40 = load i8*, i8** %5, align 8
  store i8* %40, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %45 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 1
  %49 = call i32 @memcpy(i8* %43, i32* %46, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %7, align 8
  br label %53

53:                                               ; preds = %39
  %54 = load %struct.kexalg*, %struct.kexalg** %8, align 8
  %55 = getelementptr inbounds %struct.kexalg, %struct.kexalg* %54, i32 1
  store %struct.kexalg* %55, %struct.kexalg** %8, align 8
  br label %10

56:                                               ; preds = %10
  %57 = load i8*, i8** %4, align 8
  store i8* %57, i8** %2, align 8
  br label %58

58:                                               ; preds = %56, %36
  %59 = load i8*, i8** %2, align 8
  ret i8* %59
}

declare dso_local i64 @strlen(i32*) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
