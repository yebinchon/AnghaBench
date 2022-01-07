; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_headers_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_headers_buckets.c_serf_headers_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@SERF_NEWLINE_CRLF = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i32 0, align 4
@READ_DONE = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i32 0, align 4
@READ_CRLF = common dso_local global i64 0, align 8
@READ_TERM = common dso_local global i64 0, align 8
@SERF_NEWLINE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i8**, i32*)* @serf_headers_readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serf_headers_readline(%struct.TYPE_6__* %0, i32 %1, i32* %2, i8** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %12, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @SERF_NEWLINE_CRLF, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @APR_EGENERAL, align 4
  store i32 %22, i32* %6, align 4
  br label %57

23:                                               ; preds = %5
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %25 = load i8**, i8*** %10, align 8
  %26 = load i32*, i32** %11, align 8
  %27 = call i32 @select_value(%struct.TYPE_7__* %24, i8** %25, i32* %26)
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @READ_DONE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @APR_EOF, align 4
  store i32 %34, i32* %6, align 4
  br label %57

35:                                               ; preds = %23
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = call i32 @consume_chunk(%struct.TYPE_7__* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @READ_CRLF, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %35
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @READ_TERM, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43, %35
  %50 = load i32, i32* @SERF_NEWLINE_CRLF, align 4
  br label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @SERF_NEWLINE_NONE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %33, %21
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @select_value(%struct.TYPE_7__*, i8**, i32*) #1

declare dso_local i32 @consume_chunk(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
