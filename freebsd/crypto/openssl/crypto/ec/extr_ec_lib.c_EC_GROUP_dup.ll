; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_dup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_lib.c_EC_GROUP_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @EC_GROUP_dup(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp eq %struct.TYPE_8__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %31

9:                                                ; preds = %1
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_8__* @EC_GROUP_new(i32 %12)
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  %14 = icmp eq %struct.TYPE_8__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %31

16:                                               ; preds = %9
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = call i32 @EC_GROUP_copy(%struct.TYPE_8__* %17, %struct.TYPE_8__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %23

22:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i32 @EC_GROUP_free(%struct.TYPE_8__* %27)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %31

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %2, align 8
  br label %31

31:                                               ; preds = %29, %26, %15, %8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %32
}

declare dso_local %struct.TYPE_8__* @EC_GROUP_new(i32) #1

declare dso_local i32 @EC_GROUP_copy(%struct.TYPE_8__*, %struct.TYPE_8__*) #1

declare dso_local i32 @EC_GROUP_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
