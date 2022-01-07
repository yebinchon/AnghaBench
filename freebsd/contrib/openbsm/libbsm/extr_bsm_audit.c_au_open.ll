; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, i64, i32, %struct.TYPE_7__* }

@audit_rec_count = common dso_local global i64 0, align 8
@audit_free_q = common dso_local global i32 0, align 4
@au_rec_q = common dso_local global i32 0, align 4
@MAX_AUDIT_RECORD_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAX_AUDIT_RECORDS = common dso_local global i64 0, align 8
@open_desc_table = common dso_local global %struct.TYPE_7__** null, align 8
@mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  %3 = load i64, i64* @audit_rec_count, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @LIST_INIT(i32* @audit_free_q)
  br label %7

7:                                                ; preds = %5, %0
  %8 = call i32 @LIST_EMPTY(i32* @audit_free_q)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = call %struct.TYPE_7__* @LIST_FIRST(i32* @audit_free_q)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %15 = load i32, i32* @au_rec_q, align 4
  %16 = call i32 @LIST_REMOVE(%struct.TYPE_7__* %14, i32 %15)
  br label %17

17:                                               ; preds = %10, %7
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = icmp eq %struct.TYPE_7__* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = call i8* @malloc(i32 40)
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %2, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 -1, i32* %1, align 4
  br label %82

26:                                               ; preds = %20
  %27 = load i32, i32* @MAX_AUDIT_RECORD_SIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
  %31 = call i8* @malloc(i32 %30)
  %32 = bitcast i8* %31 to %struct.TYPE_7__*
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 4
  store %struct.TYPE_7__* %32, %struct.TYPE_7__** %34, align 8
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = icmp eq %struct.TYPE_7__* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = call i32 @free(%struct.TYPE_7__* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  store i32 %42, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %82

43:                                               ; preds = %26
  %44 = load i64, i64* @audit_rec_count, align 8
  %45 = load i64, i64* @MAX_AUDIT_RECORDS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_7__* %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = call i32 @free(%struct.TYPE_7__* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  store i32 %54, i32* @errno, align 4
  store i32 -1, i32* %1, align 4
  br label %82

55:                                               ; preds = %43
  %56 = load i64, i64* @audit_rec_count, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @open_desc_table, align 8
  %61 = load i64, i64* @audit_rec_count, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %60, i64 %61
  store %struct.TYPE_7__* %59, %struct.TYPE_7__** %62, align 8
  %63 = load i64, i64* @audit_rec_count, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* @audit_rec_count, align 8
  br label %65

65:                                               ; preds = %55, %17
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* @MAX_AUDIT_RECORD_SIZE, align 4
  %70 = call i32 @memset(%struct.TYPE_7__* %68, i32 0, i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 3
  %73 = call i32 @TAILQ_INIT(i32* %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %1, align 4
  br label %82

82:                                               ; preds = %65, %47, %39, %25
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.TYPE_7__* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_7__*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
