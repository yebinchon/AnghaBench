; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_imul_word.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_imul_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@F_CF = common dso_local global i32 0, align 4
@F_OF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*, i8*)* @imul_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imul_word(%struct.x86emu* %0, i8* %1) #0 {
  %3 = alloca %struct.x86emu*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %7 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = ptrtoint i8* %10 to i32
  %12 = mul nsw i32 %9, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to i8*
  %16 = ptrtoint i8* %15 to i32
  %17 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %18 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %5, align 4
  %21 = ashr i32 %20, 16
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %26 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %29 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 32768
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %36 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %34, %2
  %41 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %42 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 32768
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %40
  %48 = load %struct.x86emu*, %struct.x86emu** %3, align 8
  %49 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %58

53:                                               ; preds = %47, %34
  %54 = load i32, i32* @F_CF, align 4
  %55 = call i32 @CLEAR_FLAG(i32 %54)
  %56 = load i32, i32* @F_OF, align 4
  %57 = call i32 @CLEAR_FLAG(i32 %56)
  br label %63

58:                                               ; preds = %47, %40
  %59 = load i32, i32* @F_CF, align 4
  %60 = call i32 @SET_FLAG(i32 %59)
  %61 = load i32, i32* @F_OF, align 4
  %62 = call i32 @SET_FLAG(i32 %61)
  br label %63

63:                                               ; preds = %58, %53
  ret void
}

declare dso_local i32 @CLEAR_FLAG(i32) #1

declare dso_local i32 @SET_FLAG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
