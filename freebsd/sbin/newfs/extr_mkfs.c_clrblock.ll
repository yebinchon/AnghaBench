; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_clrblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_clrblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"clrblock bad fs_frag %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fs*, i8*, i32)* @clrblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clrblock(%struct.fs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.fs*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.fs* %0, %struct.fs** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.fs*, %struct.fs** %4, align 8
  %8 = getelementptr inbounds %struct.fs, %struct.fs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %59 [
    i32 8, label %10
    i32 4, label %15
    i32 2, label %30
    i32 1, label %45
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  store i8 0, i8* %14, align 1
  br label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 2
  %19 = shl i32 15, %18
  %20 = xor i32 %19, -1
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = ashr i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %20
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %25, align 1
  br label %65

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 3
  %33 = shl i32 %32, 1
  %34 = shl i32 3, %33
  %35 = xor i32 %34, -1
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %36, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = and i32 %42, %35
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  br label %65

45:                                               ; preds = %3
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, 7
  %48 = shl i32 1, %47
  %49 = xor i32 %48, -1
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, %49
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %54, align 1
  br label %65

59:                                               ; preds = %3
  %60 = load i32, i32* @stderr, align 4
  %61 = load %struct.fs*, %struct.fs** %4, align 8
  %62 = getelementptr inbounds %struct.fs, %struct.fs* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %59, %45, %30, %15, %10
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
