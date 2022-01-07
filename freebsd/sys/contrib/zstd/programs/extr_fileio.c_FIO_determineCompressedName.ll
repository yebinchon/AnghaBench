; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_determineCompressedName.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_determineCompressedName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FIO_determineCompressedName.dfnbCapacity = internal global i64 0, align 8
@FIO_determineCompressedName.dstFileNameBuffer = internal global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"zstd: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*)* @FIO_determineCompressedName to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @FIO_determineCompressedName(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strlen(i8* %10)
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @strlen(i8* %13)
  %15 = ptrtoint i8* %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i8*, i8** %4, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i8* @FIO_createFilename_fromOutDir(i8* %19, i8* %20, i64 %21)
  store i8* %22, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i8* @strlen(i8* %23)
  %25 = ptrtoint i8* %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp ne i8* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i32 @assert(i32 %28)
  br label %30

30:                                               ; preds = %18, %3
  %31 = load i64, i64* @FIO_determineCompressedName.dfnbCapacity, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %32, %33
  %35 = add i64 %34, 1
  %36 = icmp ule i64 %31, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %39 = call i32 @free(i8* %38)
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = add i64 %40, %41
  %43 = add i64 %42, 30
  store i64 %43, i64* @FIO_determineCompressedName.dfnbCapacity, align 8
  %44 = load i64, i64* @FIO_determineCompressedName.dfnbCapacity, align 8
  %45 = call i64 @malloc(i64 %44)
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %47 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @EXM_THROW(i32 30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %37
  br label %54

54:                                               ; preds = %53, %30
  %55 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %56 = icmp ne i8* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @free(i8* %66)
  br label %73

68:                                               ; preds = %54
  %69 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @memcpy(i8* %69, i8* %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %61
  %74 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, 1
  %80 = call i32 @memcpy(i8* %76, i8* %77, i64 %79)
  %81 = load i8*, i8** @FIO_determineCompressedName.dstFileNameBuffer, align 8
  ret i8* %81
}

declare dso_local i8* @strlen(i8*) #1

declare dso_local i8* @FIO_createFilename_fromOutDir(i8*, i8*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @EXM_THROW(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
