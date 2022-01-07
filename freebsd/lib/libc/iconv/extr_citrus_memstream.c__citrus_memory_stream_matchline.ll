; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_matchline.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/iconv/extr_citrus_memstream.c__citrus_memory_stream_matchline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._citrus_memory_stream = type { i32 }

@T_COMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @_citrus_memory_stream_matchline(%struct._citrus_memory_stream* noalias %0, i8* noalias %1, i64* noalias %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct._citrus_memory_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct._citrus_memory_stream* %0, %struct._citrus_memory_stream** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i64 @strlen(i8* %14)
  store i64 %15, i64* %12, align 8
  br label %16

16:                                               ; preds = %73, %40, %4
  %17 = load %struct._citrus_memory_stream*, %struct._citrus_memory_stream** %6, align 8
  %18 = call i8* @_citrus_memory_stream_getln(%struct._citrus_memory_stream* %17, i64* %13)
  store i8* %18, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i8* null, i8** %5, align 8
  br label %80

22:                                               ; preds = %16
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @T_COMM, align 4
  %25 = load i64, i64* %13, align 8
  %26 = call i8* @memchr(i8* %23, i32 %24, i64 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load i8*, i8** %11, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = ptrtoint i8* %30 to i64
  %33 = ptrtoint i8* %31 to i64
  %34 = sub i64 %32, %33
  store i64 %34, i64* %13, align 8
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i8*, i8** %10, align 8
  %37 = call i32 @_bcs_trunc_rws_len(i8* %36, i64* %13)
  %38 = load i64, i64* %13, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %16

41:                                               ; preds = %35
  %42 = load i8*, i8** %10, align 8
  %43 = call i8* @_bcs_skip_ws_len(i8* %42, i64* %13)
  store i8* %43, i8** %10, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i8* @_bcs_skip_nonws_len(i8* %44, i64* %13)
  store i8* %45, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %73

53:                                               ; preds = %41
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %7, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = load i64, i64* %12, align 8
  %60 = call i64 @memcmp(i8* %57, i8* %58, i64 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %74

63:                                               ; preds = %56
  br label %72

64:                                               ; preds = %53
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i64 @_bcs_strncasecmp(i8* %65, i8* %66, i64 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %64
  br label %72

72:                                               ; preds = %71, %63
  br label %73

73:                                               ; preds = %72, %41
  br label %16

74:                                               ; preds = %70, %62
  %75 = load i8*, i8** %11, align 8
  %76 = call i8* @_bcs_skip_ws_len(i8* %75, i64* %13)
  store i8* %76, i8** %10, align 8
  %77 = load i64, i64* %13, align 8
  %78 = load i64*, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  %79 = load i8*, i8** %10, align 8
  store i8* %79, i8** %5, align 8
  br label %80

80:                                               ; preds = %74, %21
  %81 = load i8*, i8** %5, align 8
  ret i8* %81
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @_citrus_memory_stream_getln(%struct._citrus_memory_stream*, i64*) #1

declare dso_local i8* @memchr(i8*, i32, i64) #1

declare dso_local i32 @_bcs_trunc_rws_len(i8*, i64*) #1

declare dso_local i8* @_bcs_skip_ws_len(i8*, i64*) #1

declare dso_local i8* @_bcs_skip_nonws_len(i8*, i64*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i64 @_bcs_strncasecmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
