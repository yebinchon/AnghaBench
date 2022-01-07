; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_read.c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_read.c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, i64, i64, i8*, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 (%struct.open_file*, i8*, i64, i64*)* }
%struct.TYPE_3__ = type { i64 (i32, i32, i32, i64, i8*, i64*)* }

@files = common dso_local global %struct.open_file* null, align 8
@SOPEN_MAX = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@EBADF = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@F_RAW = common dso_local global i32 0, align 4
@SOPEN_RASIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.open_file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.open_file*, %struct.open_file** @files, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.open_file, %struct.open_file* %12, i64 %14
  store %struct.open_file* %15, %struct.open_file** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SOPEN_MAX, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.open_file*, %struct.open_file** %8, align 8
  %21 = getelementptr inbounds %struct.open_file, %struct.open_file* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @F_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19, %3
  %27 = load i64, i64* @EBADF, align 8
  store i64 %27, i64* @errno, align 8
  store i32 -1, i32* %4, align 4
  br label %170

28:                                               ; preds = %19
  %29 = load %struct.open_file*, %struct.open_file** %8, align 8
  %30 = getelementptr inbounds %struct.open_file, %struct.open_file* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @F_RAW, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

35:                                               ; preds = %28
  %36 = call i32 @twiddle(i32 4)
  %37 = load %struct.open_file*, %struct.open_file** %8, align 8
  %38 = getelementptr inbounds %struct.open_file, %struct.open_file* %37, i32 0, i32 7
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64 (i32, i32, i32, i64, i8*, i64*)*, i64 (i32, i32, i32, i64, i8*, i64*)** %40, align 8
  %42 = load %struct.open_file*, %struct.open_file** %8, align 8
  %43 = getelementptr inbounds %struct.open_file, %struct.open_file* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @F_READ, align 4
  %46 = load %struct.open_file*, %struct.open_file** %8, align 8
  %47 = getelementptr inbounds %struct.open_file, %struct.open_file* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @btodb(i64 %48)
  %50 = load i64, i64* %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i64 %41(i32 %44, i32 %45, i32 %49, i64 %50, i8* %51, i64* %9)
  store i64 %52, i64* @errno, align 8
  %53 = load i64, i64* @errno, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %35
  store i32 -1, i32* %4, align 4
  br label %170

56:                                               ; preds = %35
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.open_file*, %struct.open_file** %8, align 8
  %59 = getelementptr inbounds %struct.open_file, %struct.open_file* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i64, i64* %9, align 8
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %4, align 4
  br label %170

64:                                               ; preds = %28
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %169, %64
  %67 = load %struct.open_file*, %struct.open_file** %8, align 8
  %68 = getelementptr inbounds %struct.open_file, %struct.open_file* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @imin(i64 %69, i64 %70)
  store i64 %71, i64* %10, align 8
  %72 = load i64, i64* %10, align 8
  %73 = icmp ugt i64 %72, 0
  br i1 %73, label %74, label %110

74:                                               ; preds = %66
  %75 = load %struct.open_file*, %struct.open_file** %8, align 8
  %76 = getelementptr inbounds %struct.open_file, %struct.open_file* %75, i32 0, i32 3
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.open_file*, %struct.open_file** %8, align 8
  %79 = getelementptr inbounds %struct.open_file, %struct.open_file* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = sext i32 %80 to i64
  %82 = getelementptr i8, i8* %77, i64 %81
  %83 = load i8*, i8** %6, align 8
  %84 = load i64, i64* %10, align 8
  %85 = call i32 @bcopy(i8* %82, i8* %83, i64 %84)
  %86 = load i64, i64* %10, align 8
  %87 = load %struct.open_file*, %struct.open_file** %8, align 8
  %88 = getelementptr inbounds %struct.open_file, %struct.open_file* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  %93 = load i64, i64* %10, align 8
  %94 = load %struct.open_file*, %struct.open_file** %8, align 8
  %95 = getelementptr inbounds %struct.open_file, %struct.open_file* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i64, i64* %9, align 8
  %100 = sub i64 %99, %98
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %74
  %104 = load i64, i64* %7, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %4, align 4
  br label %170

106:                                              ; preds = %74
  %107 = load i8*, i8** %6, align 8
  %108 = load i64, i64* %10, align 8
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %6, align 8
  br label %110

110:                                              ; preds = %106, %66
  %111 = load %struct.open_file*, %struct.open_file** %8, align 8
  %112 = getelementptr inbounds %struct.open_file, %struct.open_file* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = icmp eq i8* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* @SOPEN_RASIZE, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %137

119:                                              ; preds = %115, %110
  %120 = load %struct.open_file*, %struct.open_file** %8, align 8
  %121 = getelementptr inbounds %struct.open_file, %struct.open_file* %120, i32 0, i32 5
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64 (%struct.open_file*, i8*, i64, i64*)*, i64 (%struct.open_file*, i8*, i64, i64*)** %123, align 8
  %125 = load %struct.open_file*, %struct.open_file** %8, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = load i64, i64* %9, align 8
  %128 = call i64 %124(%struct.open_file* %125, i8* %126, i64 %127, i64* %11)
  store i64 %128, i64* @errno, align 8
  %129 = load i64, i64* @errno, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %119
  store i32 -1, i32* %4, align 4
  br label %170

132:                                              ; preds = %119
  %133 = load i64, i64* %7, align 8
  %134 = load i64, i64* %11, align 8
  %135 = sub i64 %133, %134
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %4, align 4
  br label %170

137:                                              ; preds = %115
  %138 = load %struct.open_file*, %struct.open_file** %8, align 8
  %139 = getelementptr inbounds %struct.open_file, %struct.open_file* %138, i32 0, i32 5
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64 (%struct.open_file*, i8*, i64, i64*)*, i64 (%struct.open_file*, i8*, i64, i64*)** %141, align 8
  %143 = load %struct.open_file*, %struct.open_file** %8, align 8
  %144 = load %struct.open_file*, %struct.open_file** %8, align 8
  %145 = getelementptr inbounds %struct.open_file, %struct.open_file* %144, i32 0, i32 3
  %146 = load i8*, i8** %145, align 8
  %147 = load i64, i64* @SOPEN_RASIZE, align 8
  %148 = call i64 %142(%struct.open_file* %143, i8* %146, i64 %147, i64* %11)
  store i64 %148, i64* @errno, align 8
  %149 = load i64, i64* @errno, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  store i32 -1, i32* %4, align 4
  br label %170

152:                                              ; preds = %137
  %153 = load %struct.open_file*, %struct.open_file** %8, align 8
  %154 = getelementptr inbounds %struct.open_file, %struct.open_file* %153, i32 0, i32 4
  store i32 0, i32* %154, align 8
  %155 = load i64, i64* @SOPEN_RASIZE, align 8
  %156 = load i64, i64* %11, align 8
  %157 = sub i64 %155, %156
  %158 = load %struct.open_file*, %struct.open_file** %8, align 8
  %159 = getelementptr inbounds %struct.open_file, %struct.open_file* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  %160 = load %struct.open_file*, %struct.open_file** %8, align 8
  %161 = getelementptr inbounds %struct.open_file, %struct.open_file* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %152
  %165 = load i64, i64* %7, align 8
  %166 = load i64, i64* %9, align 8
  %167 = sub i64 %165, %166
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %4, align 4
  br label %170

169:                                              ; preds = %152
  br label %66

170:                                              ; preds = %164, %151, %132, %131, %103, %56, %55, %26
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local i32 @twiddle(i32) #1

declare dso_local i32 @btodb(i64) #1

declare dso_local i64 @imin(i64, i64) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
