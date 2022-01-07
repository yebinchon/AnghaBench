; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_do_chdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/tar/extr_util.c_do_chdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsdtar = type { i32* }

@.str = private unnamed_addr constant [25 x i8] c"could not chdir to '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_chdir(%struct.bsdtar* %0) #0 {
  %2 = alloca %struct.bsdtar*, align 8
  store %struct.bsdtar* %0, %struct.bsdtar** %2, align 8
  %3 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %4 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %10 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i64 @chdir(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %16 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @lafe_errc(i32 1, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32* %17)
  br label %19

19:                                               ; preds = %14, %8
  %20 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %21 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load %struct.bsdtar*, %struct.bsdtar** %2, align 8
  %25 = getelementptr inbounds %struct.bsdtar, %struct.bsdtar* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %19, %7
  ret void
}

declare dso_local i64 @chdir(i32*) #1

declare dso_local i32 @lafe_errc(i32, i32, i8*, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
