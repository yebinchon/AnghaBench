; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_chunks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_authzone.c_auth_zone_write_chunks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_xfer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.auth_chunk* }
%struct.auth_chunk = type { i32, i64, %struct.auth_chunk* }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"could not open %s: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"could not write http download to %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_xfer*, i8*)* @auth_zone_write_chunks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_zone_write_chunks(%struct.auth_xfer* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.auth_xfer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.auth_chunk*, align 8
  store %struct.auth_xfer* %0, %struct.auth_xfer** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call i32* @fopen(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %9, i32** %6, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %13, i32 %15)
  store i32 0, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.auth_xfer*, %struct.auth_xfer** %4, align 8
  %19 = getelementptr inbounds %struct.auth_xfer, %struct.auth_xfer* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.auth_chunk*, %struct.auth_chunk** %21, align 8
  store %struct.auth_chunk* %22, %struct.auth_chunk** %7, align 8
  br label %23

23:                                               ; preds = %43, %17
  %24 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %25 = icmp ne %struct.auth_chunk* %24, null
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %29 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %33 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @write_out(i32* %27, i8* %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 (i8*, i8*, ...) @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @fclose(i32* %40)
  store i32 0, i32* %3, align 4
  br label %50

42:                                               ; preds = %26
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.auth_chunk*, %struct.auth_chunk** %7, align 8
  %45 = getelementptr inbounds %struct.auth_chunk, %struct.auth_chunk* %44, i32 0, i32 2
  %46 = load %struct.auth_chunk*, %struct.auth_chunk** %45, align 8
  store %struct.auth_chunk* %46, %struct.auth_chunk** %7, align 8
  br label %23

47:                                               ; preds = %23
  %48 = load i32*, i32** %6, align 8
  %49 = call i32 @fclose(i32* %48)
  store i32 1, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %37, %12
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @log_err(i8*, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @write_out(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
