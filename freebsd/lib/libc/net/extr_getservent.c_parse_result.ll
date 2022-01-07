; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_parse_result.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getservent.c_parse_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.servent = type { i32 }

@_ALIGNBYTES = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NS_RETURN = common dso_local global i32 0, align 4
@NS_NOTFOUND = common dso_local global i32 0, align 4
@NS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.servent*, i8*, i64, i8*, i64, i32*)* @parse_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_result(%struct.servent* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.servent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32, align 4
  store %struct.servent* %0, %struct.servent** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %12, align 8
  %18 = load i32, i32* @_ALIGNBYTES, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %17, %19
  %21 = add i64 %20, 8
  %22 = icmp ule i64 %16, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %6
  %24 = load i32, i32* @ERANGE, align 4
  %25 = load i32*, i32** %13, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @NS_RETURN, align 4
  store i32 %26, i32* %7, align 4
  br label %77

27:                                               ; preds = %6
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %12, align 8
  %30 = add i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = call i64 @_ALIGN(i8* %31)
  %33 = inttoptr i64 %32 to i8**
  store i8** %33, i8*** %14, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8**, i8*** %14, align 8
  %38 = bitcast i8** %37 to i8*
  %39 = ptrtoint i8* %36 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = udiv i64 %41, 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp slt i32 %44, 1
  br i1 %45, label %46, label %50

46:                                               ; preds = %27
  %47 = load i32, i32* @ERANGE, align 4
  %48 = load i32*, i32** %13, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* @NS_RETURN, align 4
  store i32 %49, i32* %7, align 4
  br label %77

50:                                               ; preds = %27
  %51 = load i8*, i8** %9, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @memcpy(i8* %51, i8* %52, i64 %53)
  %55 = load i8*, i8** %9, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.servent*, %struct.servent** %8, align 8
  %60 = load i8**, i8*** %14, align 8
  %61 = load i32, i32* %15, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = call i64 @servent_unpack(i8* %58, %struct.servent* %59, i8** %60, i32 %61, i32* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %50
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @NS_NOTFOUND, align 4
  br label %73

71:                                               ; preds = %65
  %72 = load i32, i32* @NS_RETURN, align 4
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi i32 [ %70, %69 ], [ %72, %71 ]
  store i32 %74, i32* %7, align 4
  br label %77

75:                                               ; preds = %50
  %76 = load i32, i32* @NS_SUCCESS, align 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %75, %73, %46, %23
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i64 @_ALIGN(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @servent_unpack(i8*, %struct.servent*, i8**, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
