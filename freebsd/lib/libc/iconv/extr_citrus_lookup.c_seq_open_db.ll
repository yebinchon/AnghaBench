; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_open_db.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_lookup.c_seq_open_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_lookup = type { i32, i32*, i32*, i32*, i32*, i64, i32, i32, %struct._region }
%struct._region = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.db\00", align 1
@_CITRUS_LOOKUP_MAGIC = common dso_local global i32 0, align 4
@_db_hash_std = common dso_local global i32 0, align 4
@seq_lookup_db = common dso_local global i32 0, align 4
@seq_next_db = common dso_local global i32 0, align 4
@seq_get_num_entries_db = common dso_local global i32 0, align 4
@seq_close_db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._citrus_lookup*, i8*)* @seq_open_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_open_db(%struct._citrus_lookup* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._citrus_lookup*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._region, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct._citrus_lookup* %0, %struct._citrus_lookup** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @PATH_MAX, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %7, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %8, align 8
  %15 = trunc i64 %12 to i32
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = call i32 @_map_file(%struct._region* %6, i8* %14)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %25 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %24, i32 0, i32 6
  %26 = load i32, i32* @_CITRUS_LOOKUP_MAGIC, align 4
  %27 = load i32, i32* @_db_hash_std, align 4
  %28 = call i32 @_db_open(i32* %25, %struct._region* %6, i32 %26, i32 %27, i32* null)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = call i32 @_unmap_file(%struct._region* %6)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

34:                                               ; preds = %23
  %35 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %36 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %35, i32 0, i32 8
  %37 = bitcast %struct._region* %36 to i8*
  %38 = bitcast %struct._region* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 4, i1 false)
  %39 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %40 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @_db_get_num_entries(i32 %41)
  %43 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %44 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %46 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %48 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %50 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %49, i32 0, i32 4
  store i32* @seq_lookup_db, i32** %50, align 8
  %51 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %52 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %51, i32 0, i32 3
  store i32* @seq_next_db, i32** %52, align 8
  %53 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %54 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %53, i32 0, i32 2
  store i32* @seq_get_num_entries_db, i32** %54, align 8
  %55 = load %struct._citrus_lookup*, %struct._citrus_lookup** %4, align 8
  %56 = getelementptr inbounds %struct._citrus_lookup, %struct._citrus_lookup* %55, i32 0, i32 1
  store i32* @seq_close_db, i32** %56, align 8
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %57

57:                                               ; preds = %34, %31, %21
  %58 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %58)
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @_map_file(%struct._region*, i8*) #2

declare dso_local i32 @_db_open(i32*, %struct._region*, i32, i32, i32*) #2

declare dso_local i32 @_unmap_file(%struct._region*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @_db_get_num_entries(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
