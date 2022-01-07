; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_fd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_fd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32, i64, i32, i32 }

@BIOSDISK_SECSIZE = common dso_local global i32 0, align 4
@BD_FLOPPY = common dso_local global i32 0, align 4
@BD_NO_MEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BIOS drive %c: is %s%d\0A\00", align 1
@biosfd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@fdinfo = common dso_local global i32 0, align 4
@bd_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = call i32 (...) @fd_count()
  store i32 %4, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %5

5:                                                ; preds = %50, %0
  %6 = load i32, i32* %1, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  %10 = call %struct.TYPE_7__* @calloc(i32 1, i32 24)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %3, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %53

13:                                               ; preds = %9
  %14 = load i32, i32* @BIOSDISK_SECSIZE, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @BD_FLOPPY, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %1, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i64 @bd_get_diskinfo_std(%struct.TYPE_7__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %13
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = call i32 @free(%struct.TYPE_7__* %27)
  br label %53

29:                                               ; preds = %13
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @BD_NO_MEDIA, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %29
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 65, %41
  %43 = trunc i32 %42 to i8
  %44 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @biosfd, i32 0, i32 0), align 8
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %43, i8* %44, i32 %45)
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %48 = load i32, i32* @bd_link, align 4
  %49 = call i32 @STAILQ_INSERT_TAIL(i32* @fdinfo, %struct.TYPE_7__* %47, i32 %48)
  br label %50

50:                                               ; preds = %40
  %51 = load i32, i32* %1, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %1, align 4
  br label %5

53:                                               ; preds = %26, %12, %5
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @bcache_add_dev(i32 %54)
  ret i32 0
}

declare dso_local i32 @fd_count(...) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i64 @bd_get_diskinfo_std(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @printf(i8*, i8 signext, i8*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @bcache_add_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
