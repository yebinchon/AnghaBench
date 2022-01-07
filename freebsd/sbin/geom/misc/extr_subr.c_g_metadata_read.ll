; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/geom/misc/extr_subr.c_g_metadata_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.std_metadata = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_metadata_read(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.std_metadata, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @g_open(i8* %16, i32 0)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %5, align 4
  br label %90

22:                                               ; preds = %4
  %23 = load i32, i32* %15, align 4
  %24 = call i32 @g_mediasize(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* @errno, align 4
  store i32 %28, i32* %14, align 4
  br label %80

29:                                               ; preds = %22
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @g_sectorsize(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %14, align 4
  br label %80

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = icmp sge i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load i32, i32* %12, align 4
  %44 = call i8* @malloc(i32 %43)
  store i8* %44, i8** %11, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %14, align 4
  br label %80

49:                                               ; preds = %36
  %50 = load i32, i32* %15, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %53, %54
  %56 = call i32 @pread(i32 %50, i8* %51, i32 %52, i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = load i32, i32* @errno, align 4
  store i32 %60, i32* %14, align 4
  br label %80

61:                                               ; preds = %49
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %61
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @std_metadata_decode(i8* %65, %struct.std_metadata* %10)
  %67 = getelementptr inbounds %struct.std_metadata, %struct.std_metadata* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @strcmp(i32 %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  store i32 %73, i32* %14, align 4
  br label %80

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i8*, i8** %11, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @bcopy(i8* %76, i8* %77, i64 %78)
  br label %80

80:                                               ; preds = %75, %72, %59, %47, %34, %27
  %81 = load i8*, i8** %11, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @free(i8* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @g_close(i32 %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %5, align 4
  br label %90

90:                                               ; preds = %86, %20
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @g_open(i8*, i32) #1

declare dso_local i32 @g_mediasize(i32) #1

declare dso_local i32 @g_sectorsize(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @pread(i32, i8*, i32, i32) #1

declare dso_local i32 @std_metadata_decode(i8*, %struct.std_metadata*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bcopy(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @g_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
