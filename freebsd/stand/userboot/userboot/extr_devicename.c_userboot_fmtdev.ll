; ModuleID = '/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_devicename.c_userboot_fmtdev.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/userboot/userboot/extr_devicename.c_userboot_fmtdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devdesc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@userboot_fmtdev.buf = internal global [128 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [12 x i8] c"(no device)\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s%d:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @userboot_fmtdev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.devdesc*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.devdesc*
  store %struct.devdesc* %6, %struct.devdesc** %4, align 8
  %7 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %8 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %47 [
    i32 129, label %12
    i32 132, label %14
    i32 131, label %24
    i32 130, label %27
    i32 128, label %37
  ]

12:                                               ; preds = %1
  %13 = call i32 @strcpy(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @userboot_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %16 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %21 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @userboot_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %22)
  br label %47

24:                                               ; preds = %1
  %25 = load i8*, i8** %3, align 8
  %26 = call i8* @disk_fmtdev(i8* %25)
  store i8* %26, i8** %2, align 8
  br label %48

27:                                               ; preds = %1
  %28 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %29 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %34 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @userboot_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %32, i32 %35)
  br label %47

37:                                               ; preds = %1
  %38 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %39 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.devdesc*, %struct.devdesc** %4, align 8
  %44 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @sprintf(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @userboot_fmtdev.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %45)
  br label %47

47:                                               ; preds = %1, %37, %27, %14, %12
  store i8* getelementptr inbounds ([128 x i8], [128 x i8]* @userboot_fmtdev.buf, i64 0, i64 0), i8** %2, align 8
  br label %48

48:                                               ; preds = %47, %24
  %49 = load i8*, i8** %2, align 8
  ret i8* %49
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i8* @disk_fmtdev(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
