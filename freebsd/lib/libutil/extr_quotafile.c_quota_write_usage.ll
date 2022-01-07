; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32, i32 }
%struct.dqblk = type { i64, i64, i64, i64, i64, i64 }

@Q_SETUSE = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_write_usage(%struct.quotafile* %0, %struct.dqblk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.quotafile*, align 8
  %6 = alloca %struct.dqblk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dqblk, align 8
  %9 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %5, align 8
  store %struct.dqblk* %1, %struct.dqblk** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %11 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %27

14:                                               ; preds = %3
  %15 = load i32, i32* @Q_SETUSE, align 4
  %16 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %17 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @QCMD(i32 %15, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %21 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %26 = call i32 @quotactl(i32 %22, i32 %23, i32 %24, %struct.dqblk* %25)
  store i32 %26, i32* %4, align 4
  br label %109

27:                                               ; preds = %3
  %28 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %29 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @O_RDWR, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @O_RDWR, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @EBADF, align 4
  store i32 %36, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %109

37:                                               ; preds = %27
  %38 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @quota_read(%struct.quotafile* %38, %struct.dqblk* %8, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %109

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %58 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %59, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 5
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %56, %50, %47, %43
  %66 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %80 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %81, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 4
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %85, %78, %72, %69, %65
  %88 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %89 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  store i64 %90, i64* %91, align 8
  %92 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %93 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  store i64 %94, i64* %95, align 8
  %96 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %97 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %107 [
    i32 32, label %99
    i32 64, label %103
  ]

99:                                               ; preds = %87
  %100 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @quota_write32(%struct.quotafile* %100, %struct.dqblk* %8, i32 %101)
  store i32 %102, i32* %4, align 4
  br label %109

103:                                              ; preds = %87
  %104 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @quota_write64(%struct.quotafile* %104, %struct.dqblk* %8, i32 %105)
  store i32 %106, i32* %4, align 4
  br label %109

107:                                              ; preds = %87
  %108 = load i32, i32* @EINVAL, align 4
  store i32 %108, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %103, %99, %42, %35, %14
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @QCMD(i32, i32) #1

declare dso_local i32 @quotactl(i32, i32, i32, %struct.dqblk*) #1

declare dso_local i64 @quota_read(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_write32(%struct.quotafile*, %struct.dqblk*, i32) #1

declare dso_local i32 @quota_write64(%struct.quotafile*, %struct.dqblk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
