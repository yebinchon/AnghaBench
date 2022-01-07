; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkgfs_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_pkgfs.c_pkgfs_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tarfile = type { i64, %struct.tarfile*, %struct.tarfile*, %struct.tarfile*, %struct.tarfile*, i32, i32 }
%struct.package = type { i64, %struct.package*, %struct.package*, %struct.package*, %struct.package*, i32, i32 }

@package = common dso_local global %struct.tarfile* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkgfs_cleanup() #0 {
  %1 = alloca %struct.package*, align 8
  %2 = alloca %struct.tarfile*, align 8
  %3 = alloca %struct.tarfile*, align 8
  br label %4

4:                                                ; preds = %38, %0
  %5 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %6 = icmp ne %struct.tarfile* %5, null
  br i1 %6, label %7, label %47

7:                                                ; preds = %4
  %8 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %9 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %8, i32 0, i32 6
  %10 = call i32 @inflateEnd(i32* %9)
  %11 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %12 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @close(i32 %13)
  %15 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %16 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %15, i32 0, i32 4
  %17 = load %struct.tarfile*, %struct.tarfile** %16, align 8
  store %struct.tarfile* %17, %struct.tarfile** %2, align 8
  br label %18

18:                                               ; preds = %34, %7
  %19 = load %struct.tarfile*, %struct.tarfile** %2, align 8
  %20 = icmp ne %struct.tarfile* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.tarfile*, %struct.tarfile** %2, align 8
  %23 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %22, i32 0, i32 3
  %24 = load %struct.tarfile*, %struct.tarfile** %23, align 8
  store %struct.tarfile* %24, %struct.tarfile** %3, align 8
  %25 = load %struct.tarfile*, %struct.tarfile** %2, align 8
  %26 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.tarfile*, %struct.tarfile** %2, align 8
  %31 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %30, i32 0, i32 2
  %32 = load %struct.tarfile*, %struct.tarfile** %31, align 8
  %33 = call i32 @free(%struct.tarfile* %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load %struct.tarfile*, %struct.tarfile** %2, align 8
  %36 = call i32 @free(%struct.tarfile* %35)
  %37 = load %struct.tarfile*, %struct.tarfile** %3, align 8
  store %struct.tarfile* %37, %struct.tarfile** %2, align 8
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %40 = getelementptr inbounds %struct.tarfile, %struct.tarfile* %39, i32 0, i32 1
  %41 = load %struct.tarfile*, %struct.tarfile** %40, align 8
  %42 = bitcast %struct.tarfile* %41 to %struct.package*
  store %struct.package* %42, %struct.package** %1, align 8
  %43 = load %struct.tarfile*, %struct.tarfile** @package, align 8
  %44 = call i32 @free(%struct.tarfile* %43)
  %45 = load %struct.package*, %struct.package** %1, align 8
  %46 = bitcast %struct.package* %45 to %struct.tarfile*
  store %struct.tarfile* %46, %struct.tarfile** @package, align 8
  br label %4

47:                                               ; preds = %4
  ret void
}

declare dso_local i32 @inflateEnd(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.tarfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
