; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_nexus.c_nexus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_nexus.c_nexus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }

@RF_SHAREABLE = common dso_local global i32 0, align 4
@INTR_EXCL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @nexus_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nexus_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %19 = load %struct.resource*, %struct.resource** %12, align 8
  %20 = call i32 @rman_get_flags(%struct.resource* %19)
  %21 = load i32, i32* @RF_SHAREABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* @INTR_EXCL, align 4
  %26 = load i32, i32* %13, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %13, align 4
  br label %28

28:                                               ; preds = %24, %8
  %29 = load %struct.resource*, %struct.resource** %12, align 8
  %30 = call i32 @rman_activate_resource(%struct.resource* %29)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %9, align 4
  br label %45

35:                                               ; preds = %28
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.resource*, %struct.resource** %12, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i8**, i8*** %17, align 8
  %43 = call i32 @intr_setup_irq(i32 %36, %struct.resource* %37, i32* %38, i32* %39, i8* %40, i32 %41, i8** %42)
  store i32 %43, i32* %18, align 4
  %44 = load i32, i32* %18, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %35, %33
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i32 @rman_get_flags(%struct.resource*) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i32 @intr_setup_irq(i32, %struct.resource*, i32*, i32*, i8*, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
