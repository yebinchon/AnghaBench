; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_ffs/extr_suj.c_ino_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.jrec = type { %struct.jrefrec }
%struct.jrefrec = type { i64, i64, i64, i64, i64 }
%struct.jmvrec = type { i64, i64, i64, i64, i64 }
%struct.suj_ino = type { i32, i32 }
%struct.suj_rec = type { %union.jrec* }

@debug = common dso_local global i64 0, align 8
@JOP_MVREF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"ino move: ino %ju, parent %ju, diroff %jd, oldoff %jd\0A\00", align 1
@JOP_ADDREF = common dso_local global i64 0, align 8
@JOP_REMREF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"ino ref: op %d, ino %ju, nlink %ju, parent %ju, diroff %jd\0A\00", align 1
@sr_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.jrec*)* @ino_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ino_append(%union.jrec* %0) #0 {
  %2 = alloca %union.jrec*, align 8
  %3 = alloca %struct.jrefrec*, align 8
  %4 = alloca %struct.jmvrec*, align 8
  %5 = alloca %struct.suj_ino*, align 8
  %6 = alloca %struct.suj_rec*, align 8
  store %union.jrec* %0, %union.jrec** %2, align 8
  %7 = load %union.jrec*, %union.jrec** %2, align 8
  %8 = bitcast %union.jrec* %7 to %struct.jmvrec*
  store %struct.jmvrec* %8, %struct.jmvrec** %4, align 8
  %9 = load %union.jrec*, %union.jrec** %2, align 8
  %10 = bitcast %union.jrec* %9 to %struct.jrefrec*
  store %struct.jrefrec* %10, %struct.jrefrec** %3, align 8
  %11 = load i64, i64* @debug, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.jmvrec*, %struct.jmvrec** %4, align 8
  %15 = getelementptr inbounds %struct.jmvrec, %struct.jmvrec* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @JOP_MVREF, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %13
  %20 = load %struct.jmvrec*, %struct.jmvrec** %4, align 8
  %21 = getelementptr inbounds %struct.jmvrec, %struct.jmvrec* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = load %struct.jmvrec*, %struct.jmvrec** %4, align 8
  %26 = getelementptr inbounds %struct.jmvrec, %struct.jmvrec* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = load %struct.jmvrec*, %struct.jmvrec** %4, align 8
  %30 = getelementptr inbounds %struct.jmvrec, %struct.jmvrec* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.jmvrec*, %struct.jmvrec** %4, align 8
  %34 = getelementptr inbounds %struct.jmvrec, %struct.jmvrec* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 (i8*, i64, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %24, i32 %28, i32 %32, i32 %36)
  br label %75

38:                                               ; preds = %13, %1
  %39 = load i64, i64* @debug, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %38
  %42 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %43 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @JOP_ADDREF, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %49 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @JOP_REMREF, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %74

53:                                               ; preds = %47, %41
  %54 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %55 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %58 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %62 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %66 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.jrefrec*, %struct.jrefrec** %3, align 8
  %70 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 (i8*, i64, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i64 %56, i32 %60, i32 %64, i32 %68, i32 %72)
  br label %74

74:                                               ; preds = %53, %47, %38
  br label %75

75:                                               ; preds = %74, %19
  %76 = load %union.jrec*, %union.jrec** %2, align 8
  %77 = bitcast %union.jrec* %76 to %struct.jrefrec*
  %78 = getelementptr inbounds %struct.jrefrec, %struct.jrefrec* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = call %struct.suj_ino* @ino_lookup(i64 %79, i32 1)
  store %struct.suj_ino* %80, %struct.suj_ino** %5, align 8
  %81 = load %struct.suj_ino*, %struct.suj_ino** %5, align 8
  %82 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %81, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = call %struct.suj_rec* @errmalloc(i32 8)
  store %struct.suj_rec* %83, %struct.suj_rec** %6, align 8
  %84 = load %union.jrec*, %union.jrec** %2, align 8
  %85 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %86 = getelementptr inbounds %struct.suj_rec, %struct.suj_rec* %85, i32 0, i32 0
  store %union.jrec* %84, %union.jrec** %86, align 8
  %87 = load %struct.suj_ino*, %struct.suj_ino** %5, align 8
  %88 = getelementptr inbounds %struct.suj_ino, %struct.suj_ino* %87, i32 0, i32 1
  %89 = load %struct.suj_rec*, %struct.suj_rec** %6, align 8
  %90 = load i32, i32* @sr_next, align 4
  %91 = call i32 @TAILQ_INSERT_TAIL(i32* %88, %struct.suj_rec* %89, i32 %90)
  ret void
}

declare dso_local i32 @printf(i8*, i64, i32, i32, i32, ...) #1

declare dso_local %struct.suj_ino* @ino_lookup(i64, i32) #1

declare dso_local %struct.suj_rec* @errmalloc(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.suj_rec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
