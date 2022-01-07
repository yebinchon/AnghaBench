; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_update_ppr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_update_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"isrvec_stk is corrupted: %d\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"isrvec_stk does not satisfy invariant\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"ISR and isrvec_stk out of sync\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"vlapic_update_ppr 0x%02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_update_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_update_ppr(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %12 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %13 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %16 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %21 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %4, align 4
  %25 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %26 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %1
  %30 = load i32, i32* %3, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %32, %29, %1
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %62, %35
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %40 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ule i64 %38, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %45 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @PRIO(i32 %50)
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %43
  %57 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %58 = call i32 @dump_isrvec_stk(%struct.vlapic* %57)
  %59 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %60

60:                                               ; preds = %56, %43
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %36

65:                                               ; preds = %36
  store i32 1, i32* %6, align 4
  %66 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %67 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %66, i32 0, i32 2
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32* %69, i32** %11, align 8
  store i32 0, i32* %9, align 4
  br label %70

70:                                               ; preds = %112, %65
  %71 = load i32, i32* %9, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %115

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = sdiv i32 %74, 32
  %76 = mul nsw i32 %75, 4
  store i32 %76, i32* %10, align 4
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %9, align 4
  %83 = srem i32 %82, 32
  %84 = shl i32 1, %83
  %85 = and i32 %81, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %73
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %91 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ugt i64 %89, %92
  br i1 %93, label %104, label %94

94:                                               ; preds = %87
  %95 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %96 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %94, %87
  %105 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %106 = call i32 @dump_isrvec_stk(%struct.vlapic* %105)
  %107 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %108

108:                                              ; preds = %104, %94
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %108, %73
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %70

115:                                              ; preds = %70
  %116 = load i32, i32* %4, align 4
  %117 = call i64 @PRIO(i32 %116)
  %118 = load i32, i32* %3, align 4
  %119 = call i64 @PRIO(i32 %118)
  %120 = icmp sge i64 %117, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %5, align 4
  br label %126

123:                                              ; preds = %115
  %124 = load i32, i32* %3, align 4
  %125 = and i32 %124, 240
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %129 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %128, i32 0, i32 2
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 %127, i32* %131, align 4
  %132 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @VLAPIC_CTR1(%struct.vlapic* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %133)
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i64 @PRIO(i32) #1

declare dso_local i32 @dump_isrvec_stk(%struct.vlapic*) #1

declare dso_local i32 @VLAPIC_CTR1(%struct.vlapic*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
