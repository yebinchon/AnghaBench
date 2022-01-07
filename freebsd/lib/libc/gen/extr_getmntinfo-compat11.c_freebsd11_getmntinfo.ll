; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getmntinfo-compat11.c_freebsd11_getmntinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_getmntinfo-compat11.c_freebsd11_getmntinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.freebsd11_statfs = type { i32 }

@freebsd11_getmntinfo.mntbuf = internal global %struct.freebsd11_statfs* null, align 8
@freebsd11_getmntinfo.mntsize = internal global i32 0, align 4
@freebsd11_getmntinfo.bufsize = internal global i64 0, align 8
@MNT_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @freebsd11_getmntinfo(%struct.freebsd11_statfs** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.freebsd11_statfs**, align 8
  %5 = alloca i32, align 4
  store %struct.freebsd11_statfs** %0, %struct.freebsd11_statfs*** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* @freebsd11_getmntinfo.mntsize, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @MNT_NOWAIT, align 4
  %10 = call i32 @freebsd11_getfsstat(%struct.freebsd11_statfs* null, i64 0, i32 %9)
  store i32 %10, i32* @freebsd11_getmntinfo.mntsize, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %8, %2
  %14 = load i64, i64* @freebsd11_getmntinfo.bufsize, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %18 = load i64, i64* @freebsd11_getmntinfo.bufsize, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @freebsd11_getfsstat(%struct.freebsd11_statfs* %17, i64 %18, i32 %19)
  store i32 %20, i32* @freebsd11_getmntinfo.mntsize, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %58

23:                                               ; preds = %16, %13
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i64, i64* @freebsd11_getmntinfo.bufsize, align 8
  %26 = load i32, i32* @freebsd11_getmntinfo.mntsize, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = icmp ule i64 %25, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %24
  %31 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %32 = icmp ne %struct.freebsd11_statfs* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %35 = call i32 @free(%struct.freebsd11_statfs* %34)
  br label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @freebsd11_getmntinfo.mntsize, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 4
  store i64 %40, i64* @freebsd11_getmntinfo.bufsize, align 8
  %41 = load i64, i64* @freebsd11_getmntinfo.bufsize, align 8
  %42 = call i64 @malloc(i64 %41)
  %43 = inttoptr i64 %42 to %struct.freebsd11_statfs*
  store %struct.freebsd11_statfs* %43, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %44 = icmp eq %struct.freebsd11_statfs* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %58

46:                                               ; preds = %36
  %47 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %48 = load i64, i64* @freebsd11_getmntinfo.bufsize, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @freebsd11_getfsstat(%struct.freebsd11_statfs* %47, i64 %48, i32 %49)
  store i32 %50, i32* @freebsd11_getmntinfo.mntsize, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %46
  br label %24

54:                                               ; preds = %24
  %55 = load %struct.freebsd11_statfs*, %struct.freebsd11_statfs** @freebsd11_getmntinfo.mntbuf, align 8
  %56 = load %struct.freebsd11_statfs**, %struct.freebsd11_statfs*** %4, align 8
  store %struct.freebsd11_statfs* %55, %struct.freebsd11_statfs** %56, align 8
  %57 = load i32, i32* @freebsd11_getmntinfo.mntsize, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %52, %45, %22, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @freebsd11_getfsstat(%struct.freebsd11_statfs*, i64, i32) #1

declare dso_local i32 @free(%struct.freebsd11_statfs*) #1

declare dso_local i64 @malloc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
