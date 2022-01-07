; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_load_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_load_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @load_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @load_ptr(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* %5, align 8
  %10 = sub i64 %9, 1
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_true(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %3, align 8
  br label %39

20:                                               ; preds = %2
  store i64 0, i64* %6, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @memcpy(i64* %6, i8* %21, i64 %22)
  %24 = getelementptr inbounds i64, i64* %6, i64 1
  %25 = load i64, i64* %5, align 8
  %26 = sub i64 0, %25
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i8*, i8** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @memcpy(i64* %27, i8* %28, i64 %29)
  %31 = load i64, i64* %5, align 8
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i64, i64* %6, align 8
  br label %37

35:                                               ; preds = %20
  %36 = load i64, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i64 [ %34, %33 ], [ %36, %35 ]
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %37, %16
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @memcpy(i64*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
