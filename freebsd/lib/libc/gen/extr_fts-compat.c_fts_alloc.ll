; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_fts-compat.c_fts_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, %struct.TYPE_7__*, i32*, i64, i32, i64, i64, i32, %struct.freebsd11_stat* }
%struct.freebsd11_stat = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ftsent_withstat = type { %struct.TYPE_6__, %struct.freebsd11_stat }

@FTS_NOSTAT = common dso_local global i32 0, align 4
@FTS_NOINSTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*, i8*, i32)* @fts_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @fts_alloc(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @FTS_NOSTAT, align 4
  %11 = call i64 @ISSET(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 80, %15
  %17 = add i64 %16, 1
  store i64 %17, i64* %9, align 8
  br label %23

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 88, %20
  %22 = add i64 %21, 1
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %9, align 8
  %25 = call %struct.TYPE_6__* @malloc(i64 %24)
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %88

28:                                               ; preds = %23
  %29 = load i32, i32* @FTS_NOSTAT, align 4
  %30 = call i64 @ISSET(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = bitcast %struct.TYPE_6__* %34 to i8*
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 9
  store %struct.freebsd11_stat* null, %struct.freebsd11_stat** %39, align 8
  br label %52

40:                                               ; preds = %28
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = bitcast %struct.TYPE_6__* %41 to %struct.ftsent_withstat*
  %43 = getelementptr inbounds %struct.ftsent_withstat, %struct.ftsent_withstat* %42, i64 1
  %44 = bitcast %struct.ftsent_withstat* %43 to i8*
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %48 = bitcast %struct.TYPE_6__* %47 to %struct.ftsent_withstat*
  %49 = getelementptr inbounds %struct.ftsent_withstat, %struct.ftsent_withstat* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 9
  store %struct.freebsd11_stat* %49, %struct.freebsd11_stat** %51, align 8
  br label %52

52:                                               ; preds = %40, %32
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @memcpy(i8* %55, i8* %56, i32 %57)
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  store i8 0, i8* %64, align 1
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 8
  store i32 %70, i32* %72, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 7
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 6
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @FTS_NOINSTR, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %87, %struct.TYPE_6__** %4, align 8
  br label %88

88:                                               ; preds = %52, %27
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %89
}

declare dso_local i64 @ISSET(i32) #1

declare dso_local %struct.TYPE_6__* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
