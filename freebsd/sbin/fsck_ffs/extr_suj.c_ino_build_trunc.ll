; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_build_trunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_build_trunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jtrncrec = type { i32, i64, i64 }
%struct.suj_ino = type { %struct.jtrncrec* }

@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ino_build_trunc: op %d ino %ju, size %jd\0A\00", align 1
@JOP_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jtrncrec*)* @ino_build_trunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_build_trunc(%struct.jtrncrec* %0) #0 {
  %2 = alloca %struct.jtrncrec*, align 8
  %3 = alloca %struct.suj_ino*, align 8
  store %struct.jtrncrec* %0, %struct.jtrncrec** %2, align 8
  %4 = load i64, i64* @debug, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %8 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %11 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %15 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %13, i32 %17)
  br label %19

19:                                               ; preds = %6, %1
  %20 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %21 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.suj_ino* @ino_lookup(i64 %22, i32 1)
  store %struct.suj_ino* %23, %struct.suj_ino** %3, align 8
  %24 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %25 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* @JOP_SYNC, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %19
  %31 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %32 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %31, i32 0, i32 0
  store %struct.jtrncrec* null, %struct.jtrncrec** %32, align 8
  br label %52

33:                                               ; preds = %19
  %34 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %35 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %34, i32 0, i32 0
  %36 = load %struct.jtrncrec*, %struct.jtrncrec** %35, align 8
  %37 = icmp eq %struct.jtrncrec* %36, null
  br i1 %37, label %48, label %38

38:                                               ; preds = %33
  %39 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %40 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %39, i32 0, i32 0
  %41 = load %struct.jtrncrec*, %struct.jtrncrec** %40, align 8
  %42 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %45 = getelementptr inbounds %struct.jtrncrec, %struct.jtrncrec* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %38, %33
  %49 = load %struct.jtrncrec*, %struct.jtrncrec** %2, align 8
  %50 = load %struct.suj_ino*, %struct.suj_ino** %3, align 8
  %51 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %50, i32 0, i32 0
  store %struct.jtrncrec* %49, %struct.jtrncrec** %51, align 8
  br label %52

52:                                               ; preds = %30, %48, %38
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local %struct.suj_ino* @ino_lookup(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
