; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_send_reply.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_send_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i8* }

@.str = private unnamed_addr constant [24 x i8] c"sending %lu bytes to %s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"sendto(%s): %s\00", align 1
@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i64, %struct.descr*, %struct.TYPE_3__*)* @send_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_reply(i32 %0, i32* %1, i64 %2, %struct.descr* %3, %struct.TYPE_3__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.descr*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca [4 x i8], align 1
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.descr* %3, %struct.descr** %9, align 8
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32*, i32** %7, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = load %struct.descr*, %struct.descr** %9, align 8
  %19 = getelementptr inbounds %struct.descr, %struct.descr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @kdc_log(i32 %12, i32* %13, i32 5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %20)
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %5
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 24
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  store i8 %30, i8* %31, align 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = ashr i32 %34, 16
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 1
  store i8 %37, i8* %38, align 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 2
  store i8 %44, i8* %45, align 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 3
  store i8 %50, i8* %51, align 1
  %52 = load %struct.descr*, %struct.descr** %9, align 8
  %53 = getelementptr inbounds %struct.descr, %struct.descr* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %11, i64 0, i64 0
  %56 = load %struct.descr*, %struct.descr** %9, align 8
  %57 = getelementptr inbounds %struct.descr, %struct.descr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.descr*, %struct.descr** %9, align 8
  %60 = getelementptr inbounds %struct.descr, %struct.descr* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sendto(i32 %54, i8* %55, i32 4, i32 0, i32 %58, i32 %61)
  %63 = call i64 @rk_IS_SOCKET_ERROR(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %24
  %66 = load i32, i32* %6, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load %struct.descr*, %struct.descr** %9, align 8
  %69 = getelementptr inbounds %struct.descr, %struct.descr* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %72 = call i64 @strerror(i32 %71)
  %73 = call i32 @kdc_log(i32 %66, i32* %67, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %72)
  br label %103

74:                                               ; preds = %24
  br label %75

75:                                               ; preds = %74, %5
  %76 = load %struct.descr*, %struct.descr** %9, align 8
  %77 = getelementptr inbounds %struct.descr, %struct.descr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.descr*, %struct.descr** %9, align 8
  %86 = getelementptr inbounds %struct.descr, %struct.descr* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.descr*, %struct.descr** %9, align 8
  %89 = getelementptr inbounds %struct.descr, %struct.descr* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sendto(i32 %78, i8* %81, i32 %84, i32 0, i32 %87, i32 %90)
  %92 = call i64 @rk_IS_SOCKET_ERROR(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %75
  %95 = load i32, i32* %6, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = load %struct.descr*, %struct.descr** %9, align 8
  %98 = getelementptr inbounds %struct.descr, %struct.descr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %101 = call i64 @strerror(i32 %100)
  %102 = call i32 @kdc_log(i32 %95, i32* %96, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %101)
  br label %103

103:                                              ; preds = %65, %94, %75
  ret void
}

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, i64, i64) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
