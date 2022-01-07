; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_devicename.c_i386_fmtdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_devicename.c_i386_fmtdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i386_devdesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@i386_fmtdev.buf = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"(no device)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @i386_fmtdev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.i386_devdesc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.i386_devdesc*
  store %struct.i386_devdesc* %6, %struct.i386_devdesc** %4, align 8
  %7 = load %struct.i386_devdesc*, %struct.i386_devdesc** %4, align 8
  %8 = getelementptr inbounds %struct.i386_devdesc, %struct.i386_devdesc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %33 [
    i32 129, label %13
    i32 132, label %15
    i32 130, label %15
    i32 131, label %27
    i32 128, label %30
  ]

13:                                               ; preds = %1
  %14 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @i386_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %33

15:                                               ; preds = %1, %1
  %16 = load %struct.i386_devdesc*, %struct.i386_devdesc** %4, align 8
  %17 = getelementptr inbounds %struct.i386_devdesc, %struct.i386_devdesc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.i386_devdesc*, %struct.i386_devdesc** %4, align 8
  %23 = getelementptr inbounds %struct.i386_devdesc, %struct.i386_devdesc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @i386_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %21, i32 %25)
  br label %33

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i8* @disk_fmtdev(i8* %28)
  store i8* %29, i8** %2, align 8
  br label %34

30:                                               ; preds = %1
  %31 = load i8*, i8** %3, align 8
  %32 = call i8* @zfs_fmtdev(i8* %31)
  store i8* %32, i8** %2, align 8
  br label %34

33:                                               ; preds = %1, %15, %13
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @i386_fmtdev.buf, i64 0, i64 0), i8** %2, align 8
  br label %34

34:                                               ; preds = %33, %30, %27
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @disk_fmtdev(i8*) #1

declare dso_local i8* @zfs_fmtdev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
