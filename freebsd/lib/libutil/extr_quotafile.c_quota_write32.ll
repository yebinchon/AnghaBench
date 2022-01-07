; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write32.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32 }
%struct.dqblk = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dqblk32 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.quotafile*, %struct.dqblk*, i32)* @quota_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_write32(%struct.quotafile* %0, %struct.dqblk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca %struct.dqblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dqblk32, align 8
  %9 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %5, align 8
  store %struct.dqblk* %1, %struct.dqblk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %11 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @CLIP32(i32 %12)
  %14 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 7
  store i8* %13, i8** %14, align 8
  %15 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %16 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i8* @CLIP32(i32 %17)
  %19 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 6
  store i8* %18, i8** %19, align 8
  %20 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %21 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @CLIP32(i32 %22)
  %24 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 5
  store i8* %23, i8** %24, align 8
  %25 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %26 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @CLIP32(i32 %27)
  %29 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 4
  store i8* %28, i8** %29, align 8
  %30 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %31 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @CLIP32(i32 %32)
  %34 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 3
  store i8* %33, i8** %34, align 8
  %35 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %36 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @CLIP32(i32 %37)
  %39 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %41 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @CLIP32(i32 %42)
  %44 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %46 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @CLIP32(i32 %47)
  %49 = getelementptr inbounds %struct.dqblk32, %struct.dqblk32* %8, i32 0, i32 0
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 64
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %9, align 4
  %54 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %55 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @SEEK_SET, align 4
  %59 = call i32 @lseek(i32 %56, i32 %57, i32 %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %62

61:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %71

62:                                               ; preds = %3
  %63 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %64 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @write(i32 %65, %struct.dqblk32* %8, i32 64)
  %67 = sext i32 %66 to i64
  %68 = icmp eq i64 %67, 64
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %71

70:                                               ; preds = %62
  store i32 -1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %69, %61
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i8* @CLIP32(i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @write(i32, %struct.dqblk32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
