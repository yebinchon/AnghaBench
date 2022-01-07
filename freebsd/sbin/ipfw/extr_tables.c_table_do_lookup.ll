; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_do_lookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ipfw/extr_tables.c_table_do_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@IP_FW_TABLE_XFIND = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*, i32*, %struct.TYPE_13__*)* @table_do_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @table_do_lookup(%struct.TYPE_14__* %0, i8* %1, i32* %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %9, align 8
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = call i32 @memcpy(i8* %15, %struct.TYPE_14__* %16, i32 8)
  %18 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %19 = bitcast i8* %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %6, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 1
  %22 = bitcast %struct.TYPE_14__* %21 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %11, align 8
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %24 = call i32 @memset(%struct.TYPE_13__* %23, i32 0, i32 8)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  store i32 8, i32* %27, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  store i32 1, i32* %29, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @tentry_fill_key(%struct.TYPE_14__* %30, %struct.TYPE_13__* %31, i8* %32, i32 0, i32* %12, i32* %13, i32* %33)
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  store i64 16, i64* %14, align 8
  %39 = load i32, i32* @IP_FW_TABLE_XFIND, align 4
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = call i64 @do_get3(i32 %39, i32* %41, i64* %14)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @errno, align 4
  store i32 %45, i32* %5, align 4
  br label %56

46:                                               ; preds = %4
  %47 = load i64, i64* %14, align 8
  %48 = icmp ult i64 %47, 16
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %5, align 4
  br label %56

51:                                               ; preds = %46
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %54 = bitcast %struct.TYPE_13__* %52 to i8*
  %55 = bitcast %struct.TYPE_13__* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %49, %44
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @memcpy(i8*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @tentry_fill_key(%struct.TYPE_14__*, %struct.TYPE_13__*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @do_get3(i32, i32*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
