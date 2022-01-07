; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write_limits.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_quotafile.c_quota_write_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32, i32, i32, i32, i32 }
%struct.dqblk = type { i64, i64, i64, i64, i64, i64 }

@Q_SETQUOTA = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quota_write_limits(%struct.quotafile* %0, %struct.dqblk* %1, i32 %2) #0 {
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
  %15 = load i32, i32* @Q_SETQUOTA, align 4
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
  br label %157

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
  br label %157

37:                                               ; preds = %27
  %38 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @quota_read(%struct.quotafile* %38, %struct.dqblk* %8, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  store i32 -1, i32* %4, align 4
  br label %157

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp slt i64 %52, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %60 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sge i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %65 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %56, %50, %47, %43
  %67 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %88

70:                                               ; preds = %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %88

73:                                               ; preds = %70
  %74 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %75 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %82 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sge i64 %80, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %87 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %78, %73, %70, %66
  %89 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %111

92:                                               ; preds = %88
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %111

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %105 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sge i64 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %101
  %109 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %110 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %109, i32 0, i32 4
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %108, %101, %95, %92, %88
  %112 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %111
  %116 = load i32, i32* %7, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %133

118:                                              ; preds = %115
  %119 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %120 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp sgt i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %127 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp sge i64 %125, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %132 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %131, i32 0, i32 4
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %123, %118, %115, %111
  %134 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %137 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %136, i32 0, i32 3
  store i64 %135, i64* %137, align 8
  %138 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %8, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %141 = getelementptr inbounds %struct.dqblk, %struct.dqblk* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  %142 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %143 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %155 [
    i32 32, label %145
    i32 64, label %150
  ]

145:                                              ; preds = %133
  %146 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %147 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @quota_write32(%struct.quotafile* %146, %struct.dqblk* %147, i32 %148)
  store i32 %149, i32* %4, align 4
  br label %157

150:                                              ; preds = %133
  %151 = load %struct.quotafile*, %struct.quotafile** %5, align 8
  %152 = load %struct.dqblk*, %struct.dqblk** %6, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @quota_write64(%struct.quotafile* %151, %struct.dqblk* %152, i32 %153)
  store i32 %154, i32* %4, align 4
  br label %157

155:                                              ; preds = %133
  %156 = load i32, i32* @EINVAL, align 4
  store i32 %156, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %157

157:                                              ; preds = %155, %150, %145, %42, %35, %14
  %158 = load i32, i32* %4, align 4
  ret i32 %158
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
