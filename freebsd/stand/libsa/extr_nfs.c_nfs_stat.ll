; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_nfs.c_nfs_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.open_file = type { i64 }
%struct.stat = type { i32, i8*, i8*, i8*, i8* }
%struct.nfs_iodesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@nfs_stat_types = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_stat(%struct.open_file* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.open_file*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.nfs_iodesc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.open_file* %0, %struct.open_file** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %8 = load %struct.open_file*, %struct.open_file** %3, align 8
  %9 = getelementptr inbounds %struct.open_file, %struct.open_file* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.nfs_iodesc*
  store %struct.nfs_iodesc* %11, %struct.nfs_iodesc** %5, align 8
  %12 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %13 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @ntohl(i32 %15)
  %17 = ptrtoint i8* %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %19 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @ntohl(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** @nfs_stat_types, align 8
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.stat*, %struct.stat** %4, align 8
  %34 = getelementptr inbounds %struct.stat, %struct.stat* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %36 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i8* @ntohl(i32 %38)
  %40 = load %struct.stat*, %struct.stat** %4, align 8
  %41 = getelementptr inbounds %struct.stat, %struct.stat* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %43 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.stat*, %struct.stat** %4, align 8
  %48 = getelementptr inbounds %struct.stat, %struct.stat* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %50 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @ntohl(i32 %52)
  %54 = load %struct.stat*, %struct.stat** %4, align 8
  %55 = getelementptr inbounds %struct.stat, %struct.stat* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.nfs_iodesc*, %struct.nfs_iodesc** %5, align 8
  %57 = getelementptr inbounds %struct.nfs_iodesc, %struct.nfs_iodesc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @ntohl(i32 %62)
  %64 = load %struct.stat*, %struct.stat** %4, align 8
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  ret i32 0
}

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
