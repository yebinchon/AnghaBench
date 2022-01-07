; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_statestr.c_decode_bitflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libntp/extr_statestr.c_decode_bitflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.codestring = type { i32, i8*, i8* }

@errno = common dso_local global i32 0, align 4
@LIB_BUFLENGTH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"decode_bitflags(%s) can't decode 0x%x in %d bytes\00", align 1
@peer_st_bits = common dso_local global %struct.codestring* null, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"peer_st\00", align 1
@k_st_bits = common dso_local global %struct.codestring* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i8*, %struct.codestring*, i64)* @decode_bitflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @decode_bitflags(i32 %0, i8* %1, %struct.codestring* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.codestring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store %struct.codestring* %2, %struct.codestring** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load i32, i32* @errno, align 4
  store i32 %19, i32* %16, align 4
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @LIB_GETBUF(i8* %20)
  %22 = load i8*, i8** %11, align 8
  store i8* %22, i8** %12, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = load i64, i64* @LIB_BUFLENGTH, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %77, %4
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %80

30:                                               ; preds = %26
  %31 = load %struct.codestring*, %struct.codestring** %8, align 8
  %32 = load i64, i64* %14, align 8
  %33 = getelementptr inbounds %struct.codestring, %struct.codestring* %31, i64 %32
  %34 = getelementptr inbounds %struct.codestring, %struct.codestring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %30
  %40 = load %struct.codestring*, %struct.codestring** %8, align 8
  %41 = load i64, i64* %14, align 8
  %42 = getelementptr inbounds %struct.codestring, %struct.codestring* %40, i64 %41
  %43 = getelementptr inbounds %struct.codestring, %struct.codestring* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %17, align 8
  br label %51

45:                                               ; preds = %30
  %46 = load %struct.codestring*, %struct.codestring** %8, align 8
  %47 = load i64, i64* %14, align 8
  %48 = getelementptr inbounds %struct.codestring, %struct.codestring* %46, i64 %47
  %49 = getelementptr inbounds %struct.codestring, %struct.codestring* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %17, align 8
  br label %51

51:                                               ; preds = %45, %39
  %52 = load i8*, i8** %17, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i8*, i8** %13, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  store i64 %59, i64* %18, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %18, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i8*, i8** %17, align 8
  %64 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %60, i64 %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %63)
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %18, align 8
  %68 = icmp uge i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %82

70:                                               ; preds = %54
  %71 = load i32, i32* %15, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %7, align 8
  store i8* %75, i8** %10, align 8
  br label %76

76:                                               ; preds = %70, %51
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %14, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %14, align 8
  br label %26

80:                                               ; preds = %26
  %81 = load i8*, i8** %11, align 8
  store i8* %81, i8** %5, align 8
  br label %96

82:                                               ; preds = %69
  %83 = load i8*, i8** %11, align 8
  %84 = load i64, i64* @LIB_BUFLENGTH, align 8
  %85 = load %struct.codestring*, %struct.codestring** %8, align 8
  %86 = load %struct.codestring*, %struct.codestring** @peer_st_bits, align 8
  %87 = icmp eq %struct.codestring* %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %90 = load i32, i32* %6, align 4
  %91 = load i64, i64* @LIB_BUFLENGTH, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i8*, i64, i8*, i8*, ...) @snprintf(i8* %83, i64 %84, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i8* %89, i32 %90, i32 %92)
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* @errno, align 4
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %5, align 8
  br label %96

96:                                               ; preds = %82, %80
  %97 = load i8*, i8** %5, align 8
  ret i8* %97
}

declare dso_local i32 @LIB_GETBUF(i8*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
