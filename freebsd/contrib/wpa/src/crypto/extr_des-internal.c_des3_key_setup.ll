; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_des3_key_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_des-internal.c_des3_key_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des3_key_s = type { i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @des3_key_setup(i32* %0, %struct.des3_key_s* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.des3_key_s*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.des3_key_s* %1, %struct.des3_key_s** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %7 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @deskey(i32* %5, i32 0, i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  %14 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %15 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @deskey(i32* %13, i32 1, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 16
  %22 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %23 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @deskey(i32* %21, i32 0, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %30 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @deskey(i32* %28, i32 1, i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 8
  %37 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %38 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @deskey(i32* %36, i32 0, i32 %41)
  %43 = load i32*, i32** %3, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 16
  %45 = load %struct.des3_key_s*, %struct.des3_key_s** %4, align 8
  %46 = getelementptr inbounds %struct.des3_key_s, %struct.des3_key_s* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @deskey(i32* %44, i32 1, i32 %49)
  ret void
}

declare dso_local i32 @deskey(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
