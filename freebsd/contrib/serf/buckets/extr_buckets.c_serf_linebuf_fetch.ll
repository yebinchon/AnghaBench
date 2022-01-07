; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_linebuf_fetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_buckets.c_serf_linebuf_fetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32* }

@SERF_LINEBUF_READY = common dso_local global i64 0, align 8
@SERF_LINEBUF_EMPTY = common dso_local global i64 0, align 8
@SERF_LINEBUF_CRLF_SPLIT = common dso_local global i64 0, align 8
@APR_EAGAIN = common dso_local global i64 0, align 8
@APR_EGENERAL = common dso_local global i64 0, align 8
@SERF_NEWLINE_NONE = common dso_local global i32 0, align 4
@SERF_LINEBUF_PARTIAL = common dso_local global i64 0, align 8
@SERF_NEWLINE_CRLF_SPLIT = common dso_local global i32 0, align 4
@SERF_NEWLINE_CRLF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @serf_linebuf_fetch(%struct.TYPE_3__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SERF_LINEBUF_READY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i64, i64* @SERF_LINEBUF_EMPTY, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  br label %23

23:                                               ; preds = %17, %3
  br label %24

24:                                               ; preds = %23, %142
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SERF_LINEBUF_CRLF_SPLIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @serf_bucket_peek(i32* %31, i8** %9, i32* %10)
  store i64 %32, i64* %8, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @SERF_BUCKET_READ_ERROR(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %4, align 8
  br label %143

38:                                               ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %9, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @serf_bucket_read(i32* %47, i32 1, i8** %9, i32* %10)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i64, i64* @SERF_LINEBUF_READY, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %55

53:                                               ; preds = %38
  %54 = load i64, i64* @APR_EAGAIN, align 8
  store i64 %54, i64* %4, align 8
  br label %143

55:                                               ; preds = %49
  br label %131

56:                                               ; preds = %24
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @serf_bucket_readline(i32* %57, i32 %58, i32* %11, i8** %9, i32* %10)
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = call i64 @SERF_BUCKET_READ_ERROR(i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %56
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %143

65:                                               ; preds = %56
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @APR_STATUS_IS_EOF(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i64, i64* %8, align 8
  store i64 %73, i64* %4, align 8
  br label %143

74:                                               ; preds = %69, %65
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %77, %79
  %81 = icmp ugt i64 %80, 8
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i64, i64* @APR_EGENERAL, align 8
  store i64 %83, i64* %4, align 8
  br label %143

84:                                               ; preds = %74
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @SERF_NEWLINE_NONE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i64, i64* @SERF_LINEBUF_PARTIAL, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %114

92:                                               ; preds = %84
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @SERF_NEWLINE_CRLF_SPLIT, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i64, i64* @SERF_LINEBUF_CRLF_SPLIT, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %10, align 4
  br label %113

102:                                              ; preds = %92
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* @SERF_NEWLINE_CRLF, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i32
  %107 = add nsw i32 1, %106
  %108 = load i32, i32* %10, align 4
  %109 = sub nsw i32 %108, %107
  store i32 %109, i32* %10, align 4
  %110 = load i64, i64* @SERF_LINEBUF_READY, align 8
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %102, %96
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i8*, i8** %9, align 8
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @memcpy(i32* %121, i8* %122, i32 %123)
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add i64 %129, %126
  store i64 %130, i64* %128, align 8
  br label %131

131:                                              ; preds = %114, %55
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %131
  %135 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @SERF_LINEBUF_READY, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %134, %131
  %141 = load i64, i64* %8, align 8
  store i64 %141, i64* %4, align 8
  br label %143

142:                                              ; preds = %134
  br label %24

143:                                              ; preds = %140, %82, %72, %63, %53, %36
  %144 = load i64, i64* %4, align 8
  ret i64 %144
}

declare dso_local i64 @serf_bucket_peek(i32*, i8**, i32*) #1

declare dso_local i64 @SERF_BUCKET_READ_ERROR(i64) #1

declare dso_local i32 @serf_bucket_read(i32*, i32, i8**, i32*) #1

declare dso_local i64 @serf_bucket_readline(i32*, i32, i32*, i8**, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EOF(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
