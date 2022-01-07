; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_store.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_metadata_store(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* null, i8** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @g_open(i8* %13, i32 1)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @errno, align 4
  store i32 %18, i32* %4, align 4
  br label %84

19:                                               ; preds = %3
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @g_mediasize(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @errno, align 4
  store i32 %25, i32* %11, align 4
  br label %74

26:                                               ; preds = %19
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @g_sectorsize(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @errno, align 4
  store i32 %32, i32* %11, align 4
  br label %74

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp sge i32 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @assert(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @malloc(i32 %40)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %11, align 4
  br label %74

46:                                               ; preds = %33
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @bcopy(i8* %47, i8* %48, i64 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %7, align 8
  %57 = sub i64 %55, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @bzero(i8* %53, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @pwrite(i32 %60, i8* %61, i32 %62, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %46
  %70 = load i32, i32* @errno, align 4
  store i32 %70, i32* %11, align 4
  br label %74

71:                                               ; preds = %46
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @g_flush(i32 %72)
  br label %74

74:                                               ; preds = %71, %69, %44, %31, %24
  %75 = load i8*, i8** %8, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8
  %79 = call i32 @free(i8* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @g_close(i32 %81)
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %17
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i32 @g_mediasize(i32) #1

declare dso_local i32 @g_sectorsize(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @pwrite(i32, i8*, i32, i32) #1

declare dso_local i32 @g_flush(i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @g_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
