; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_mntinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/umount/extr_umount.c_mntinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32 }

@mntinfo.origbuf = internal global %struct.statfs* null, align 8
@MNT_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mntinfo(%struct.statfs** %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.statfs**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.statfs** %0, %struct.statfs*** %3, align 8
  %6 = load i32, i32* @MNT_NOWAIT, align 4
  %7 = call i32 @getfsstat(%struct.statfs* null, i64 0, i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %30

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.statfs* @malloc(i64 %16)
  store %struct.statfs* %17, %struct.statfs** @mntinfo.origbuf, align 8
  %18 = icmp eq %struct.statfs* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %11
  %22 = load %struct.statfs*, %struct.statfs** @mntinfo.origbuf, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i32, i32* @MNT_NOWAIT, align 4
  %25 = call i32 @getfsstat(%struct.statfs* %22, i64 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.statfs*, %struct.statfs** @mntinfo.origbuf, align 8
  %27 = load %struct.statfs**, %struct.statfs*** %3, align 8
  store %struct.statfs* %26, %struct.statfs** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %21, %10
  %31 = load i64, i64* %2, align 8
  ret i64 %31
}

declare dso_local i32 @getfsstat(%struct.statfs*, i64, i32) #1

declare dso_local %struct.statfs* @malloc(i64) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
