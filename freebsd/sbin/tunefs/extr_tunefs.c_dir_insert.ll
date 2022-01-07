; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/tunefs/extr_tunefs.c_dir_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.direct = type { i32, i32, i32, i64, i32 }

@MAXBSIZE = common dso_local global i32 0, align 4
@disk = common dso_local global i32 0, align 4
@sblock = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [25 x i8] c"Failed to read dir block\00", align 1
@DIRBLKSIZ = common dso_local global i64 0, align 8
@DT_REG = common dso_local global i32 0, align 4
@SUJ_FILE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to write dir block\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32)* @dir_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dir_insert(i32 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.direct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @MAXBSIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @fsbtodb(%struct.TYPE_3__* @sblock, i32 %16)
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %19 = call i64 @bread(i32* @disk, i32 %17, i8* %15, i64 %18)
  %20 = icmp sle i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = call i32 @warn(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i8, i8* %15, i64 %24
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub i64 %26, %27
  %29 = call i32 @bzero(i8* %25, i64 %28)
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds i8, i8* %15, i64 %30
  %32 = bitcast i8* %31 to %struct.direct*
  store %struct.direct* %32, %struct.direct** %8, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.direct*, %struct.direct** %8, align 8
  %35 = getelementptr inbounds %struct.direct, %struct.direct* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 8
  %36 = load i64, i64* @DIRBLKSIZ, align 8
  %37 = load %struct.direct*, %struct.direct** %8, align 8
  %38 = getelementptr inbounds %struct.direct, %struct.direct* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  %39 = load i32, i32* @DT_REG, align 4
  %40 = load %struct.direct*, %struct.direct** %8, align 8
  %41 = getelementptr inbounds %struct.direct, %struct.direct* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @SUJ_FILE, align 4
  %43 = call i32 @strlen(i32 %42)
  %44 = load %struct.direct*, %struct.direct** %8, align 8
  %45 = getelementptr inbounds %struct.direct, %struct.direct* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @SUJ_FILE, align 4
  %47 = load %struct.direct*, %struct.direct** %8, align 8
  %48 = getelementptr inbounds %struct.direct, %struct.direct* %47, i32 0, i32 0
  %49 = load i32, i32* @SUJ_FILE, align 4
  %50 = call i32 @strlen(i32 %49)
  %51 = call i32 @bcopy(i32 %46, i32* %48, i32 %50)
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @DIRBLKSIZ, align 8
  %54 = add i64 %52, %53
  %55 = call i32 @dir_clear_block(i8* %15, i64 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @fsbtodb(%struct.TYPE_3__* @sblock, i32 %56)
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @sblock, i32 0, i32 0), align 8
  %59 = call i64 @bwrite(i32* @disk, i32 %57, i8* %15, i64 %58)
  %60 = icmp sle i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %23
  %62 = call i32 @warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %64

63:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %64

64:                                               ; preds = %63, %61, %21
  %65 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @bread(i32*, i32, i8*, i64) #2

declare dso_local i32 @fsbtodb(%struct.TYPE_3__*, i32) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i32 @bzero(i8*, i64) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @dir_clear_block(i8*, i64) #2

declare dso_local i64 @bwrite(i32*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
