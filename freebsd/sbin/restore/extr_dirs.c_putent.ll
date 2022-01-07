; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_putent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_putent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i64 }

@dirloc = common dso_local global i64 0, align 8
@DIRBLKSIZ = common dso_local global i64 0, align 8
@prev = common dso_local global i64 0, align 8
@dirbuf = common dso_local global i64 0, align 8
@df = common dso_local global i32 0, align 4
@dirfile = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.direct*)* @putent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putent(%struct.direct* %0) #0 {
  %2 = alloca %struct.direct*, align 8
  store %struct.direct* %0, %struct.direct** %2, align 8
  %3 = load %struct.direct*, %struct.direct** %2, align 8
  %4 = call i64 @DIRSIZ(i32 0, %struct.direct* %3)
  %5 = load %struct.direct*, %struct.direct** %2, align 8
  %6 = getelementptr inbounds %struct.direct, %struct.direct* %5, i32 0, i32 0
  store i64 %4, i64* %6, align 8
  %7 = load i64, i64* @dirloc, align 8
  %8 = load %struct.direct*, %struct.direct** %2, align 8
  %9 = getelementptr inbounds %struct.direct, %struct.direct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %7, %10
  %12 = load i64, i64* @DIRBLKSIZ, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = load i64, i64* @DIRBLKSIZ, align 8
  %16 = load i64, i64* @prev, align 8
  %17 = sub nsw i64 %15, %16
  %18 = load i64, i64* @dirbuf, align 8
  %19 = load i64, i64* @prev, align 8
  %20 = add nsw i64 %18, %19
  %21 = inttoptr i64 %20 to %struct.direct*
  %22 = getelementptr inbounds %struct.direct, %struct.direct* %21, i32 0, i32 0
  store i64 %17, i64* %22, align 8
  %23 = load i64, i64* @dirbuf, align 8
  %24 = load i64, i64* @DIRBLKSIZ, align 8
  %25 = load i32, i32* @df, align 4
  %26 = call i32 @fwrite(i64 %23, i64 %24, i32 1, i32 %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i32, i32* @dirfile, align 4
  %30 = call i32 @fail_dirtmp(i32 %29)
  br label %31

31:                                               ; preds = %28, %14
  store i64 0, i64* @dirloc, align 8
  br label %32

32:                                               ; preds = %31, %1
  %33 = load i64, i64* @dirbuf, align 8
  %34 = load i64, i64* @dirloc, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.direct*, %struct.direct** %2, align 8
  %37 = load %struct.direct*, %struct.direct** %2, align 8
  %38 = getelementptr inbounds %struct.direct, %struct.direct* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memmove(i64 %35, %struct.direct* %36, i64 %39)
  %41 = load i64, i64* @dirloc, align 8
  store i64 %41, i64* @prev, align 8
  %42 = load %struct.direct*, %struct.direct** %2, align 8
  %43 = getelementptr inbounds %struct.direct, %struct.direct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @dirloc, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* @dirloc, align 8
  ret void
}

declare dso_local i64 @DIRSIZ(i32, %struct.direct*) #1

declare dso_local i32 @fwrite(i64, i64, i32, i32) #1

declare dso_local i32 @fail_dirtmp(i32) #1

declare dso_local i32 @memmove(i64, %struct.direct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
