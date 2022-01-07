; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_searchdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/restore/extr_dirs.c_searchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.direct = type { i32, i32 }
%struct.inotab = type { i32 }

@dirp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.direct* (i32, i8*)* @searchdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.direct* @searchdir(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.direct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.direct*, align 8
  %7 = alloca %struct.inotab*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.inotab* @inotablookup(i32 %9)
  store %struct.inotab* %10, %struct.inotab** %7, align 8
  %11 = load %struct.inotab*, %struct.inotab** %7, align 8
  %12 = icmp eq %struct.inotab* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.direct* null, %struct.direct** %3, align 8
  br label %50

14:                                               ; preds = %2
  %15 = load i32, i32* @dirp, align 4
  %16 = load %struct.inotab*, %struct.inotab** %7, align 8
  %17 = getelementptr inbounds %struct.inotab, %struct.inotab* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.inotab*, %struct.inotab** %7, align 8
  %20 = getelementptr inbounds %struct.inotab, %struct.inotab* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rst_seekdir(i32 %15, i32 %18, i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @strlen(i8* %23)
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %46, %14
  %26 = load i32, i32* @dirp, align 4
  %27 = call %struct.direct* @rst_readdir(i32 %26)
  store %struct.direct* %27, %struct.direct** %6, align 8
  %28 = load %struct.direct*, %struct.direct** %6, align 8
  %29 = icmp eq %struct.direct* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store %struct.direct* null, %struct.direct** %3, align 8
  br label %50

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.direct*, %struct.direct** %6, align 8
  %34 = getelementptr inbounds %struct.direct, %struct.direct* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %32
  %39 = load %struct.direct*, %struct.direct** %6, align 8
  %40 = getelementptr inbounds %struct.direct, %struct.direct* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @strncmp(i32 %41, i8* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %38, %32
  %47 = phi i1 [ true, %32 ], [ %45, %38 ]
  br i1 %47, label %25, label %48

48:                                               ; preds = %46
  %49 = load %struct.direct*, %struct.direct** %6, align 8
  store %struct.direct* %49, %struct.direct** %3, align 8
  br label %50

50:                                               ; preds = %48, %30, %13
  %51 = load %struct.direct*, %struct.direct** %3, align 8
  ret %struct.direct* %51
}

declare dso_local %struct.inotab* @inotablookup(i32) #1

declare dso_local i32 @rst_seekdir(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.direct* @rst_readdir(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
