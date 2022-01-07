; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_setblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_setblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"setblock bad fs_frag %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs*, i8*, i32)* @setblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setblock(%struct.fs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.fs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fs*, %struct.fs** %4, align 8
  %8 = getelementptr inbounds %struct.fs, %struct.fs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %56 [
    i32 8, label %10
    i32 4, label %15
    i32 2, label %29
    i32 1, label %43
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 -1, i8* %14, align 1
  br label %62

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 2
  %19 = shl i32 15, %18
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %20, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %19
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  br label %62

29:                                               ; preds = %3
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 3
  %32 = shl i32 %31, 1
  %33 = shl i32 3, %32
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %33
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 1
  br label %62

43:                                               ; preds = %3
  %44 = load i32, i32* %6, align 4
  %45 = and i32 %44, 7
  %46 = shl i32 1, %45
  %47 = load i8*, i8** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 3
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or i32 %53, %46
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %51, align 1
  br label %62

56:                                               ; preds = %3
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.fs*, %struct.fs** %4, align 8
  %59 = getelementptr inbounds %struct.fs, %struct.fs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %56, %43, %29, %15, %10
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
