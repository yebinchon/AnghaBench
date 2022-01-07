; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.nfs_iodesc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_seek(%struct.open_file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.open_file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfs_iodesc*, align 8
  %9 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.open_file*, %struct.open_file** %5, align 8
  %11 = getelementptr inbounds %struct.open_file, %struct.open_file* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.nfs_iodesc*
  store %struct.nfs_iodesc* %13, %struct.nfs_iodesc** %8, align 8
  %14 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %8, align 8
  %15 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ntohl(i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %39 [
    i32 128, label %23
    i32 130, label %27
    i32 129, label %33
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %8, align 8
  %26 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %41

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %8, align 8
  %30 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %34, %35
  %37 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %8, align 8
  %38 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %41

39:                                               ; preds = %3
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %45

41:                                               ; preds = %33, %27, %23
  %42 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %8, align 8
  %43 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %41, %39
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
