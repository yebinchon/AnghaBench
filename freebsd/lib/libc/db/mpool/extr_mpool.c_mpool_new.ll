; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/mpool/extr_mpool.c_mpool_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/mpool/extr_mpool.c_mpool_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, %struct._hqh*, i32 }
%struct._hqh = type { i32 }
%struct.TYPE_9__ = type { i32, i8*, i8* }

@MAX_PAGE_NUMBER = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"mpool_new: page allocation overflow.\0A\00", align 1
@MPOOL_PAGE_REQUEST = common dso_local global i64 0, align 8
@MPOOL_PINNED = common dso_local global i32 0, align 4
@MPOOL_INUSE = common dso_local global i32 0, align 4
@hq = common dso_local global i32 0, align 4
@q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpool_new(%struct.TYPE_8__* %0, i8** %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct._hqh*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAX_PAGE_NUMBER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @stderr, align 4
  %17 = call i32 @fprintf(i32 %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (...) @abort() #3
  unreachable

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %21 = call %struct.TYPE_9__* @mpool_bkt(%struct.TYPE_8__* %20)
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = icmp eq %struct.TYPE_9__* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i8* null, i8** %4, align 8
  br label %72

24:                                               ; preds = %19
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @MPOOL_PAGE_REQUEST, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load i8**, i8*** %6, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  br label %46

37:                                               ; preds = %24
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = inttoptr i64 %40 to i8*
  %43 = load i8**, i8*** %6, align 8
  store i8* %42, i8** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  store i8* %42, i8** %45, align 8
  br label %46

46:                                               ; preds = %37, %28
  %47 = load i32, i32* @MPOOL_PINNED, align 4
  %48 = load i32, i32* @MPOOL_INUSE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 2
  %54 = load %struct._hqh*, %struct._hqh** %53, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @HASHKEY(i8* %57)
  %59 = getelementptr inbounds %struct._hqh, %struct._hqh* %54, i64 %58
  store %struct._hqh* %59, %struct._hqh** %8, align 8
  %60 = load %struct._hqh*, %struct._hqh** %8, align 8
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %62 = load i32, i32* @hq, align 4
  %63 = call i32 @TAILQ_INSERT_HEAD(%struct._hqh* %60, %struct.TYPE_9__* %61, i32 %62)
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %67 = load i32, i32* @q, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(i32* %65, %struct.TYPE_9__* %66, i32 %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %4, align 8
  br label %72

72:                                               ; preds = %46, %23
  %73 = load i8*, i8** %4, align 8
  ret i8* %73
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local %struct.TYPE_9__* @mpool_bkt(%struct.TYPE_8__*) #1

declare dso_local i64 @HASHKEY(i8*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct._hqh*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
