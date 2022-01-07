; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memmem.c_memmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/string/extr_memmem.c_memmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @memmem(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %8, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %10, align 8
  store i8* %17, i8** %5, align 8
  br label %80

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %9, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i8* null, i8** %5, align 8
  br label %80

23:                                               ; preds = %18
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = load i8, i8* %25, align 1
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @memchr(i8* %24, i8 zeroext %26, i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 1
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %23
  %35 = load i8*, i8** %10, align 8
  store i8* %35, i8** %5, align 8
  br label %80

36:                                               ; preds = %31
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = load i64, i64* %7, align 8
  %43 = sub i64 %42, %41
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %36
  store i8* null, i8** %5, align 8
  br label %80

48:                                               ; preds = %36
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 2
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i8*, i8** %11, align 8
  %55 = call i8* @twobyte_memmem(i8* %52, i64 %53, i8* %54)
  store i8* %55, i8** %5, align 8
  br label %80

56:                                               ; preds = %48
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %57, 3
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i8*, i8** %10, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i8* @threebyte_memmem(i8* %60, i64 %61, i8* %62)
  store i8* %63, i8** %5, align 8
  br label %80

64:                                               ; preds = %56
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i8*, i8** %11, align 8
  %71 = call i8* @fourbyte_memmem(i8* %68, i64 %69, i8* %70)
  store i8* %71, i8** %5, align 8
  br label %80

72:                                               ; preds = %64
  %73 = load i8*, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i64, i64* %7, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8*, i8** %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i8* @twoway_memmem(i8* %73, i8* %76, i8* %77, i64 %78)
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %72, %67, %59, %51, %47, %34, %22, %16
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

declare dso_local i8* @memchr(i8*, i8 zeroext, i64) #1

declare dso_local i8* @twobyte_memmem(i8*, i64, i8*) #1

declare dso_local i8* @threebyte_memmem(i8*, i64, i8*) #1

declare dso_local i8* @fourbyte_memmem(i8*, i64, i8*) #1

declare dso_local i8* @twoway_memmem(i8*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
