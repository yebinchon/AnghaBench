; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_Convert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c_Convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@__const.Convert.DaysInMonth = private unnamed_addr constant [12 x i8] c"\1F\00\1F\1E\1F\1E\1F\1F\1E\1F\1E\1F", align 1
@EPOCH = common dso_local global i32 0, align 4
@DAY = common dso_local global i32 0, align 4
@HOUR = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i32 0, align 4
@DSTon = common dso_local global i32 0, align 4
@DSTmaybe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @Convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Convert(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [12 x i8], align 1
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %21 = bitcast [12 x i8]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.Convert.DaysInMonth, i32 0, i32 0), i64 12, i1 false)
  %22 = load i32, i32* %12, align 4
  %23 = icmp slt i32 %22, 69
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load i32, i32* %12, align 4
  %26 = add nsw i32 %25, 2000
  store i32 %26, i32* %12, align 4
  br label %34

27:                                               ; preds = %8
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %28, 100
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, 1900
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %12, align 4
  %36 = srem i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load i32, i32* %12, align 4
  %40 = srem i32 %39, 100
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = srem i32 %43, 400
  %45 = icmp eq i32 %44, 0
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i1 [ true, %38 ], [ %45, %42 ]
  br label %48

48:                                               ; preds = %46, %34
  %49 = phi i1 [ false, %34 ], [ %47, %46 ]
  %50 = zext i1 %49 to i64
  %51 = select i1 %49, i32 29, i32 28
  %52 = trunc i32 %51 to i8
  %53 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 1
  store i8 %52, i8* %53, align 1
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* @EPOCH, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %96, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %12, align 4
  %59 = icmp sgt i32 %58, 2038
  br i1 %59, label %96, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 1
  br i1 %62, label %96, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %10, align 4
  %65 = icmp sgt i32 %64, 12
  br i1 %65, label %96, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %96, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp sgt i32 %70, %76
  br i1 %77, label %96, label %78

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %96, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %13, align 4
  %83 = icmp sgt i32 %82, 23
  br i1 %83, label %96, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %14, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* %14, align 4
  %89 = icmp sgt i32 %88, 59
  br i1 %89, label %96, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %15, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %15, align 4
  %95 = icmp sgt i32 %94, 59
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %90, %87, %84, %81, %78, %69, %66, %63, %60, %57, %48
  store i32 -1, i32* %9, align 4
  br label %168

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %100

100:                                              ; preds = %112, %97
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %115

104:                                              ; preds = %100
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [12 x i8], [12 x i8]* %18, i64 0, i64 %106
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = load i32, i32* %19, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %19, align 4
  br label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %20, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %20, align 4
  br label %100

115:                                              ; preds = %100
  %116 = load i32, i32* @EPOCH, align 4
  store i32 %116, i32* %20, align 4
  br label %117

117:                                              ; preds = %129, %115
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* %12, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32, i32* %20, align 4
  %123 = srem i32 %122, 4
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = add nsw i32 365, %125
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %20, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %20, align 4
  br label %117

132:                                              ; preds = %117
  %133 = load i32, i32* @DAY, align 4
  %134 = load i32, i32* %19, align 4
  %135 = mul nsw i32 %134, %133
  store i32 %135, i32* %19, align 4
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %19, align 4
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* @HOUR, align 4
  %141 = mul nsw i32 %139, %140
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* @MINUTE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = add nsw i32 %141, %144
  %146 = load i32, i32* %15, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %19, align 4
  %149 = add nsw i32 %148, %147
  store i32 %149, i32* %19, align 4
  %150 = load i32, i32* %17, align 4
  %151 = load i32, i32* @DSTon, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %132
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @DSTmaybe, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = call %struct.TYPE_2__* @localtime(i32* %19)
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %166

162:                                              ; preds = %157, %132
  %163 = load i32, i32* @HOUR, align 4
  %164 = load i32, i32* %19, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %19, align 4
  br label %166

166:                                              ; preds = %162, %157, %153
  %167 = load i32, i32* %19, align 4
  store i32 %167, i32* %9, align 4
  br label %168

168:                                              ; preds = %166, %96
  %169 = load i32, i32* %9, align 4
  ret i32 %169
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_2__* @localtime(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
