; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_process_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_process_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32 }

@dofilter = common dso_local global i64 0, align 8
@lasttv = common dso_local global %struct.timeval zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"%02x\09%lu.%06lu\09%lu.%06lu\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: zero returned on read\0A\00", align 1
@progname = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"read()\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_raw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  store i32 %0, i32* %3, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @read(i32 %9, i32* %4, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = call i32 @gettimeofday(%struct.timeval* %6, %struct.timezone* null)
  %14 = load i64, i64* @dofilter, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @raw_filter(i32 %17, %struct.timeval* %6)
  br label %52

19:                                               ; preds = %12
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @lasttv, i32 0, i32 1), align 8
  %23 = sub nsw i64 %21, %22
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @lasttv, i32 0, i32 0), align 8
  %28 = sub nsw i64 %26, %27
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %19
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %34, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1000000
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %33, %19
  %41 = load i32, i32* %4, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %43, i64 %45, i64 %47, i64 %49)
  %51 = bitcast %struct.timeval* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @lasttv to i8*), i8* align 8 %51, i64 16, i1 false)
  br label %52

52:                                               ; preds = %40, %16
  br label %8

53:                                               ; preds = %8
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load i32, i32* @stderr, align 4
  %58 = load i8*, i8** @progname, align 8
  %59 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %58)
  %60 = call i32 @exit(i32 1) #4
  unreachable

61:                                               ; preds = %53
  %62 = call i32 @error(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @read(i32, i32*, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @raw_filter(i32, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i32, i64, i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @error(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
