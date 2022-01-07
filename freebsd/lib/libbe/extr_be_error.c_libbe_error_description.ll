; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_error.c_libbe_error_description.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libbe/extr_be_error.c_libbe_error_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"invalid boot environment name\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"boot environment name already taken\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"specified boot environment does not exist\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"insufficient permissions\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"cannot destroy active boot environment\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"cannot destroy mounted boot env unless forced\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"path not suitable for operation\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"specified path is busy\00", align 1
@.str.8 = private unnamed_addr constant [48 x i8] c"provided path name exceeds maximum length limit\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"mountpoint is not \22/\22\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"could not open snapshot's origin\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"boot environment is already mounted\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"boot environment is not mounted\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"calling zfs_open() failed\00", align 1
@.str.14 = private unnamed_addr constant [50 x i8] c"error when calling zfs_clone() to create boot env\00", align 1
@.str.15 = private unnamed_addr constant [19 x i8] c"input/output error\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"operation not supported on this pool\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"insufficient memory\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"unknown error\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"invalid origin\00", align 1
@BE_ERR_SUCCESS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [9 x i8] c"no error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @libbe_error_description(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %27 [
    i32 142, label %7
    i32 143, label %8
    i32 138, label %9
    i32 131, label %10
    i32 145, label %11
    i32 144, label %12
    i32 146, label %13
    i32 133, label %14
    i32 132, label %15
    i32 147, label %16
    i32 135, label %17
    i32 139, label %18
    i32 136, label %19
    i32 128, label %20
    i32 129, label %21
    i32 140, label %22
    i32 134, label %23
    i32 137, label %24
    i32 130, label %25
    i32 141, label %26
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %35

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %35

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %35

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %35

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %35

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %35

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %35

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %35

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %35

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %35

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %35

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %35

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %35

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %35

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %35

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %35

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %35

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %35

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %35

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %35

27:                                               ; preds = %1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BE_ERR_SUCCESS, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %35

35:                                               ; preds = %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %36 = load i8*, i8** %2, align 8
  ret i8* %36
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
