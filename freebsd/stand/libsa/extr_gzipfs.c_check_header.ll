; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_check_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_gzipfs.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z_file = type { i64 }

@gz_magic = common dso_local global i32* null, align 8
@Z_DEFLATED = common dso_local global i32 0, align 4
@RESERVED = common dso_local global i32 0, align 4
@EXTRA_FIELD = common dso_local global i32 0, align 4
@ORIG_NAME = common dso_local global i32 0, align 4
@COMMENT = common dso_local global i32 0, align 4
@HEAD_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.z_file*)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(%struct.z_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.z_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.z_file* %0, %struct.z_file** %3, align 8
  %8 = load %struct.z_file*, %struct.z_file** %3, align 8
  %9 = getelementptr inbounds %struct.z_file, %struct.z_file* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %27, %1
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 2
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.z_file*, %struct.z_file** %3, align 8
  %15 = load %struct.z_file*, %struct.z_file** %3, align 8
  %16 = getelementptr inbounds %struct.z_file, %struct.z_file* %15, i32 0, i32 0
  %17 = call i32 @get_byte(%struct.z_file* %14, i64* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32*, i32** @gz_magic, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 1, i32* %2, align 4
  br label %152

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.z_file*, %struct.z_file** %3, align 8
  %32 = load %struct.z_file*, %struct.z_file** %3, align 8
  %33 = getelementptr inbounds %struct.z_file, %struct.z_file* %32, i32 0, i32 0
  %34 = call i32 @get_byte(%struct.z_file* %31, i64* %33)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.z_file*, %struct.z_file** %3, align 8
  %36 = load %struct.z_file*, %struct.z_file** %3, align 8
  %37 = getelementptr inbounds %struct.z_file, %struct.z_file* %36, i32 0, i32 0
  %38 = call i32 @get_byte(%struct.z_file* %35, i64* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @Z_DEFLATED, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @RESERVED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %30
  store i32 1, i32* %2, align 4
  br label %152

48:                                               ; preds = %42
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %57, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.z_file*, %struct.z_file** %3, align 8
  %54 = load %struct.z_file*, %struct.z_file** %3, align 8
  %55 = getelementptr inbounds %struct.z_file, %struct.z_file* %54, i32 0, i32 0
  %56 = call i32 @get_byte(%struct.z_file* %53, i64* %55)
  br label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %49

60:                                               ; preds = %49
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @EXTRA_FIELD, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %60
  %66 = load %struct.z_file*, %struct.z_file** %3, align 8
  %67 = load %struct.z_file*, %struct.z_file** %3, align 8
  %68 = getelementptr inbounds %struct.z_file, %struct.z_file* %67, i32 0, i32 0
  %69 = call i32 @get_byte(%struct.z_file* %66, i64* %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.z_file*, %struct.z_file** %3, align 8
  %71 = load %struct.z_file*, %struct.z_file** %3, align 8
  %72 = getelementptr inbounds %struct.z_file, %struct.z_file* %71, i32 0, i32 0
  %73 = call i32 @get_byte(%struct.z_file* %70, i64* %72)
  %74 = shl i32 %73, 8
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %89, %65
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %6, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.z_file*, %struct.z_file** %3, align 8
  %83 = load %struct.z_file*, %struct.z_file** %3, align 8
  %84 = getelementptr inbounds %struct.z_file, %struct.z_file* %83, i32 0, i32 0
  %85 = call i32 @get_byte(%struct.z_file* %82, i64* %84)
  %86 = icmp ne i32 %85, -1
  br label %87

87:                                               ; preds = %81, %77
  %88 = phi i1 [ false, %77 ], [ %86, %81 ]
  br i1 %88, label %89, label %90

89:                                               ; preds = %87
  br label %77

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %60
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @ORIG_NAME, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %108, %96
  %98 = load %struct.z_file*, %struct.z_file** %3, align 8
  %99 = load %struct.z_file*, %struct.z_file** %3, align 8
  %100 = getelementptr inbounds %struct.z_file, %struct.z_file* %99, i32 0, i32 0
  %101 = call i32 @get_byte(%struct.z_file* %98, i64* %100)
  store i32 %101, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, -1
  br label %106

106:                                              ; preds = %103, %97
  %107 = phi i1 [ false, %97 ], [ %105, %103 ]
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  br label %97

109:                                              ; preds = %106
  br label %110

110:                                              ; preds = %109, %91
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* @COMMENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %110
  br label %116

116:                                              ; preds = %127, %115
  %117 = load %struct.z_file*, %struct.z_file** %3, align 8
  %118 = load %struct.z_file*, %struct.z_file** %3, align 8
  %119 = getelementptr inbounds %struct.z_file, %struct.z_file* %118, i32 0, i32 0
  %120 = call i32 @get_byte(%struct.z_file* %117, i64* %119)
  store i32 %120, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, -1
  br label %125

125:                                              ; preds = %122, %116
  %126 = phi i1 [ false, %116 ], [ %124, %122 ]
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  br label %116

128:                                              ; preds = %125
  br label %129

129:                                              ; preds = %128, %110
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @HEAD_CRC, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %129
  store i32 0, i32* %6, align 4
  br label %135

135:                                              ; preds = %143, %134
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %138, label %146

138:                                              ; preds = %135
  %139 = load %struct.z_file*, %struct.z_file** %3, align 8
  %140 = load %struct.z_file*, %struct.z_file** %3, align 8
  %141 = getelementptr inbounds %struct.z_file, %struct.z_file* %140, i32 0, i32 0
  %142 = call i32 @get_byte(%struct.z_file* %139, i64* %141)
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %135

146:                                              ; preds = %135
  br label %147

147:                                              ; preds = %146, %129
  %148 = load i32, i32* %7, align 4
  %149 = icmp eq i32 %148, -1
  %150 = zext i1 %149 to i64
  %151 = select i1 %149, i32 1, i32 0
  store i32 %151, i32* %2, align 4
  br label %152

152:                                              ; preds = %147, %47, %25
  %153 = load i32, i32* %2, align 4
  ret i32 %153
}

declare dso_local i32 @get_byte(%struct.z_file*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
