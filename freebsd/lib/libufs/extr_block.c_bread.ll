; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_bread.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_block.c_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"allocate bounce buffer\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"read error from block device\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"end of file from block device\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"short read or read error from block device\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bread(%struct.uufsd* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uufsd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.uufsd* %0, %struct.uufsd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %13 = call i32 @ERROR(%struct.uufsd* %12, i8* null)
  %14 = load i8*, i8** %8, align 8
  store i8* %14, i8** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = ptrtoint i8* %15 to i64
  %17 = and i64 %16, 63
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i64, i64* %9, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %26 = call i32 @ERROR(%struct.uufsd* %25, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %72

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %4
  %29 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %30 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %36 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = call i32 @pread(i32 %31, i8* %32, i64 %33, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %45

42:                                               ; preds = %28
  %43 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %44 = call i32 @ERROR(%struct.uufsd* %43, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %72

45:                                               ; preds = %28
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %50 = call i32 @ERROR(%struct.uufsd* %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %72

51:                                               ; preds = %45
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.uufsd*, %struct.uufsd** %6, align 8
  %58 = call i32 @ERROR(%struct.uufsd* %57, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %72

59:                                               ; preds = %51
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = icmp ne i8* %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = load i64, i64* %9, align 8
  %67 = call i32 @memcpy(i8* %64, i8* %65, i64 %66)
  %68 = load i8*, i8** %10, align 8
  %69 = call i32 @free(i8* %68)
  br label %70

70:                                               ; preds = %63, %59
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %5, align 4
  br label %83

72:                                               ; preds = %56, %48, %42, %24
  %73 = load i8*, i8** %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @memset(i8* %73, i32 0, i64 %74)
  %76 = load i8*, i8** %10, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = icmp ne i8* %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @free(i8* %80)
  br label %82

82:                                               ; preds = %79, %72
  store i32 -1, i32* %5, align 4
  br label %83

83:                                               ; preds = %82, %70
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @ERROR(%struct.uufsd*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @pread(i32, i8*, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
