; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_fixup_elf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/linux32/extr_linux32_sysvec.c_linux_fixup_elf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, %struct.image_params*)* @linux_fixup_elf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_fixup_elf(i32** %0, %struct.image_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32*, align 8
  store i32** %0, i32*** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 -1
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load %struct.image_params*, %struct.image_params** %5, align 8
  %13 = getelementptr inbounds %struct.image_params, %struct.image_params* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @suword32(i32* %11, i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EFAULT, align 4
  store i32 %21, i32* %3, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32*, i32** %6, align 8
  %24 = load i32**, i32*** %4, align 8
  store i32* %23, i32** %24, align 8
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %20
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @suword32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
