; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_getdisklabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/newfs/extr_newfs.c_getdisklabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disklabel = type { i32 }
%struct.TYPE_2__ = type { i32 }

@getdisklabel.lab = internal global %struct.disklabel zeroinitializer, align 4
@is_file = common dso_local global i64 0, align 8
@disk = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@bootarea = common dso_local global i64 0, align 8
@BBSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"cannot read bootarea\00", align 1
@sectorsize = common dso_local global i32 0, align 4
@MAXPARTITIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"no valid label found\00", align 1
@disktype = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.disklabel* @getdisklabel() #0 {
  %1 = alloca %struct.disklabel*, align 8
  %2 = alloca %struct.disklabel*, align 8
  %3 = load i64, i64* @is_file, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %27

5:                                                ; preds = %0
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @disk, i32 0, i32 0), align 4
  %7 = load i64, i64* @bootarea, align 8
  %8 = load i64, i64* @BBSIZE, align 8
  %9 = call i64 @read(i32 %6, i64 %7, i64 %8)
  %10 = load i64, i64* @BBSIZE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = call i32 @err(i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %5
  %15 = load i64, i64* @bootarea, align 8
  %16 = load i32, i32* @sectorsize, align 4
  %17 = mul nsw i32 1, %16
  %18 = add nsw i32 0, %17
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = load i32, i32* @MAXPARTITIONS, align 4
  %22 = call i64 @bsd_disklabel_le_dec(i64 %20, %struct.disklabel* @getdisklabel.lab, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %14
  store %struct.disklabel* @getdisklabel.lab, %struct.disklabel** %2, align 8
  store %struct.disklabel* @getdisklabel.lab, %struct.disklabel** %1, align 8
  br label %39

27:                                               ; preds = %0
  %28 = load i64, i64* @disktype, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i64, i64* @disktype, align 8
  %32 = call %struct.disklabel* @getdiskbyname(i64 %31)
  store %struct.disklabel* %32, %struct.disklabel** %2, align 8
  %33 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  %34 = icmp ne %struct.disklabel* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load %struct.disklabel*, %struct.disklabel** %2, align 8
  store %struct.disklabel* %36, %struct.disklabel** %1, align 8
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  store %struct.disklabel* null, %struct.disklabel** %1, align 8
  br label %39

39:                                               ; preds = %38, %35, %26
  %40 = load %struct.disklabel*, %struct.disklabel** %1, align 8
  ret %struct.disklabel* %40
}

declare dso_local i64 @read(i32, i64, i64) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i64 @bsd_disklabel_le_dec(i64, %struct.disklabel*, i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local %struct.disklabel* @getdiskbyname(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
