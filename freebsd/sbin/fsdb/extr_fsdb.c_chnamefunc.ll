; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_chnamefunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsdb/extr_fsdb.c_chnamefunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inodesc = type { i32, %struct.direct* }
%struct.direct = type { i64, i32, i32 }

@slotcount = common dso_local global i32 0, align 4
@desired = common dso_local global i64 0, align 8
@NEWDIRFMT = common dso_local global i32 0, align 4
@STOP = common dso_local global i32 0, align 4
@ALTERED = common dso_local global i32 0, align 4
@FOUND = common dso_local global i32 0, align 4
@KEEPON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chnamefunc(%struct.inodesc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inodesc*, align 8
  %4 = alloca %struct.direct*, align 8
  %5 = alloca %struct.direct, align 8
  store %struct.inodesc* %0, %struct.inodesc** %3, align 8
  %6 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %7 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %6, i32 0, i32 1
  %8 = load %struct.direct*, %struct.direct** %7, align 8
  store %struct.direct* %8, %struct.direct** %4, align 8
  %9 = load i32, i32* @slotcount, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @slotcount, align 4
  %11 = sext i32 %9 to i64
  %12 = load i64, i64* @desired, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %47

14:                                               ; preds = %1
  %15 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %16 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @strlen(i32 %17)
  %19 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @NEWDIRFMT, align 4
  %21 = call i64 @DIRSIZ(i32 %20, %struct.direct* %5)
  %22 = load %struct.direct*, %struct.direct** %4, align 8
  %23 = getelementptr inbounds %struct.direct, %struct.direct* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.direct*, %struct.direct** %4, align 8
  %30 = getelementptr inbounds %struct.direct, %struct.direct* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.direct*, %struct.direct** %4, align 8
  %32 = getelementptr inbounds %struct.direct, %struct.direct* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.inodesc*, %struct.inodesc** %3, align 8
  %35 = getelementptr inbounds %struct.inodesc, %struct.inodesc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @strcpy(i32 %33, i32 %36)
  %38 = load i32, i32* @STOP, align 4
  %39 = load i32, i32* @ALTERED, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @FOUND, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %14
  %44 = load i32, i32* @STOP, align 4
  %45 = load i32, i32* @FOUND, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %2, align 4
  br label %49

47:                                               ; preds = %1
  %48 = load i32, i32* @KEEPON, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %43, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @DIRSIZ(i32, %struct.direct*) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
