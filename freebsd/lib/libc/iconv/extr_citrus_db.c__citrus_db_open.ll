; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_db.c__citrus_db_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_db = type { i8*, i32, %struct._region }
%struct._region = type { i32 }
%struct._citrus_db_header_x = type { i32, i32, i32 }
%struct._memstream = type { i32 }

@EFTYPE = common dso_local global i32 0, align 4
@_CITRUS_DB_MAGIC_SIZE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@_CITRUS_DB_ENTRY_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_citrus_db_open(%struct._citrus_db** %0, %struct._region* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct._citrus_db**, align 8
  %8 = alloca %struct._region*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct._citrus_db*, align 8
  %13 = alloca %struct._citrus_db_header_x*, align 8
  %14 = alloca %struct._memstream, align 4
  store %struct._citrus_db** %0, %struct._citrus_db*** %7, align 8
  store %struct._region* %1, %struct._region** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load %struct._region*, %struct._region** %8, align 8
  %16 = call i32 @_memstream_bind(%struct._memstream* %14, %struct._region* %15)
  %17 = call %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream* %14, i32* null, i32 12)
  store %struct._citrus_db_header_x* %17, %struct._citrus_db_header_x** %13, align 8
  %18 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %13, align 8
  %19 = icmp eq %struct._citrus_db_header_x* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EFTYPE, align 4
  store i32 %21, i32* %6, align 4
  br label %73

22:                                               ; preds = %5
  %23 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %13, align 8
  %24 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* @_CITRUS_DB_MAGIC_SIZE, align 4
  %28 = call i64 @strncmp(i32 %25, i8* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @EFTYPE, align 4
  store i32 %31, i32* %6, align 4
  br label %73

32:                                               ; preds = %22
  %33 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %13, align 8
  %34 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32toh(i32 %35)
  %37 = load i32, i32* @SEEK_SET, align 4
  %38 = call i64 @_memstream_seek(%struct._memstream* %14, i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* @EFTYPE, align 4
  store i32 %41, i32* %6, align 4
  br label %73

42:                                               ; preds = %32
  %43 = load %struct._citrus_db_header_x*, %struct._citrus_db_header_x** %13, align 8
  %44 = getelementptr inbounds %struct._citrus_db_header_x, %struct._citrus_db_header_x* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @be32toh(i32 %45)
  %47 = load i32, i32* @_CITRUS_DB_ENTRY_SIZE, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i32 @_memstream_remainder(%struct._memstream* %14)
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* @EFTYPE, align 4
  store i32 %52, i32* %6, align 4
  br label %73

53:                                               ; preds = %42
  %54 = call %struct._citrus_db* @malloc(i32 16)
  store %struct._citrus_db* %54, %struct._citrus_db** %12, align 8
  %55 = load %struct._citrus_db*, %struct._citrus_db** %12, align 8
  %56 = icmp eq %struct._citrus_db* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @errno, align 4
  store i32 %58, i32* %6, align 4
  br label %73

59:                                               ; preds = %53
  %60 = load %struct._citrus_db*, %struct._citrus_db** %12, align 8
  %61 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %60, i32 0, i32 2
  %62 = load %struct._region*, %struct._region** %8, align 8
  %63 = bitcast %struct._region* %61 to i8*
  %64 = bitcast %struct._region* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load i32, i32* %10, align 4
  %66 = load %struct._citrus_db*, %struct._citrus_db** %12, align 8
  %67 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i8*, i8** %11, align 8
  %69 = load %struct._citrus_db*, %struct._citrus_db** %12, align 8
  %70 = getelementptr inbounds %struct._citrus_db, %struct._citrus_db* %69, i32 0, i32 0
  store i8* %68, i8** %70, align 8
  %71 = load %struct._citrus_db*, %struct._citrus_db** %12, align 8
  %72 = load %struct._citrus_db**, %struct._citrus_db*** %7, align 8
  store %struct._citrus_db* %71, %struct._citrus_db** %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %59, %57, %51, %40, %30, %20
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i32 @_memstream_bind(%struct._memstream*, %struct._region*) #1

declare dso_local %struct._citrus_db_header_x* @_memstream_getregion(%struct._memstream*, i32*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i64 @_memstream_seek(%struct._memstream*, i32, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @_memstream_remainder(%struct._memstream*) #1

declare dso_local %struct._citrus_db* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
