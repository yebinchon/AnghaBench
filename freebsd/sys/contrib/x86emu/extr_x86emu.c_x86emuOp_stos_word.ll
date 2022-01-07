; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_stos_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_stos_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@SYSMODE_PREFIX_DATA = common dso_local global i32 0, align 4
@F_DF = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPE = common dso_local global i32 0, align 4
@SYSMODE_PREFIX_REPNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_stos_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_stos_word(%struct.x86emu* %0) #0 {
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
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 4, i32* %3, align 4
  br label %14

13:                                               ; preds = %1
  store i32 2, i32* %3, align 4
  br label %14

14:                                               ; preds = %13, %12
  %15 = load i32, i32* @F_DF, align 4
  %16 = call i64 @ACCESS_FLAG(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  store i32 1, i32* %4, align 4
  %22 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %23 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %27 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %48

31:                                               ; preds = %21
  %32 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %33 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @SYSMODE_PREFIX_REPE, align 4
  %40 = load i32, i32* @SYSMODE_PREFIX_REPNE, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %44 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %42
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %31, %21
  br label %49

49:                                               ; preds = %91, %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %98

53:                                               ; preds = %49
  %54 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %55 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @SYSMODE_PREFIX_DATA, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %53
  %62 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %63 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %64 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %68 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %72 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @store_long(%struct.x86emu* %62, i32 %66, i32 %70, i32 %74)
  br label %91

76:                                               ; preds = %53
  %77 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %78 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %79 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %83 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %87 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @store_word(%struct.x86emu* %77, i32 %81, i32 %85, i32 %89)
  br label %91

91:                                               ; preds = %76, %61
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %94 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %92
  store i32 %97, i32* %95, align 4
  br label %49

98:                                               ; preds = %49
  ret void
}

declare dso_local i64 @ACCESS_FLAG(i32) #1

declare dso_local i32 @store_long(%struct.x86emu*, i32, i32, i32) #1

declare dso_local i32 @store_word(%struct.x86emu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
