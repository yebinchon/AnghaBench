; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suj_ino = type { i64, i32, i32, i32 }
%struct.suj_rec = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@sr_next = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ino_build: Unknown op %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.suj_ino*)* @ino_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_build(%struct.suj_ino* %0) #0 {
  %2 = alloca %struct.suj_ino*, align 8
  %3 = alloca %struct.suj_rec*, align 8
  store %struct.suj_ino* %0, %struct.suj_ino** %2, align 8
  br label %4

4:                                                ; preds = %39, %1
  %5 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %6 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %5, i32 0, i32 3
  %7 = call %struct.suj_rec* @TAILQ_FIRST(i32* %6)
  store %struct.suj_rec* %7, %struct.suj_rec** %3, align 8
  %8 = icmp ne %struct.suj_rec* %7, null
  br i1 %8, label %9, label %40

9:                                                ; preds = %4
  %10 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %11 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %10, i32 0, i32 3
  %12 = load %struct.suj_rec*, %struct.suj_rec** %3, align 8
  %13 = load i32, i32* @sr_next, align 4
  %14 = call i32 @TAILQ_REMOVE(i32* %11, %struct.suj_rec* %12, i32 %13)
  %15 = load %struct.suj_rec*, %struct.suj_rec** %3, align 8
  %16 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %31 [
    i32 130, label %21
    i32 128, label %21
    i32 129, label %25
  ]

21:                                               ; preds = %9, %9
  %22 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %23 = load %struct.suj_rec*, %struct.suj_rec** %3, align 8
  %24 = call i32 @ino_build_ref(%struct.suj_ino* %22, %struct.suj_rec* %23)
  br label %39

25:                                               ; preds = %9
  %26 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %27 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %26, i32 0, i32 2
  %28 = load %struct.suj_rec*, %struct.suj_rec** %3, align 8
  %29 = load i32, i32* @sr_next, align 4
  %30 = call i32 @TAILQ_INSERT_TAIL(i32* %27, %struct.suj_rec* %28, i32 %29)
  br label %39

31:                                               ; preds = %9
  %32 = load %struct.suj_rec*, %struct.suj_rec** %3, align 8
  %33 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @err_suj(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %31, %25, %21
  br label %4

40:                                               ; preds = %4
  %41 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %42 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %41, i32 0, i32 1
  %43 = call i64 @TAILQ_EMPTY(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.suj_ino*, %struct.suj_ino** %2, align 8
  %47 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.suj_rec* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.suj_rec*, i32) #1

declare dso_local i32 @ino_build_ref(%struct.suj_ino*, %struct.suj_rec*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.suj_rec*, i32) #1

declare dso_local i32 @err_suj(i8*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
