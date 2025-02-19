; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_devopen.c_devopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_devopen.c_devopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i8**, i8*, i8**)* }
%struct.open_file = type { %struct.TYPE_3__*, %struct.devdesc* }
%struct.TYPE_3__ = type { i32 (%struct.open_file*, %struct.devdesc*)*, i64 }
%struct.devdesc = type { %struct.TYPE_3__* }

@archsw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@DEVT_DISK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devopen(%struct.open_file* %0, i8* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.devdesc*, align 8
  %9 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load i32 (i8**, i8*, i8**)*, i32 (i8**, i8*, i8**)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @archsw, i32 0, i32 0), align 8
  %11 = bitcast %struct.devdesc** %8 to i8**
  %12 = load i8*, i8** %6, align 8
  %13 = load i8**, i8*** %7, align 8
  %14 = call i32 %10(i8** %11, i8* %12, i8** %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %4, align 4
  br label %45

19:                                               ; preds = %3
  %20 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %21 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.open_file*, %struct.open_file** %5, align 8
  %24 = getelementptr inbounds %struct.open_file, %struct.open_file* %23, i32 0, i32 0
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %24, align 8
  %25 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %26 = load %struct.open_file*, %struct.open_file** %5, align 8
  %27 = getelementptr inbounds %struct.open_file, %struct.open_file* %26, i32 0, i32 1
  store %struct.devdesc* %25, %struct.devdesc** %27, align 8
  %28 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %29 = getelementptr inbounds %struct.devdesc, %struct.devdesc* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.open_file*, %struct.devdesc*)*, i32 (%struct.open_file*, %struct.devdesc*)** %31, align 8
  %33 = load %struct.open_file*, %struct.open_file** %5, align 8
  %34 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %35 = call i32 %32(%struct.open_file* %33, %struct.devdesc* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.open_file*, %struct.open_file** %5, align 8
  %40 = getelementptr inbounds %struct.open_file, %struct.open_file* %39, i32 0, i32 1
  store %struct.devdesc* null, %struct.devdesc** %40, align 8
  %41 = load %struct.devdesc*, %struct.devdesc** %8, align 8
  %42 = call i32 @free(%struct.devdesc* %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %38, %17
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @free(%struct.devdesc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
