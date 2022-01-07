; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_enter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/x86emu/extr_x86emu.c_x86emuOp_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x86emu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.x86emu*)* @x86emuOp_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86emuOp_enter(%struct.x86emu* %0) #0 {
  %2 = alloca %struct.x86emu*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.x86emu* %0, %struct.x86emu** %2, align 8
  %7 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %8 = call i8* @fetch_word_imm(%struct.x86emu* %7)
  store i8* %8, i8** %3, align 8
  %9 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %10 = call i32 @fetch_byte_imm(%struct.x86emu* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %12 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %13 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @push_word(%struct.x86emu* %11, i8* %15)
  %17 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %18 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  br label %24

24:                                               ; preds = %47, %23
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %24
  %29 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %30 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr i8, i8* %32, i64 -2
  store i8* %33, i8** %31, align 8
  %34 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %35 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %36 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %37 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %41 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = call i8* @fetch_word(%struct.x86emu* %35, i32 %39, i32 %44)
  %46 = call i32 @push_word(%struct.x86emu* %34, i8* %45)
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %24

50:                                               ; preds = %24
  %51 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 @push_word(%struct.x86emu* %51, i8* %52)
  br label %54

54:                                               ; preds = %50, %1
  %55 = load i8*, i8** %4, align 8
  %56 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %57 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  %59 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %60 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i8*, i8** %3, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = inttoptr i64 %66 to i8*
  %68 = load %struct.x86emu*, %struct.x86emu** %2, align 8
  %69 = getelementptr inbounds %struct.x86emu, %struct.x86emu* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  ret void
}

declare dso_local i8* @fetch_word_imm(%struct.x86emu*) #1

declare dso_local i32 @fetch_byte_imm(%struct.x86emu*) #1

declare dso_local i32 @push_word(%struct.x86emu*, i8*) #1

declare dso_local i8* @fetch_word(%struct.x86emu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
