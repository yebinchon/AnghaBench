; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir-compat11.c_freebsd11_readdir_r.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_readdir-compat11.c_freebsd11_readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freebsd11_dirent = type { i32 }
%struct.dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd11_readdir_r(i32* %0, %struct.freebsd11_dirent* %1, %struct.freebsd11_dirent** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.freebsd11_dirent*, align 8
  %7 = alloca %struct.freebsd11_dirent**, align 8
  %8 = alloca %struct.dirent, align 4
  %9 = alloca %struct.dirent*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.freebsd11_dirent* %1, %struct.freebsd11_dirent** %6, align 8
  store %struct.freebsd11_dirent** %2, %struct.freebsd11_dirent*** %7, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @__readdir_r(i32* %11, %struct.dirent* %8, %struct.dirent** %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %33

17:                                               ; preds = %3
  %18 = load %struct.dirent*, %struct.dirent** %9, align 8
  %19 = icmp ne %struct.dirent* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %6, align 8
  %22 = call i64 @freebsd11_cvtdirent(%struct.freebsd11_dirent* %21, %struct.dirent* %8)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.freebsd11_dirent*, %struct.freebsd11_dirent** %6, align 8
  %26 = load %struct.freebsd11_dirent**, %struct.freebsd11_dirent*** %7, align 8
  store %struct.freebsd11_dirent* %25, %struct.freebsd11_dirent** %26, align 8
  br label %29

27:                                               ; preds = %20
  %28 = load %struct.freebsd11_dirent**, %struct.freebsd11_dirent*** %7, align 8
  store %struct.freebsd11_dirent* null, %struct.freebsd11_dirent** %28, align 8
  br label %29

29:                                               ; preds = %27, %24
  br label %32

30:                                               ; preds = %17
  %31 = load %struct.freebsd11_dirent**, %struct.freebsd11_dirent*** %7, align 8
  store %struct.freebsd11_dirent* null, %struct.freebsd11_dirent** %31, align 8
  br label %32

32:                                               ; preds = %30, %29
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @__readdir_r(i32*, %struct.dirent*, %struct.dirent**) #1

declare dso_local i64 @freebsd11_cvtdirent(%struct.freebsd11_dirent*, %struct.dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
