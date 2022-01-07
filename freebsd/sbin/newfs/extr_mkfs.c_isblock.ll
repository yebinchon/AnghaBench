; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_isblock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_mkfs.c_isblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"isblock bad fs_frag %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs*, i8*, i32)* @isblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isblock(%struct.fs* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.fs* %0, %struct.fs** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.fs*, %struct.fs** %5, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %80 [
    i32 8, label %12
    i32 4, label %21
    i32 2, label %41
    i32 1, label %61
  ]

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 255
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %4, align 4
  br label %86

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 1
  %24 = shl i32 %23, 2
  %25 = shl i32 15, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %8, align 1
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %27, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %8, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = load i8, i8* %8, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %4, align 4
  br label %86

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, 3
  %44 = shl i32 %43, 1
  %45 = shl i32 3, %44
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %8, align 1
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %7, align 4
  %49 = ashr i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = and i32 %53, %55
  %57 = load i8, i8* %8, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %56, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %4, align 4
  br label %86

61:                                               ; preds = %3
  %62 = load i32, i32* %7, align 4
  %63 = and i32 %62, 7
  %64 = shl i32 1, %63
  %65 = trunc i32 %64 to i8
  store i8 %65, i8* %8, align 1
  %66 = load i8*, i8** %6, align 8
  %67 = load i32, i32* %7, align 4
  %68 = ashr i32 %67, 3
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = load i8, i8* %8, align 1
  %74 = zext i8 %73 to i32
  %75 = and i32 %72, %74
  %76 = load i8, i8* %8, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %4, align 4
  br label %86

80:                                               ; preds = %3
  %81 = load i32, i32* @stderr, align 4
  %82 = load %struct.fs*, %struct.fs** %5, align 8
  %83 = getelementptr inbounds %struct.fs, %struct.fs* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %80, %61, %41, %21, %12
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
