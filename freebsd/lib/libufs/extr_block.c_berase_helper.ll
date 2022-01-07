; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_berase_helper.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_berase_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"failed to allocate memory\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed writing to disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uufsd*, i64, i64)* @berase_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berase_helper(%struct.uufsd* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uufsd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uufsd* %0, %struct.uufsd** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %15 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %13, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %20 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = mul nsw i64 65536, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i8* @calloc(i32 1, i32 %24)
  store i8* %25, i8** %8, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %30 = call i32 @ERROR(%struct.uufsd* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

31:                                               ; preds = %3
  br label %32

32:                                               ; preds = %56, %31
  %33 = load i64, i64* %7, align 8
  %34 = icmp sgt i64 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %41, %35
  %44 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %45 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @pwrite(i32 %46, i8* %47, i32 %48, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load %struct.uufsd*, %struct.uufsd** %5, align 8
  %55 = call i32 @ERROR(%struct.uufsd* %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %64

56:                                               ; preds = %43
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %32

64:                                               ; preds = %53, %32
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %64, %28
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
