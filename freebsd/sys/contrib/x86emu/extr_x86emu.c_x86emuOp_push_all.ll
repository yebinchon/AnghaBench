; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_push_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_push_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_push_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_push_all(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %5 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %6 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %62

12:                                               ; preds = %1
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 16
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %3, align 4
  %17 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %18 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %19 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @push_long(%struct.x86emu* %17, i32 %21)
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %25 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @push_long(%struct.x86emu* %23, i32 %27)
  %29 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %30 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %31 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 13
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @push_long(%struct.x86emu* %29, i32 %33)
  %35 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 12
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @push_long(%struct.x86emu* %35, i32 %39)
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @push_long(%struct.x86emu* %41, i32 %42)
  %44 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %45 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %46 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @push_long(%struct.x86emu* %44, i32 %48)
  %50 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %51 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %52 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @push_long(%struct.x86emu* %50, i32 %54)
  %56 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @push_long(%struct.x86emu* %56, i32 %60)
  br label %112

62:                                               ; preds = %1
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %4, align 4
  %67 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @push_word(%struct.x86emu* %67, i32 %71)
  %73 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %74 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %75 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @push_word(%struct.x86emu* %73, i32 %77)
  %79 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %80 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %81 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @push_word(%struct.x86emu* %79, i32 %83)
  %85 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %86 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %87 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @push_word(%struct.x86emu* %85, i32 %89)
  %91 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @push_word(%struct.x86emu* %91, i32 %92)
  %94 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %95 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %96 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @push_word(%struct.x86emu* %94, i32 %98)
  %100 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %101 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %102 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @push_word(%struct.x86emu* %100, i32 %104)
  %106 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %107 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %108 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @push_word(%struct.x86emu* %106, i32 %110)
  br label %112

112:                                              ; preds = %62, %12
  ret void
}

declare dso_local i32 @push_long(%struct.x86emu*, i32) #1

declare dso_local i32 @push_word(%struct.x86emu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
