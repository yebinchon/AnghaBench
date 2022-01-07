; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libufs/extr_type.c_ufs_disk_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uufsd = type { i32, i8*, i32, i8*, i32* }

@MINE_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufs_disk_close(%struct.uufsd* %0) #0 {
  %2 = alloca %struct.uufsd*, align 8
  store %struct.uufsd* %0, %struct.uufsd** %2, align 8
  %3 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %4 = call i32 @ERROR(%struct.uufsd* %3, i32* null)
  %5 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %6 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @close(i32 %7)
  %9 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %10 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %9, i32 0, i32 0
  store i32 -1, i32* %10, align 8
  %11 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %12 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %17 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @free(i8* %18)
  %20 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %21 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %20, i32 0, i32 1
  store i8* null, i8** %21, align 8
  br label %22

22:                                               ; preds = %15, %1
  %23 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %24 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MINE_NAME, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %22
  %30 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %31 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = ptrtoint i32* %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @free(i8* %34)
  %36 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %37 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %36, i32 0, i32 4
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %29, %22
  %39 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %40 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %39, i32 0, i32 3
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %45 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %44, i32 0, i32 3
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @free(i8* %46)
  %48 = load %struct.uufsd*, %struct.uufsd** %2, align 8
  %49 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %48, i32 0, i32 3
  store i8* null, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %38
  ret i32 0
}

declare dso_local i32 @ERROR(%struct.uufsd*, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
