; ModuleID = '/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlWordClassify.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/ficl/extr_words.c_ficlWordClassify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CODEtoKIND = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@ficlWordClassify.codeMap = internal global [15 x %struct.CODEtoKIND] [%struct.CODEtoKIND { i32 159, i64 142 }, %struct.CODEtoKIND { i32 158, i64 141 }, %struct.CODEtoKIND { i32 157, i64 140 }, %struct.CODEtoKIND { i32 156, i64 139 }, %struct.CODEtoKIND { i32 154, i64 136 }, %struct.CODEtoKIND { i32 153, i64 137 }, %struct.CODEtoKIND { i32 152, i64 143 }, %struct.CODEtoKIND { i32 151, i64 135 }, %struct.CODEtoKIND { i32 150, i64 134 }, %struct.CODEtoKIND { i32 149, i64 133 }, %struct.CODEtoKIND { i32 148, i64 132 }, %struct.CODEtoKIND { i32 147, i64 131 }, %struct.CODEtoKIND { i32 155, i64 138 }, %struct.CODEtoKIND { i32 146, i64 130 }, %struct.CODEtoKIND { i32 144, i64 128 }], align 16
@PRIMITIVE = common dso_local global i32 0, align 4
@nMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ficlWordClassify(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 15
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [15 x %struct.CODEtoKIND], [15 x %struct.CODEtoKIND]* @ficlWordClassify.codeMap, i64 0, i64 %15
  %17 = getelementptr inbounds %struct.CODEtoKIND, %struct.CODEtoKIND* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [15 x %struct.CODEtoKIND], [15 x %struct.CODEtoKIND]* @ficlWordClassify.codeMap, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.CODEtoKIND, %struct.CODEtoKIND* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 16
  store i32 %26, i32* %2, align 4
  br label %33

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load i32, i32* @PRIMITIVE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
