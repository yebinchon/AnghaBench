; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_mkentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_dir.c_mkentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i64, i32, %struct.direct* }
%struct.direct = type { i64, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@KEEPON = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inodesc*)* @mkentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkentry(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  %5 = alloca %struct.direct, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %8 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %9 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %8, i32 0, i32 2
  %10 = load %struct.direct*, %struct.direct** %9, align 8
  store %struct.direct* %10, %struct.direct** %4, align 8
  %11 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %12 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @strlen(i32 %13)
  %15 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 2
  store i64 %14, i64* %15, align 8
  %16 = call i32 @DIRSIZ(i32 0, %struct.direct* %5)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.direct*, %struct.direct** %4, align 8
  %18 = getelementptr inbounds %struct.direct, %struct.direct* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.direct*, %struct.direct** %4, align 8
  %23 = call i32 @DIRSIZ(i32 0, %struct.direct* %22)
  store i32 %23, i32* %7, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load %struct.direct*, %struct.direct** %4, align 8
  %27 = getelementptr inbounds %struct.direct, %struct.direct* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @KEEPON, align 4
  store i32 %34, i32* %2, align 4
  br label %85

35:                                               ; preds = %25
  %36 = load %struct.direct*, %struct.direct** %4, align 8
  %37 = getelementptr inbounds %struct.direct, %struct.direct* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 1
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.direct*, %struct.direct** %4, align 8
  %44 = getelementptr inbounds %struct.direct, %struct.direct* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.direct*, %struct.direct** %4, align 8
  %46 = bitcast %struct.direct* %45 to i8*
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = bitcast i8* %49 to %struct.direct*
  store %struct.direct* %50, %struct.direct** %4, align 8
  %51 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %52 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.direct*, %struct.direct** %4, align 8
  %55 = getelementptr inbounds %struct.direct, %struct.direct* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.direct*, %struct.direct** %4, align 8
  %59 = getelementptr inbounds %struct.direct, %struct.direct* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %61 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_2__* @inoinfo(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.direct*, %struct.direct** %4, align 8
  %67 = getelementptr inbounds %struct.direct, %struct.direct* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.direct*, %struct.direct** %4, align 8
  %71 = getelementptr inbounds %struct.direct, %struct.direct* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = load %struct.direct*, %struct.direct** %4, align 8
  %73 = getelementptr inbounds %struct.direct, %struct.direct* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %76 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add i64 %79, 1
  %81 = call i32 @memmove(i32 %74, i32 %77, i64 %80)
  %82 = load i32, i32* @ALTERED, align 4
  %83 = load i32, i32* @STOP, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %35, %33
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @DIRSIZ(i32, %struct.direct*) #1

declare dso_local %struct.TYPE_2__* @inoinfo(i64) #1

declare dso_local i32 @memmove(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
