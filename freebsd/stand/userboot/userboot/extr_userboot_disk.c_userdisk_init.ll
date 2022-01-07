; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_userboot_disk.c_userdisk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64, i8*, i8* }

@userboot_disk_maxunit = common dso_local global i32 0, align 4
@userdisk_maxunit = common dso_local global i32 0, align 4
@ud_info = common dso_local global %struct.TYPE_3__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@diskioctl = common dso_local global i32 0, align 4
@DIOCGSECTORSIZE = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @userdisk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userdisk_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @userboot_disk_maxunit, align 4
  store i32 %5, i32* @userdisk_maxunit, align 4
  %6 = load i32, i32* @userdisk_maxunit, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %64

8:                                                ; preds = %0
  %9 = load i32, i32* @userdisk_maxunit, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 32, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.TYPE_3__* @malloc(i32 %12)
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** @ud_info, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ud_info, align 8
  %15 = icmp eq %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %8
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %1, align 4
  br label %67

18:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %60, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @userdisk_maxunit, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load i32, i32* @diskioctl, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DIOCGSECTORSIZE, align 4
  %27 = call i64 @CALLBACK(i32 %24, i32 %25, i32 %26, i8** %3)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @diskioctl, align 4
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %33 = call i64 @CALLBACK(i32 %30, i32 %31, i32 %32, i8** %2)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %1, align 4
  br label %67

37:                                               ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ud_info, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  store i8* %38, i8** %43, align 8
  %44 = load i8*, i8** %3, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ud_info, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i8* %44, i8** %49, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ud_info, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ud_info, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %37
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %19

63:                                               ; preds = %19
  br label %64

64:                                               ; preds = %63, %0
  %65 = load i32, i32* @userdisk_maxunit, align 4
  %66 = call i32 @bcache_add_dev(i32 %65)
  store i32 0, i32* %1, align 4
  br label %67

67:                                               ; preds = %64, %35, %16
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local %struct.TYPE_3__* @malloc(i32) #1

declare dso_local i64 @CALLBACK(i32, i32, i32, i8**) #1

declare dso_local i32 @bcache_add_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
