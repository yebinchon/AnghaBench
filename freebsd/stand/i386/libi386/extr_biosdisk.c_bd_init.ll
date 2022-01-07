; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_biosdisk.c_bd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i32 }

@BIOS_NUMDRIVES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BIOS drive %c: is %s%d\0A\00", align 1
@bioshd = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@hdinfo = common dso_local global i32 0, align 4
@bd_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @bd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bd_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  store i32 128, i32* %1, align 4
  store i32 0, i32* %2, align 4
  br label %4

4:                                                ; preds = %38, %0
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @BIOS_NUMDRIVES, align 4
  %7 = call i64 @PTOV(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp slt i32 %5, %10
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = call %struct.TYPE_7__* @calloc(i32 1, i32 4)
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %3, align 8
  %14 = icmp eq %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %41

16:                                               ; preds = %12
  %17 = load i32, i32* %1, align 4
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %17, %18
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = call i32 @bd_int13probe(%struct.TYPE_7__* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %16
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %27 = call i32 @free(%struct.TYPE_7__* %26)
  br label %41

28:                                               ; preds = %16
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 67, %29
  %31 = trunc i32 %30 to i8
  %32 = load i8*, i8** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @bioshd, i32 0, i32 0), align 8
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8 signext %31, i8* %32, i32 %33)
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %36 = load i32, i32* @bd_link, align 4
  %37 = call i32 @STAILQ_INSERT_TAIL(i32* @hdinfo, %struct.TYPE_7__* %35, i32 %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %4

41:                                               ; preds = %25, %15, %4
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @bcache_add_dev(i32 %42)
  ret i32 0
}

declare dso_local i64 @PTOV(i32) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @bd_int13probe(%struct.TYPE_7__*) #1

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
