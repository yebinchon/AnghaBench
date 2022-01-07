; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_copyin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_activemap.c_activemap_copyin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activemap = type { i64, i64, i32, i64, i32*, i32, i32, i32 }

@ACTIVEMAP_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @activemap_copyin(%struct.activemap* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.activemap*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.activemap* %0, %struct.activemap** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.activemap*, %struct.activemap** %4, align 8
  %9 = getelementptr inbounds %struct.activemap, %struct.activemap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ACTIVEMAP_MAGIC, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @PJDLOG_ASSERT(i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.activemap*, %struct.activemap** %4, align 8
  %17 = getelementptr inbounds %struct.activemap, %struct.activemap* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @PJDLOG_ASSERT(i32 %20)
  %22 = load %struct.activemap*, %struct.activemap** %4, align 8
  %23 = getelementptr inbounds %struct.activemap, %struct.activemap* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.activemap*, %struct.activemap** %4, align 8
  %27 = getelementptr inbounds %struct.activemap, %struct.activemap* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memcpy(i32 %24, i8* %25, i64 %28)
  %30 = load %struct.activemap*, %struct.activemap** %4, align 8
  %31 = getelementptr inbounds %struct.activemap, %struct.activemap* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load %struct.activemap*, %struct.activemap** %4, align 8
  %35 = getelementptr inbounds %struct.activemap, %struct.activemap* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @memcpy(i32 %32, i8* %33, i64 %36)
  %38 = load %struct.activemap*, %struct.activemap** %4, align 8
  %39 = getelementptr inbounds %struct.activemap, %struct.activemap* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %5, align 8
  %42 = load %struct.activemap*, %struct.activemap** %4, align 8
  %43 = getelementptr inbounds %struct.activemap, %struct.activemap* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @memcpy(i32 %40, i8* %41, i64 %44)
  %46 = load %struct.activemap*, %struct.activemap** %4, align 8
  %47 = getelementptr inbounds %struct.activemap, %struct.activemap* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.activemap*, %struct.activemap** %4, align 8
  %50 = getelementptr inbounds %struct.activemap, %struct.activemap* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @bit_ffs(i32 %48, i32 %51, i32* %7)
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %56

55:                                               ; preds = %3
  br label %92

56:                                               ; preds = %3
  %57 = load %struct.activemap*, %struct.activemap** %4, align 8
  %58 = call i32 @activemap_sync_rewind(%struct.activemap* %57)
  %59 = load %struct.activemap*, %struct.activemap** %4, align 8
  %60 = getelementptr inbounds %struct.activemap, %struct.activemap* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %89, %56
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.activemap*, %struct.activemap** %4, align 8
  %64 = getelementptr inbounds %struct.activemap, %struct.activemap* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %92

67:                                               ; preds = %61
  %68 = load %struct.activemap*, %struct.activemap** %4, align 8
  %69 = getelementptr inbounds %struct.activemap, %struct.activemap* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i64 @bit_test(i32 %70, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %88

74:                                               ; preds = %67
  %75 = load %struct.activemap*, %struct.activemap** %4, align 8
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @ext2reqs(%struct.activemap* %75, i32 %76)
  %78 = load %struct.activemap*, %struct.activemap** %4, align 8
  %79 = getelementptr inbounds %struct.activemap, %struct.activemap* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.activemap*, %struct.activemap** %4, align 8
  %85 = getelementptr inbounds %struct.activemap, %struct.activemap* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %85, align 8
  br label %88

88:                                               ; preds = %74, %67
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %61

92:                                               ; preds = %55, %61
  ret void
}

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @bit_ffs(i32, i32, i32*) #1

declare dso_local i32 @activemap_sync_rewind(%struct.activemap*) #1

declare dso_local i64 @bit_test(i32, i32) #1

declare dso_local i32 @ext2reqs(%struct.activemap*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
