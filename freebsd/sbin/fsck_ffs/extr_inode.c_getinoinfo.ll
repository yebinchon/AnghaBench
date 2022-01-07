; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_getinoinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_inode.c_getinoinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inoinfo = type { i64, %struct.inoinfo* }

@inphead = common dso_local global %struct.inoinfo** null, align 8
@dirhash = common dso_local global i64 0, align 8
@EEXIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot find inode %ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inoinfo* @getinoinfo(i64 %0) #0 {
  %2 = alloca %struct.inoinfo*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.inoinfo*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.inoinfo**, %struct.inoinfo*** @inphead, align 8
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @dirhash, align 8
  %8 = urem i64 %6, %7
  %9 = getelementptr inbounds %struct.inoinfo*, %struct.inoinfo** %5, i64 %8
  %10 = load %struct.inoinfo*, %struct.inoinfo** %9, align 8
  store %struct.inoinfo* %10, %struct.inoinfo** %4, align 8
  br label %11

11:                                               ; preds = %23, %1
  %12 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %13 = icmp ne %struct.inoinfo* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %11
  %15 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %16 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %23

21:                                               ; preds = %14
  %22 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  store %struct.inoinfo* %22, %struct.inoinfo** %2, align 8
  br label %32

23:                                               ; preds = %20
  %24 = load %struct.inoinfo*, %struct.inoinfo** %4, align 8
  %25 = getelementptr inbounds %struct.inoinfo, %struct.inoinfo* %24, i32 0, i32 1
  %26 = load %struct.inoinfo*, %struct.inoinfo** %25, align 8
  store %struct.inoinfo* %26, %struct.inoinfo** %4, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i32, i32* @EEXIT, align 4
  %29 = load i64, i64* %3, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @errx(i32 %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %30)
  store %struct.inoinfo* null, %struct.inoinfo** %2, align 8
  br label %32

32:                                               ; preds = %27, %21
  %33 = load %struct.inoinfo*, %struct.inoinfo** %2, align 8
  ret %struct.inoinfo* %33
}

declare dso_local i32 @errx(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
