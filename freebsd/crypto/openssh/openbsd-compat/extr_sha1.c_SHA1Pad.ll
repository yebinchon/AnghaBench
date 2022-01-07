; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha1.c_SHA1Pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/openbsd-compat/extr_sha1.c_SHA1Pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\80\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SHA1Pad(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca [8 x i64], align 16
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %25

8:                                                ; preds = %5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 7
  %14 = sub nsw i32 7, %13
  %15 = mul nsw i32 %14, 8
  %16 = ashr i32 %11, %15
  %17 = and i32 %16, 255
  %18 = sext i32 %17 to i64
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 %20
  store i64 %18, i64* %21, align 8
  br label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = call i32 @SHA1Update(%struct.TYPE_4__* %26, i64* bitcast ([2 x i8]* @.str to i64*), i32 1)
  br label %28

28:                                               ; preds = %34, %25
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 504
  %33 = icmp ne i32 %32, 448
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = call i32 @SHA1Update(%struct.TYPE_4__* %35, i64* bitcast ([2 x i8]* @.str.1 to i64*), i32 1)
  br label %28

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds [8 x i64], [8 x i64]* %3, i64 0, i64 0
  %40 = call i32 @SHA1Update(%struct.TYPE_4__* %38, i64* %39, i32 8)
  ret void
}

declare dso_local i32 @SHA1Update(%struct.TYPE_4__*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
