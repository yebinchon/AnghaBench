; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__sdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libmp/extr_mpasbn.c__sdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s underflow or overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_8__*, i16, %struct.TYPE_8__*, i16*, i32*)* @_sdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_sdiv(i8* %0, %struct.TYPE_8__* %1, i16 signext %2, %struct.TYPE_8__* %3, i16* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i16, align 2
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i16*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %8, align 8
  store i16 %2, i16* %9, align 2
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %10, align 8
  store i16* %4, i16** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32* null, i32** %16, align 8
  %18 = call i32* (...) @BN_new()
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = call i32* (...) @BN_new()
  store i32* %22, i32** %16, align 8
  br label %23

23:                                               ; preds = %21, %6
  %24 = load i32*, i32** %15, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32*, i32** %16, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26, %23
  %30 = load i8*, i8** %7, align 8
  %31 = call i32 @_bnerr(i8* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8*, i8** %7, align 8
  %34 = load i16, i16* %9, align 2
  %35 = call %struct.TYPE_8__* @_itom(i8* %33, i16 signext %34)
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %13, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = call %struct.TYPE_8__* @_itom(i8* %36, i16 signext 0)
  store %struct.TYPE_8__* %37, %struct.TYPE_8__** %14, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %15, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = call i32 @BN_div(i32* %39, i32* %40, i32 %43, i32 %46, i32* %47)
  %49 = call i32 @BN_ERRCHECK(i8* %38, i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = call i32 @_moveb(i8* %50, i32* %51, %struct.TYPE_8__* %52)
  %54 = load i8*, i8** %7, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %57 = call i32 @_moveb(i8* %54, i32* %55, %struct.TYPE_8__* %56)
  %58 = load i8*, i8** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %60 = call i8* @_mtox(i8* %58, %struct.TYPE_8__* %59)
  store i8* %60, i8** %17, align 8
  store i64 0, i64* @errno, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = call signext i16 @strtol(i8* %61, i32* null, i32 16)
  %63 = load i16*, i16** %11, align 8
  store i16 %62, i16* %63, align 2
  %64 = load i64, i64* @errno, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %32
  %67 = load i8*, i8** %7, align 8
  %68 = call i32 @MPERR(i8* %67)
  br label %69

69:                                               ; preds = %66, %32
  %70 = load i8*, i8** %17, align 8
  %71 = call i32 @free(i8* %70)
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %74 = call i32 @_mfree(i8* %72, %struct.TYPE_8__* %73)
  %75 = load i8*, i8** %7, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %77 = call i32 @_mfree(i8* %75, %struct.TYPE_8__* %76)
  %78 = load i32*, i32** %16, align 8
  %79 = call i32 @BN_free(i32* %78)
  %80 = load i32*, i32** %15, align 8
  %81 = call i32 @BN_free(i32* %80)
  ret void
}

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @_bnerr(i8*) #1

declare dso_local %struct.TYPE_8__* @_itom(i8*, i16 signext) #1

declare dso_local i32 @BN_ERRCHECK(i8*, i32) #1

declare dso_local i32 @BN_div(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @_moveb(i8*, i32*, %struct.TYPE_8__*) #1

declare dso_local i8* @_mtox(i8*, %struct.TYPE_8__*) #1

declare dso_local signext i16 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @MPERR(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_mfree(i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @BN_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
