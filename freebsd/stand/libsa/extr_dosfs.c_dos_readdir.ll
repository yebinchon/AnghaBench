; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_dosfs.c_dos_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i32 }
%struct.dirent = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32*, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@FA_LABEL = common dso_local global i32 0, align 4
@FA_MASK = common dso_local global i32 0, align 4
@FA_XDE = common dso_local global i32 0, align 4
@FA_DIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*, %struct.dirent*)* @dos_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dos_readdir(%struct.open_file* %0, %struct.dirent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.open_file*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca [261 x i32], align 16
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %4, align 8
  store %struct.dirent* %1, %struct.dirent** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %2, %42, %81, %93, %98, %121
  %14 = load i32, i32* %10, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.open_file*, %struct.open_file** %4, align 8
  %16 = call i32 @dos_read(%struct.open_file* %15, %struct.TYPE_5__* %7, i32 40, i64* %8)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %12, align 4
  store i32 %20, i32* %3, align 4
  br label %158

21:                                               ; preds = %13
  %22 = load i64, i64* %8, align 8
  %23 = icmp eq i64 %22, 40
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %3, align 4
  br label %158

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @ENOENT, align 4
  store i32 %34, i32* %3, align 4
  br label %158

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 229
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %13

43:                                               ; preds = %35
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FA_LABEL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %43
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FA_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @FA_XDE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %98

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 64
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %83

68:                                               ; preds = %58
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %11, align 4
  %73 = sub nsw i32 %72, 1
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75, %68
  br label %13

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, -65
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  %92 = icmp sgt i32 %91, 20
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %83
  store i32 0, i32* %10, align 4
  br label %13

94:                                               ; preds = %90
  %95 = getelementptr inbounds [261 x i32], [261 x i32]* %6, i64 0, i64 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %97 = call i32 @cp_xdnm(i32* %95, %struct.TYPE_6__* %96)
  br label %99

98:                                               ; preds = %50
  br label %13

99:                                               ; preds = %94
  br label %121

100:                                              ; preds = %43
  %101 = load i32, i32* %11, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %116

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @dos_checksum(i32* %106, i32 %109)
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %122

115:                                              ; preds = %103
  br label %120

116:                                              ; preds = %100
  %117 = getelementptr inbounds [261 x i32], [261 x i32]* %6, i64 0, i64 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %119 = call i32 @cp_sfn(i32* %117, %struct.TYPE_7__* %118)
  br label %122

120:                                              ; preds = %115
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %120, %99
  br label %13

122:                                              ; preds = %116, %114
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %128, %133
  %135 = load %struct.dirent*, %struct.dirent** %5, align 8
  %136 = getelementptr inbounds %struct.dirent, %struct.dirent* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  %137 = load %struct.dirent*, %struct.dirent** %5, align 8
  %138 = getelementptr inbounds %struct.dirent, %struct.dirent* %137, i32 0, i32 1
  store i32 16, i32* %138, align 4
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @FA_DIR, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %122
  %146 = load i32, i32* @DT_DIR, align 4
  br label %149

147:                                              ; preds = %122
  %148 = load i32, i32* @DT_REG, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  %151 = load %struct.dirent*, %struct.dirent** %5, align 8
  %152 = getelementptr inbounds %struct.dirent, %struct.dirent* %151, i32 0, i32 3
  store i32 %150, i32* %152, align 4
  %153 = load %struct.dirent*, %struct.dirent** %5, align 8
  %154 = getelementptr inbounds %struct.dirent, %struct.dirent* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = getelementptr inbounds [261 x i32], [261 x i32]* %6, i64 0, i64 0
  %157 = call i32 @memcpy(i32 %155, i32* %156, i32 4)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %149, %33, %24, %19
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @dos_read(%struct.open_file*, %struct.TYPE_5__*, i32, i64*) #1

declare dso_local i32 @cp_xdnm(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @dos_checksum(i32*, i32) #1

declare dso_local i32 @cp_sfn(i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
