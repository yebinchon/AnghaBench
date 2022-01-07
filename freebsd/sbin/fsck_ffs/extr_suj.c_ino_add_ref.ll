; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_add_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.suj_ino = type { i32 }
%struct.suj_rec = type { i64 }
%struct.jrefrec = type { i64, i64, i64, i32, i32 }

@srechd = common dso_local global i32 0, align 4
@JOP_REMREF = common dso_local global i64 0, align 8
@JOP_ADDREF = common dso_local global i64 0, align 8
@sr_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.suj_ino*, %struct.suj_rec*)* @ino_add_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_add_ref(%struct.suj_ino* %0, %struct.suj_rec* %1) #0 {
  %3 = alloca %struct.suj_ino*, align 8
  %4 = alloca %struct.suj_rec*, align 8
  %5 = alloca %struct.jrefrec*, align 8
  %6 = alloca %struct.suj_rec*, align 8
  %7 = alloca %struct.jrefrec*, align 8
  store %struct.suj_ino* %0, %struct.suj_ino** %3, align 8
  store %struct.suj_rec* %1, %struct.suj_rec** %4, align 8
  %8 = load %struct.suj_rec*, %struct.suj_rec** %4, align 8
  %9 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.jrefrec*
  store %struct.jrefrec* %11, %struct.jrefrec** %5, align 8
  %12 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %13 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %12, i32 0, i32 0
  %14 = load i32, i32* @srechd, align 4
  %15 = call %struct.suj_rec* @TAILQ_LAST(i32* %13, i32 %14)
  store %struct.suj_rec* %15, %struct.suj_rec** %6, align 8
  br label %16

16:                                               ; preds = %69, %2
  %17 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %18 = icmp ne %struct.suj_rec* %17, null
  br i1 %18, label %19, label %74

19:                                               ; preds = %16
  %20 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %21 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.jrefrec*
  store %struct.jrefrec* %23, %struct.jrefrec** %7, align 8
  %24 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %25 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %28 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %19
  %32 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %33 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %36 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31, %19
  br label %69

40:                                               ; preds = %31
  %41 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %42 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @JOP_REMREF, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %48 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @JOP_ADDREF, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46, %40
  %53 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %54 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %57 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 4
  br label %80

58:                                               ; preds = %46
  %59 = load %struct.jrefrec*, %struct.jrefrec** %7, align 8
  %60 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.jrefrec*, %struct.jrefrec** %5, align 8
  %63 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %62, i32 0, i32 3
  store i32 %61, i32* %63, align 8
  %64 = load %struct.suj_rec*, %struct.suj_rec** %4, align 8
  %65 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %68 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %80

69:                                               ; preds = %39
  %70 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %71 = load i32, i32* @srechd, align 4
  %72 = load i32, i32* @sr_next, align 4
  %73 = call %struct.suj_rec* @TAILQ_PREV(%struct.suj_rec* %70, i32 %71, i32 %72)
  store %struct.suj_rec* %73, %struct.suj_rec** %6, align 8
  br label %16

74:                                               ; preds = %16
  %75 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %76 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %75, i32 0, i32 0
  %77 = load %struct.suj_rec*, %struct.suj_rec** %4, align 8
  %78 = load i32, i32* @sr_next, align 4
  %79 = call i32 @TAILQ_INSERT_TAIL(i32* %76, %struct.suj_rec* %77, i32 %78)
  br label %80

80:                                               ; preds = %74, %58, %52
  ret void
}

declare dso_local %struct.suj_rec* @TAILQ_LAST(i32*, i32) #1

declare dso_local %struct.suj_rec* @TAILQ_PREV(%struct.suj_rec*, i32, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.suj_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
