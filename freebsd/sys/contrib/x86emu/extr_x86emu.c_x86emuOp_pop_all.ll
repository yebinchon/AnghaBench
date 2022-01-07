; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_pop_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_pop_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_pop_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_pop_all(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %3 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %4 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = call i8* @pop_long(%struct.x86emu* %11)
  %13 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %14 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 16
  store i8* %12, i8** %15, align 8
  %16 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %17 = call i8* @pop_long(%struct.x86emu* %16)
  %18 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %19 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 15
  store i8* %17, i8** %20, align 8
  %21 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %22 = call i8* @pop_long(%struct.x86emu* %21)
  %23 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %24 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 14
  store i8* %22, i8** %25, align 8
  %26 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %27 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 4
  store i32 %30, i32* %28, align 4
  %31 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %32 = call i8* @pop_long(%struct.x86emu* %31)
  %33 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %34 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 13
  store i8* %32, i8** %35, align 8
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = call i8* @pop_long(%struct.x86emu* %36)
  %38 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %39 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 12
  store i8* %37, i8** %40, align 8
  %41 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %42 = call i8* @pop_long(%struct.x86emu* %41)
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 11
  store i8* %42, i8** %45, align 8
  %46 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %47 = call i8* @pop_long(%struct.x86emu* %46)
  %48 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %49 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 10
  store i8* %47, i8** %50, align 8
  br label %92

51:                                               ; preds = %1
  %52 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %53 = call i8* @pop_word(%struct.x86emu* %52)
  %54 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %55 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 9
  store i8* %53, i8** %56, align 8
  %57 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %58 = call i8* @pop_word(%struct.x86emu* %57)
  %59 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %60 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store i8* %58, i8** %61, align 8
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = call i8* @pop_word(%struct.x86emu* %62)
  %64 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %65 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 7
  store i8* %63, i8** %66, align 8
  %67 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %68 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %69, align 8
  %72 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %73 = call i8* @pop_word(%struct.x86emu* %72)
  %74 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %75 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  store i8* %73, i8** %76, align 8
  %77 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %78 = call i8* @pop_word(%struct.x86emu* %77)
  %79 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %80 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 5
  store i8* %78, i8** %81, align 8
  %82 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %83 = call i8* @pop_word(%struct.x86emu* %82)
  %84 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %85 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 4
  store i8* %83, i8** %86, align 8
  %87 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %88 = call i8* @pop_word(%struct.x86emu* %87)
  %89 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %90 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 3
  store i8* %88, i8** %91, align 8
  br label %92

92:                                               ; preds = %51, %10
  ret void
}

declare dso_local i8* @pop_long(%struct.x86emu*) #1

declare dso_local i8* @pop_word(%struct.x86emu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
