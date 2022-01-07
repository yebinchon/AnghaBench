; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_lookup_mapper_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_mapper.c_lookup_mapper_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._region = type { i32 }
%struct._memstream = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@_CITRUS_MAPPER_DIR = common dso_local global i8* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i64, i8**, i8**)* @lookup_mapper_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_mapper_entry(i8* %0, i8* %1, i8* %2, i64 %3, i8** %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct._region, align 4
  %15 = alloca %struct._memstream, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i8** %5, i8*** %13, align 8
  %24 = load i32, i32* @PATH_MAX, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %19, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %20, align 8
  %28 = load i32, i32* @PATH_MAX, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** @_CITRUS_MAPPER_DIR, align 8
  %32 = call i32 @snprintf(i8* %27, i64 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %30, i8* %31)
  %33 = call i32 @_map_file(%struct._region* %14, i8* %27)
  store i32 %33, i32* %22, align 4
  %34 = load i32, i32* %22, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = load i32, i32* %22, align 4
  store i32 %37, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %91

38:                                               ; preds = %6
  %39 = call i32 @_memstream_bind(%struct._memstream* %15, %struct._region* %14)
  %40 = load i8*, i8** %9, align 8
  %41 = call i8* @_memstream_matchline(%struct._memstream* %15, i8* %40, i64* %21, i32 0)
  store i8* %41, i8** %16, align 8
  %42 = load i8*, i8** %16, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOENT, align 4
  store i32 %45, i32* %22, align 4
  br label %88

46:                                               ; preds = %38
  %47 = load i64, i64* %21, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = load i64, i64* %21, align 8
  %51 = load i64, i64* %11, align 8
  %52 = sub i64 %51, 1
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49, %46
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %22, align 4
  br label %88

56:                                               ; preds = %49
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %18, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i8**, i8*** %12, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = call i8* @_bcs_skip_nonws_len(i8* %60, i64* %21)
  store i8* %61, i8** %17, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = load i8*, i8** %16, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = add nsw i64 %68, 1
  %70 = call i32 @strlcpy(i8* %62, i8* %63, i64 %69)
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %16, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = add nsw i64 %75, 1
  %77 = load i8*, i8** %18, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 %76
  store i8* %78, i8** %18, align 8
  %79 = load i8*, i8** %18, align 8
  %80 = load i8**, i8*** %13, align 8
  store i8* %79, i8** %80, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i8* @_bcs_skip_ws_len(i8* %81, i64* %21)
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %18, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i64, i64* %21, align 8
  %86 = add i64 %85, 1
  %87 = call i32 @strlcpy(i8* %83, i8* %84, i64 %86)
  store i32 0, i32* %22, align 4
  br label %88

88:                                               ; preds = %56, %54, %44
  %89 = call i32 @_unmap_file(%struct._region* %14)
  %90 = load i32, i32* %22, align 4
  store i32 %90, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %91

91:                                               ; preds = %88, %36
  %92 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, i8*) #2

declare dso_local i32 @_map_file(%struct._region*, i8*) #2

declare dso_local i32 @_memstream_bind(%struct._memstream*, %struct._region*) #2

declare dso_local i8* @_memstream_matchline(%struct._memstream*, i8*, i64*, i32) #2

declare dso_local i8* @_bcs_skip_nonws_len(i8*, i64*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i8* @_bcs_skip_ws_len(i8*, i64*) #2

declare dso_local i32 @_unmap_file(%struct._region*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
