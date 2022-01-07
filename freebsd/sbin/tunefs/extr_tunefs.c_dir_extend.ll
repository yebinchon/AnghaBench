; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_extend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_extend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to read dir block\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to write dir block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @dir_extend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_extend(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @MAXBSIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @fsbtodb(%struct.TYPE_3__* @sblock, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 1), align 4
  %21 = call i32 @roundup(i32 %19, i32 %20)
  %22 = call i64 @bread(i32* @disk, i32 %18, i8* %16, i32 %21)
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %41

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dir_clear_block(i8* %16, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @fsbtodb(%struct.TYPE_3__* @sblock, i32 %29)
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 4
  %32 = call i64 @bwrite(i32* @disk, i32 %30, i8* %16, i32 %31)
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %41

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @dir_insert(i32 %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %12, align 4
  br label %41

41:                                               ; preds = %36, %34, %24
  %42 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bread(i32*, i32, i8*, i32) #2

declare dso_local i32 @fsbtodb(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @roundup(i32, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @dir_clear_block(i8*, i32) #2

declare dso_local i64 @bwrite(i32*, i32, i8*, i32) #2

declare dso_local i32 @dir_insert(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
