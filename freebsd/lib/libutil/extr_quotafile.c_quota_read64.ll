; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_read64.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_read64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32 }
%struct.dqblk = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.dqblk64 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.quotafile*, %struct.dqblk*, i32)* @quota_read64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_read64(%struct.quotafile* %0, %struct.dqblk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca %struct.dqblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dqblk64, align 4
  %9 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %5, align 8
  store %struct.dqblk* %1, %struct.dqblk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 32
  %13 = add i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %9, align 4
  %15 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %16 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @SEEK_SET, align 4
  %20 = call i32 @lseek(i32 %17, i32 %18, i32 %19)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %73

23:                                               ; preds = %3
  %24 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %25 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @read(i32 %26, %struct.dqblk64* %8, i32 32)
  switch i32 %27, label %72 [
    i32 0, label %28
    i32 32, label %31
  ]

28:                                               ; preds = %23
  %29 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %30 = call i32 @memset(%struct.dqblk* %29, i32 0, i32 64)
  store i32 0, i32* %4, align 4
  br label %73

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @be64toh(i32 %33)
  %35 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %36 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @be64toh(i32 %38)
  %40 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %41 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %40, i32 0, i32 6
  store i8* %39, i8** %41, align 8
  %42 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @be64toh(i32 %43)
  %45 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %46 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be64toh(i32 %48)
  %50 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %51 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @be64toh(i32 %53)
  %55 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %56 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %55, i32 0, i32 3
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @be64toh(i32 %58)
  %60 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %61 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @be64toh(i32 %63)
  %65 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %66 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = getelementptr inbounds %struct.dqblk64, %struct.dqblk64* %8, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @be64toh(i32 %68)
  %70 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %71 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  store i32 0, i32* %4, align 4
  br label %73

72:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %73

73:                                               ; preds = %72, %31, %28, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @read(i32, %struct.dqblk64*, i32) #1

declare dso_local i32 @memset(%struct.dqblk*, i32, i32) #1

declare dso_local i8* @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
