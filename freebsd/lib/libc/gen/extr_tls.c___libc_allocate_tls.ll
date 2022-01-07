; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_tls.c___libc_allocate_tls.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_tls.c___libc_allocate_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tls_init_align = common dso_local global i32 0, align 4
@tls_static_space = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"__libc_allocate_tls: Out of memory.\0A\00", align 1
@tls_init = common dso_local global i8* null, align 8
@tls_init_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__libc_allocate_tls(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i32, i32* @tls_init_align, align 4
  %14 = call i64 @MAX(i64 %12, i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load i32, i32* @tls_static_space, align 4
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @roundup2(i32 %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 8
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 8, i64* %5, align 8
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = add i64 %22, %23
  %25 = load i64, i64* %6, align 8
  %26 = call i8* @malloc_aligned(i64 %24, i64 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %21
  %30 = call i32 @tls_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %31 = call i32 (...) @abort() #3
  unreachable

32:                                               ; preds = %21
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %5, align 8
  %36 = add i64 %34, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @memset(i8* %33, i32 0, i32 %37)
  %39 = call i32* @__je_bootstrap_malloc(i32 12)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %32
  %43 = call i32 @tls_msg(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %44 = call i32 (...) @abort() #3
  unreachable

45:                                               ; preds = %32
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i8, i8* %46, i64 %47
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i32*
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load i32*, i32** %9, align 8
  %56 = ptrtoint i32* %55 to i32
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i32*
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 %56, i32* %60, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 1, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @tls_static_space, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  store i32 %67, i32* %69, align 4
  %70 = load i8*, i8** %4, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %89

72:                                               ; preds = %45
  %73 = load i8*, i8** %4, align 8
  %74 = ptrtoint i8* %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @tls_static_space, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @tls_static_space, align 4
  %82 = sub nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  %85 = load i32, i32* @tls_static_space, align 4
  %86 = call i32 @memcpy(i8* %79, i8* %84, i32 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = call i32 @_rtld_free_tls(i8* %87, i32 8, i32 4)
  br label %109

89:                                               ; preds = %45
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @tls_static_space, align 4
  %92 = sub nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8*, i8** @tls_init, align 8
  %96 = load i32, i32* @tls_init_size, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* @tls_static_space, align 4
  %100 = sub nsw i32 %98, %99
  %101 = load i32, i32* @tls_init_size, align 4
  %102 = add nsw i32 %100, %101
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = load i32, i32* @tls_static_space, align 4
  %106 = load i32, i32* @tls_init_size, align 4
  %107 = sub nsw i32 %105, %106
  %108 = call i32 @memset(i8* %104, i32 0, i32 %107)
  br label %109

109:                                              ; preds = %89, %72
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  ret i8* %112
}

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @roundup2(i32, i64) #1

declare dso_local i8* @malloc_aligned(i64, i64) #1

declare dso_local i32 @tls_msg(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32* @__je_bootstrap_malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @_rtld_free_tls(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
