; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_open.c_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_open.c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32, %struct.fs_ops*, %struct.TYPE_2__*, i32*, i32*, i64 }
%struct.fs_ops = type { i32 (i8*, %struct.open_file*)* }
%struct.TYPE_2__ = type { i32 (%struct.open_file*)* }

@EMFILE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@files = common dso_local global %struct.open_file* null, align 8
@exclusive_file_system = common dso_local global %struct.fs_ops* null, align 8
@F_NODEV = common dso_local global i32 0, align 4
@F_RAW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@file_system = common dso_local global %struct.fs_ops** null, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fs_ops*, align 8
  %7 = alloca %struct.open_file*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call i32 (...) @o_gethandle()
  store i32 %13, i32* %8, align 4
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EMFILE, align 4
  store i32 %16, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %157

17:                                               ; preds = %2
  %18 = load %struct.open_file*, %struct.open_file** @files, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.open_file, %struct.open_file* %18, i64 %20
  store %struct.open_file* %21, %struct.open_file** %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.open_file*, %struct.open_file** %7, align 8
  %25 = getelementptr inbounds %struct.open_file, %struct.open_file* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.open_file*, %struct.open_file** %7, align 8
  %27 = getelementptr inbounds %struct.open_file, %struct.open_file* %26, i32 0, i32 2
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %27, align 8
  %28 = load %struct.open_file*, %struct.open_file** %7, align 8
  %29 = getelementptr inbounds %struct.open_file, %struct.open_file* %28, i32 0, i32 1
  store %struct.fs_ops* null, %struct.fs_ops** %29, align 8
  %30 = load %struct.open_file*, %struct.open_file** %7, align 8
  %31 = getelementptr inbounds %struct.open_file, %struct.open_file* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.open_file*, %struct.open_file** %7, align 8
  %33 = getelementptr inbounds %struct.open_file, %struct.open_file* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  store i8* null, i8** %12, align 8
  %34 = load %struct.fs_ops*, %struct.fs_ops** @exclusive_file_system, align 8
  %35 = icmp ne %struct.fs_ops* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %17
  %37 = load %struct.fs_ops*, %struct.fs_ops** @exclusive_file_system, align 8
  store %struct.fs_ops* %37, %struct.fs_ops** %6, align 8
  %38 = load %struct.fs_ops*, %struct.fs_ops** %6, align 8
  %39 = getelementptr inbounds %struct.fs_ops, %struct.fs_ops* %38, i32 0, i32 0
  %40 = load i32 (i8*, %struct.open_file*)*, i32 (i8*, %struct.open_file*)** %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = load %struct.open_file*, %struct.open_file** %7, align 8
  %43 = call i32 %40(i8* %41, %struct.open_file* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %150

47:                                               ; preds = %36
  br label %146

48:                                               ; preds = %17
  %49 = load %struct.open_file*, %struct.open_file** %7, align 8
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 @devopen(%struct.open_file* %49, i8* %50, i8** %12)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = load %struct.open_file*, %struct.open_file** %7, align 8
  %56 = getelementptr inbounds %struct.open_file, %struct.open_file* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @F_NODEV, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.open_file*, %struct.open_file** %7, align 8
  %63 = getelementptr inbounds %struct.open_file, %struct.open_file* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = icmp eq %struct.TYPE_2__* %64, null
  br i1 %65, label %66, label %67

66:                                               ; preds = %61, %48
  br label %146

67:                                               ; preds = %61, %54
  %68 = load i8*, i8** %12, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %70, %67
  %76 = load i32, i32* @F_RAW, align 4
  %77 = load %struct.open_file*, %struct.open_file** %7, align 8
  %78 = getelementptr inbounds %struct.open_file, %struct.open_file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = load %struct.open_file*, %struct.open_file** %7, align 8
  %82 = getelementptr inbounds %struct.open_file, %struct.open_file* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %157

84:                                               ; preds = %70
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %115, %84
  %87 = load %struct.fs_ops**, %struct.fs_ops*** @file_system, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.fs_ops*, %struct.fs_ops** %87, i64 %89
  %91 = load %struct.fs_ops*, %struct.fs_ops** %90, align 8
  %92 = icmp ne %struct.fs_ops* %91, null
  br i1 %92, label %93, label %118

93:                                               ; preds = %86
  %94 = load %struct.fs_ops**, %struct.fs_ops*** @file_system, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.fs_ops*, %struct.fs_ops** %94, i64 %96
  %98 = load %struct.fs_ops*, %struct.fs_ops** %97, align 8
  store %struct.fs_ops* %98, %struct.fs_ops** %6, align 8
  %99 = load %struct.fs_ops*, %struct.fs_ops** %6, align 8
  %100 = getelementptr inbounds %struct.fs_ops, %struct.fs_ops* %99, i32 0, i32 0
  %101 = load i32 (i8*, %struct.open_file*)*, i32 (i8*, %struct.open_file*)** %100, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = load %struct.open_file*, %struct.open_file** %7, align 8
  %104 = call i32 %101(i8* %102, %struct.open_file* %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %150

108:                                              ; preds = %93
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* @EINVAL, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i32, i32* %10, align 4
  store i32 %113, i32* %11, align 4
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %86

118:                                              ; preds = %86
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %10, align 4
  %120 = load %struct.open_file*, %struct.open_file** %7, align 8
  %121 = getelementptr inbounds %struct.open_file, %struct.open_file* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @F_NODEV, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %118
  %127 = load %struct.open_file*, %struct.open_file** %7, align 8
  %128 = getelementptr inbounds %struct.open_file, %struct.open_file* %127, i32 0, i32 2
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = icmp ne %struct.TYPE_2__* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.open_file*, %struct.open_file** %7, align 8
  %133 = getelementptr inbounds %struct.open_file, %struct.open_file* %132, i32 0, i32 2
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32 (%struct.open_file*)*, i32 (%struct.open_file*)** %135, align 8
  %137 = load %struct.open_file*, %struct.open_file** %7, align 8
  %138 = call i32 %136(%struct.open_file* %137)
  br label %139

139:                                              ; preds = %131, %126, %118
  %140 = load i32, i32* %10, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.open_file*, %struct.open_file** %7, align 8
  %144 = call i32 @devclose(%struct.open_file* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %66, %47
  %147 = load %struct.open_file*, %struct.open_file** %7, align 8
  %148 = getelementptr inbounds %struct.open_file, %struct.open_file* %147, i32 0, i32 0
  store i32 0, i32* %148, align 8
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %157

150:                                              ; preds = %107, %46
  %151 = load %struct.fs_ops*, %struct.fs_ops** %6, align 8
  %152 = load %struct.open_file*, %struct.open_file** %7, align 8
  %153 = getelementptr inbounds %struct.open_file, %struct.open_file* %152, i32 0, i32 1
  store %struct.fs_ops* %151, %struct.fs_ops** %153, align 8
  %154 = load %struct.open_file*, %struct.open_file** %7, align 8
  %155 = call i32 @o_rainit(%struct.open_file* %154)
  %156 = load i32, i32* %8, align 4
  store i32 %156, i32* %3, align 4
  br label %157

157:                                              ; preds = %150, %146, %75, %15
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @o_gethandle(...) #1

declare dso_local i32 @devopen(%struct.open_file*, i8*, i8**) #1

declare dso_local i32 @devclose(%struct.open_file*) #1

declare dso_local i32 @o_rainit(%struct.open_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
