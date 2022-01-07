; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl3_do_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_lib.c_ssl3_do_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i32, %struct.TYPE_10__*, i32, i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@SSL3_RT_HANDSHAKE = common dso_local global i32 0, align 4
@TLS_ST_SW_SESSION_TICKET = common dso_local global i64 0, align 8
@TLS_ST_CW_KEY_UPDATE = common dso_local global i64 0, align 8
@TLS_ST_SW_KEY_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_do_write(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ssl3_write_bytes(%struct.TYPE_11__* %8, i32 %9, i32* %18, i64 %21, i64* %7)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %121

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SSL3_RT_HANDSHAKE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = call i32 @SSL_IS_TLS13(%struct.TYPE_11__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @TLS_ST_SW_SESSION_TICKET, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %72

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TLS_ST_CW_KEY_UPDATE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %41
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @TLS_ST_SW_KEY_UPDATE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %48, %30
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = bitcast i32* %65 to i8*
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @ssl3_finish_mac(%struct.TYPE_11__* %56, i8* %66, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %121

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71, %48, %41, %34
  br label %73

73:                                               ; preds = %72, %26
  %74 = load i64, i64* %7, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %74, %77
  br i1 %78, label %79, label %110

79:                                               ; preds = %73
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 5
  %82 = load i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)*, i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)* %82, null
  br i1 %83, label %84, label %109

84:                                               ; preds = %79
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 5
  %87 = load i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)*, i32 (i32, i32, i32, i32*, i64, %struct.TYPE_11__*, i32)** %86, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %99, %102
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %87(i32 1, i32 %90, i32 %91, i32* %96, i64 %103, %struct.TYPE_11__* %104, i32 %107)
  br label %109

109:                                              ; preds = %84, %79
  store i32 1, i32* %3, align 4
  br label %121

110:                                              ; preds = %73
  %111 = load i64, i64* %7, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = add i64 %114, %111
  store i64 %115, i64* %113, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub i64 %119, %116
  store i64 %120, i64* %118, align 8
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %110, %109, %70, %25
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @ssl3_write_bytes(%struct.TYPE_11__*, i32, i32*, i64, i64*) #1

declare dso_local i32 @SSL_IS_TLS13(%struct.TYPE_11__*) #1

declare dso_local i32 @ssl3_finish_mac(%struct.TYPE_11__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
