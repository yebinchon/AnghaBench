; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_be_lun = type { i32, i32, %struct.ctl_be_ramdisk_lun* }
%struct.ctl_be_ramdisk_lun = type { i64 }

@GP_ANCHOR = common dso_local global i32 0, align 4
@GP_OTHER = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@P_UNMAPPED = common dso_local global i32* null, align 8
@P_ANCHORED = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_be_lun*, i32, i32, i32)* @ctl_backend_ramdisk_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ctl_backend_ramdisk_delete(%struct.ctl_be_lun* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ctl_be_lun*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ctl_be_lun* %0, %struct.ctl_be_lun** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %16 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %15, i32 0, i32 2
  %17 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %16, align 8
  store %struct.ctl_be_ramdisk_lun* %17, %struct.ctl_be_ramdisk_lun** %9, align 8
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @GP_ANCHOR, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @GP_OTHER, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %28 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = ashr i32 %26, %29
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @UINT_MAX, align 4
  %33 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %34 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %32, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %78

41:                                               ; preds = %24
  %42 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun* %42, i32 %43, i32 %44)
  store i32* %45, i32** %10, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** @P_UNMAPPED, align 8
  %48 = icmp ne i32* %46, %47
  br i1 %48, label %49, label %75

49:                                               ; preds = %41
  %50 = load i32*, i32** %10, align 8
  %51 = load i32*, i32** @P_ANCHORED, align 8
  %52 = icmp ne i32* %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %57 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %55, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %54, i64 %60
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  %64 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = sub nsw i64 %65, %67
  %69 = call i32 @min(i32 %62, i64 %68)
  %70 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %71 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = call i32 @memset(i32* %61, i32 0, i32 %73)
  br label %75

75:                                               ; preds = %53, %49, %41
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %75, %24
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %83 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = ashr i32 %81, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = load i32, i32* @UINT_MAX, align 4
  %90 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %91 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 %89, %92
  %94 = xor i32 %93, -1
  %95 = and i32 %88, %94
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp sle i32 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %78
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  %104 = load i32, i32* %12, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun* %103, i32 %104, i32 %105)
  store i32* %106, i32** %10, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32*, i32** @P_UNMAPPED, align 8
  %109 = icmp ne i32* %107, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %102
  %111 = load i32*, i32** %10, align 8
  %112 = load i32*, i32** @P_ANCHORED, align 8
  %113 = icmp ne i32* %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %5, align 8
  %118 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = call i32 @memset(i32* %115, i32 0, i32 %120)
  br label %122

122:                                              ; preds = %114, %110, %102
  br label %123

123:                                              ; preds = %122, %99, %78
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %135, %126
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %127
  %132 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @ctl_backend_ramdisk_anchorpage(%struct.ctl_be_ramdisk_lun* %132, i32 %133)
  br label %135

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %127

138:                                              ; preds = %127
  br label %152

139:                                              ; preds = %123
  br label %140

140:                                              ; preds = %148, %139
  %141 = load i32, i32* %11, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %9, align 8
  %146 = load i32, i32* %11, align 4
  %147 = call i32 @ctl_backend_ramdisk_unmappage(%struct.ctl_be_ramdisk_lun* %145, i32 %146)
  br label %148

148:                                              ; preds = %144
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %11, align 4
  br label %140

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %138
  ret void
}

declare dso_local i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun*, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @ctl_backend_ramdisk_anchorpage(%struct.ctl_be_ramdisk_lun*, i32) #1

declare dso_local i32 @ctl_backend_ramdisk_unmappage(%struct.ctl_be_ramdisk_lun*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
