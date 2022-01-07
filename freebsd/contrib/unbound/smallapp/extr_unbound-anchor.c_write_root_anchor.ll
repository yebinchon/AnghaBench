; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_root_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/smallapp/extr_unbound-anchor.c_write_root_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verb = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to write all data to %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @write_root_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_root_anchor(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @BIO_seek(i32* %8, i32 0)
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @BIO_get_mem_data(i32* %10, i8** %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %14, %2
  %18 = load i64, i64* @verb, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  br label %71

23:                                               ; preds = %14
  %24 = load i8*, i8** %3, align 8
  %25 = call i32* @fopen(i8* %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %7, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load i64, i64* @verb, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i8*, i8** %3, align 8
  %33 = load i64, i64* @errno, align 8
  %34 = call i8* @strerror(i64 %33)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %32, i8* %34)
  br label %36

36:                                               ; preds = %31, %28
  br label %71

37:                                               ; preds = %23
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @fwrite(i8* %38, i64 %40, i32 1, i32* %41)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load i64, i64* @verb, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i8*, i8** %3, align 8
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @verb, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i64, i64* @errno, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* @errno, align 8
  %58 = call i8* @strerror(i64 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56, %53, %50
  br label %61

61:                                               ; preds = %60, %37
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @fflush(i32* %62)
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @_fileno(i32* %64)
  %66 = call i64 @_get_osfhandle(i32 %65)
  %67 = trunc i64 %66 to i32
  %68 = call i32 @FlushFileBuffers(i32 %67)
  %69 = load i32*, i32** %7, align 8
  %70 = call i32 @fclose(i32* %69)
  br label %71

71:                                               ; preds = %61, %36, %22
  ret void
}

declare dso_local i32 @BIO_seek(i32*, i32) #1

declare dso_local i32 @BIO_get_mem_data(i32*, i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @fwrite(i8*, i64, i32, i32*) #1

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @FlushFileBuffers(i32) #1

declare dso_local i64 @_get_osfhandle(i32) #1

declare dso_local i32 @_fileno(i32*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
