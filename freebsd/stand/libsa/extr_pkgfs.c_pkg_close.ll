; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkg_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.tarfile = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.open_file*)* @pkg_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkg_close(%struct.open_file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.tarfile*, align 8
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  %5 = load %struct.open_file*, %struct.open_file** %3, align 8
  %6 = getelementptr inbounds %struct.open_file, %struct.open_file* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.tarfile*
  store %struct.tarfile* %8, %struct.tarfile** %4, align 8
  %9 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %10 = icmp eq %struct.tarfile* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

12:                                               ; preds = %1
  %13 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %14 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %17 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %12
  %21 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %22 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %27 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @free(i32 %28)
  %30 = load %struct.tarfile*, %struct.tarfile** %4, align 8
  %31 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %20, %12
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
