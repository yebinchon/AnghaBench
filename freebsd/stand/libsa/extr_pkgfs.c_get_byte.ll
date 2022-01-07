; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_get_byte.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_get_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.package = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@PKG_BUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.package*, i32*)* @get_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_byte(%struct.package* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.package*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.package* %0, %struct.package** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.package*, %struct.package** %4, align 8
  %8 = getelementptr inbounds %struct.package, %struct.package* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.package*, %struct.package** %4, align 8
  %14 = getelementptr inbounds %struct.package, %struct.package* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.package*, %struct.package** %4, align 8
  %17 = getelementptr inbounds %struct.package, %struct.package* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* @PKG_BUFSIZE, align 4
  %20 = call i32 @read(i32 %15, i32* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %55

24:                                               ; preds = %12
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.package*, %struct.package** %4, align 8
  %27 = getelementptr inbounds %struct.package, %struct.package* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.package*, %struct.package** %4, align 8
  %30 = getelementptr inbounds %struct.package, %struct.package* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.package*, %struct.package** %4, align 8
  %33 = getelementptr inbounds %struct.package, %struct.package* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32* %31, i32** %34, align 8
  br label %35

35:                                               ; preds = %24, %2
  %36 = load %struct.package*, %struct.package** %4, align 8
  %37 = getelementptr inbounds %struct.package, %struct.package* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.package*, %struct.package** %4, align 8
  %42 = getelementptr inbounds %struct.package, %struct.package* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %43, align 8
  %46 = load %struct.package*, %struct.package** %4, align 8
  %47 = getelementptr inbounds %struct.package, %struct.package* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %35, %23
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
