; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_unlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/mandoc/extr_tag.c_tag_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i8*, i8*, i32 }

@tag_files = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tag_unlink() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %3 = icmp ne i32 %2, -1
  br i1 %3, label %4, label %24

4:                                                ; preds = %0
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 4), align 8
  %6 = call i64 @tcgetpgrp(i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 1), align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = load i64, i64* %1, align 8
  %12 = call i32 @getpgid(i64 0)
  %13 = sext i32 %12 to i64
  %14 = icmp eq i64 %11, %13
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %1, align 8
  %17 = call i32 @getpgid(i64 %16)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15, %10, %4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 4), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 0), align 8
  %22 = call i32 @tcsetpgrp(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %15
  br label %24

24:                                               ; preds = %23, %0
  %25 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 2), align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 2), align 8
  %31 = call i32 @unlink(i8* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tag_files, i32 0, i32 3), align 8
  %39 = call i32 @unlink(i8* %38)
  br label %40

40:                                               ; preds = %37, %32
  ret void
}

declare dso_local i64 @tcgetpgrp(i32) #1

declare dso_local i32 @getpgid(i64) #1

declare dso_local i32 @tcsetpgrp(i32, i32) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
