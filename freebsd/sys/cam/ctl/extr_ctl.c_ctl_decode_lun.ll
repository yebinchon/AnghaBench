; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_decode_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_decode_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPL_LUNDATA_ATYP_MASK = common dso_local global i32 0, align 4
@RPL_LUNDATA_EXT_EAM_MASK = common dso_local global i32 0, align 4
@RPL_LUNDATA_EXT_LEN_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_decode_lun(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i32], align 16
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %4, align 4
  %5 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @be64enc(i32* %5, i32 %6)
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %9 = load i32, i32* %8, align 16
  %10 = load i32, i32* @RPL_LUNDATA_ATYP_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %133 [
    i32 129, label %12
    i32 130, label %45
    i32 131, label %78
  ]

12:                                               ; preds = %1
  %13 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %14 = load i32, i32* %13, align 16
  %15 = and i32 %14, 63
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %12
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %17
  %22 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %21
  %26 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %27 = load i32, i32* %26, align 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %25
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %37, %33, %29, %25, %21, %17, %12
  br label %133

45:                                               ; preds = %1
  %46 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %45
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %49
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %55 = load i32, i32* %54, align 16
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %53
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %57
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %63 = load i32, i32* %62, align 8
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %61
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = and i32 %71, 63
  %73 = shl i32 %72, 8
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %73, %75
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %69, %65, %61, %57, %53, %49, %45
  br label %133

78:                                               ; preds = %1
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %80 = load i32, i32* %79, align 16
  %81 = load i32, i32* @RPL_LUNDATA_EXT_EAM_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %132 [
    i32 2, label %83
    i32 128, label %131
  ]

83:                                               ; preds = %78
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 0
  %85 = load i32, i32* %84, align 16
  %86 = load i32, i32* @RPL_LUNDATA_EXT_LEN_MASK, align 4
  %87 = and i32 %85, %86
  switch i32 %87, label %130 [
    i32 0, label %88
    i32 16, label %91
    i32 32, label %102
  ]

88:                                               ; preds = %83
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %4, align 4
  br label %130

91:                                               ; preds = %83
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %96 = load i32, i32* %95, align 8
  %97 = shl i32 %96, 8
  %98 = add nsw i32 %94, %97
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %98, %100
  store i32 %101, i32* %4, align 4
  br label %130

102:                                              ; preds = %83
  %103 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 6
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %129

110:                                              ; preds = %106
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 7
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %129

114:                                              ; preds = %110
  %115 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = shl i32 %116, 24
  %118 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = shl i32 %119, 16
  %121 = add nsw i32 %117, %120
  %122 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 4
  %123 = load i32, i32* %122, align 16
  %124 = shl i32 %123, 8
  %125 = add nsw i32 %121, %124
  %126 = getelementptr inbounds [8 x i32], [8 x i32]* %3, i64 0, i64 5
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %125, %127
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %114, %110, %106, %102
  br label %130

130:                                              ; preds = %83, %129, %91, %88
  br label %132

131:                                              ; preds = %78
  store i32 -1, i32* %4, align 4
  br label %132

132:                                              ; preds = %78, %131, %130
  br label %133

133:                                              ; preds = %1, %132, %77, %44
  %134 = load i32, i32* %4, align 4
  ret i32 %134
}

declare dso_local i32 @be64enc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
