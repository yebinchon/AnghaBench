; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_store_ptr.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/mips/extr_reloc.c_store_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i64)* @store_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_ptr(i8* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = ptrtoint i8* %7 to i64
  %9 = load i64, i64* %6, align 8
  %10 = sub i64 %9, 1
  %11 = and i64 %8, %10
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @__predict_true(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4
  br label %31

20:                                               ; preds = %3
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @memcpy(i8* %21, i32* %5, i64 %22)
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i32, i32* %5, i64 1
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 0, %26
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @memcpy(i8* %24, i32* %28, i64 %29)
  br label %31

31:                                               ; preds = %20, %16
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
