; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_glob_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_interactive.c_glob_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i64, i32, i64 }
%struct.direct = type { i64, i64, i32 }

@glob_readdir.adirent = internal global %struct.dirent zeroinitializer, align 8
@vflag = common dso_local global i32 0, align 4
@UFS_WINO = common dso_local global i64 0, align 8
@dflag = common dso_local global i64 0, align 8
@dumpmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dirent* @glob_readdir(i8* %0) #0 {
  %2 = alloca %struct.dirent*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.direct*, align 8
  store i8* %0, i8** %3, align 8
  br label %5

5:                                                ; preds = %30, %18, %1
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.direct* @rst_readdir(i8* %6)
  store %struct.direct* %7, %struct.direct** %4, align 8
  %8 = icmp ne %struct.direct* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %5
  %10 = load i32, i32* @vflag, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load %struct.direct*, %struct.direct** %4, align 8
  %14 = getelementptr inbounds %struct.direct, %struct.direct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UFS_WINO, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %5

19:                                               ; preds = %12, %9
  %20 = load i64, i64* @dflag, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %19
  %23 = load %struct.direct*, %struct.direct** %4, align 8
  %24 = getelementptr inbounds %struct.direct, %struct.direct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @dumpmap, align 4
  %27 = call i64 @TSTINO(i64 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22, %19
  br label %31

30:                                               ; preds = %22
  br label %5

31:                                               ; preds = %29, %5
  %32 = load %struct.direct*, %struct.direct** %4, align 8
  %33 = icmp eq %struct.direct* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.dirent* null, %struct.dirent** %2, align 8
  br label %51

35:                                               ; preds = %31
  %36 = load %struct.direct*, %struct.direct** %4, align 8
  %37 = getelementptr inbounds %struct.direct, %struct.direct* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.dirent, %struct.dirent* @glob_readdir.adirent, i32 0, i32 0), align 8
  %39 = load %struct.direct*, %struct.direct** %4, align 8
  %40 = getelementptr inbounds %struct.direct, %struct.direct* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* getelementptr inbounds (%struct.dirent, %struct.dirent* @glob_readdir.adirent, i32 0, i32 2), align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.dirent, %struct.dirent* @glob_readdir.adirent, i32 0, i32 1), align 8
  %43 = load %struct.direct*, %struct.direct** %4, align 8
  %44 = getelementptr inbounds %struct.direct, %struct.direct* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.direct*, %struct.direct** %4, align 8
  %47 = getelementptr inbounds %struct.direct, %struct.direct* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @memmove(i32 %42, i32 %45, i64 %49)
  store %struct.dirent* @glob_readdir.adirent, %struct.dirent** %2, align 8
  br label %51

51:                                               ; preds = %35, %34
  %52 = load %struct.dirent*, %struct.dirent** %2, align 8
  ret %struct.dirent* %52
}

declare dso_local %struct.direct* @rst_readdir(i8*) #1

declare dso_local i64 @TSTINO(i64, i32) #1

declare dso_local i32 @memmove(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
