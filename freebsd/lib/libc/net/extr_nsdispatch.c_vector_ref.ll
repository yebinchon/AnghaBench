; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nsdispatch.c_vector_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_nsdispatch.c_vector_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, i32, i64)* @vector_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @vector_ref(i32 %0, i8* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ult i32 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %4
  %14 = load i8*, i8** %7, align 8
  %15 = ptrtoint i8* %14 to i64
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %9, align 8
  %19 = mul i64 %17, %18
  %20 = add i64 %15, %19
  %21 = inttoptr i64 %20 to i8*
  store i8* %21, i8** %5, align 8
  br label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i8*, i8** %5, align 8
  ret i8* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
