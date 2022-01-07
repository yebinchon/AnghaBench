; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_close_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_audit.c_au_close_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32 }

@open_desc_table = common dso_local global %struct.TYPE_5__** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MAX_AUDIT_HEADER_SIZE = common dso_local global i64 0, align 8
@AUDIT_TRAILER_SIZE = common dso_local global i64 0, align 8
@MAX_AUDIT_RECORD_SIZE = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"au_close_buffer failed %zd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @au_close_buffer(i32 %0, i16 signext %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @open_desc_table, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %13, i64 %15
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %4
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %71

27:                                               ; preds = %20
  store i32 0, i32* %12, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_AUDIT_HEADER_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = load i64, i64* @AUDIT_TRAILER_SIZE, align 8
  %34 = add i64 %32, %33
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @MAX_AUDIT_RECORD_SIZE, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %43, label %38

38:                                               ; preds = %27
  %39 = load i64, i64* %10, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %38, %27
  %44 = load i32, i32* @stderr, align 4
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* @errno, align 4
  store i32 -1, i32* %12, align 4
  br label %67

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %50 = load i16, i16* %7, align 2
  %51 = call i64 @au_assemble(%struct.TYPE_5__* %49, i16 signext %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 -1, i32* %12, align 4
  br label %67

54:                                               ; preds = %48
  %55 = load i32*, i32** %8, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @memcpy(i32* %55, i32 %58, i64 %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %9, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %54, %53, %43
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %69 = call i32 @au_teardown(%struct.TYPE_5__* %68)
  %70 = load i32, i32* %12, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %25
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i64 @au_assemble(%struct.TYPE_5__*, i16 signext) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @au_teardown(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
