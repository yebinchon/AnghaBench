; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_getfsquota.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rpc.rquotad/extr_rquotad.c_getfsquota.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dqblk = type { i32 }
%struct.quotafile = type { i32 }
%struct.fstab = type { i8*, i8*, i8* }

@getfsquota.blank = internal global [1 x i8] zeroinitializer, align 1
@USRQUOTA = common dso_local global i32 0, align 4
@GRPQUOTA = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"quota_open(<%s, %s>, %d) returned %p\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"getfsquota(%d, %ld, %s, %p) -> %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i8*, %struct.dqblk*)* @getfsquota to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getfsquota(i32 %0, i64 %1, i8* %2, %struct.dqblk* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.dqblk*, align 8
  %10 = alloca %struct.quotafile*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fstab, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.dqblk* %3, %struct.dqblk** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = getelementptr inbounds %struct.fstab, %struct.fstab* %12, i32 0, i32 0
  store i8* %13, i8** %14, align 8
  %15 = getelementptr inbounds %struct.fstab, %struct.fstab* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @getfsquota.blank, i64 0, i64 0), i8** %15, align 8
  %16 = getelementptr inbounds %struct.fstab, %struct.fstab* %12, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @getfsquota.blank, i64 0, i64 0), i8** %16, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @USRQUOTA, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @GRPQUOTA, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %63

25:                                               ; preds = %20, %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @O_RDONLY, align 4
  %28 = call %struct.quotafile* @quota_open(%struct.fstab* %12, i32 %26, i32 %27)
  store %struct.quotafile* %28, %struct.quotafile** %10, align 8
  %29 = load i64, i64* @debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.fstab, %struct.fstab* %12, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds %struct.fstab, %struct.fstab* %12, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %38 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %33, i8* %35, i32 %36, %struct.quotafile* %37)
  br label %39

39:                                               ; preds = %31, %25
  %40 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %41 = icmp eq %struct.quotafile* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %63

43:                                               ; preds = %39
  %44 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %45 = load %struct.dqblk*, %struct.dqblk** %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i64 @quota_read(%struct.quotafile* %44, %struct.dqblk* %45, i64 %46)
  %48 = icmp eq i64 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %11, align 4
  %50 = load %struct.quotafile*, %struct.quotafile** %10, align 8
  %51 = call i32 @quota_close(%struct.quotafile* %50)
  %52 = load i64, i64* @debug, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load i32, i32* %6, align 4
  %56 = load i64, i64* %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load %struct.dqblk*, %struct.dqblk** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %55, i64 %56, i8* %57, %struct.dqblk* %58, i32 %59)
  br label %61

61:                                               ; preds = %54, %43
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %42, %24
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.quotafile* @quota_open(%struct.fstab*, i32, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i64 @quota_read(%struct.quotafile*, %struct.dqblk*, i64) #1

declare dso_local i32 @quota_close(%struct.quotafile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
