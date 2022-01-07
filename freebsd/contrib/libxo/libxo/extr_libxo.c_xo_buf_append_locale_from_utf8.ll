; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_buf_append_locale_from_utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_buf_append_locale_from_utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid UTF-8 byte sequence\00", align 1
@XOF_NO_LOCALE = common dso_local global i32 0, align 4
@MB_LEN_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"could not convert wide char: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_8__*, %struct.TYPE_9__*, i8*, i64)* @xo_buf_append_locale_from_utf8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xo_buf_append_locale_from_utf8(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i64 @xo_utf8_char(i8* %12, i64 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp eq i64 %15, -1
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = call i32 (%struct.TYPE_8__*, i8*, ...) @xo_failure(%struct.TYPE_8__* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %5, align 8
  br label %80

20:                                               ; preds = %4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %22 = load i32, i32* @XOF_NO_LOCALE, align 4
  %23 = call i64 @XOF_ISSET(%struct.TYPE_8__* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @xo_buf_has_room(%struct.TYPE_9__* %26, i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i64 0, i64* %5, align 8
  br label %80

31:                                               ; preds = %25
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @memcpy(i32 %34, i8* %35, i64 %36)
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add nsw i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  br label %77

45:                                               ; preds = %20
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = load i64, i64* @MB_LEN_MAX, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @xo_buf_has_room(%struct.TYPE_9__* %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i64 0, i64* %5, align 8
  br label %80

52:                                               ; preds = %45
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = call i32 @bzero(i32* %54, i32 4)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i64 @wcrtomb(i32 %58, i64 %59, i32* %61)
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %52
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i32 (%struct.TYPE_8__*, i8*, ...) @xo_failure(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  store i64 0, i64* %5, align 8
  br label %80

69:                                               ; preds = %52
  %70 = load i64, i64* %11, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %69, %31
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @xo_wcwidth(i64 %78)
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %77, %65, %51, %30, %17
  %81 = load i64, i64* %5, align 8
  ret i64 %81
}

declare dso_local i64 @xo_utf8_char(i8*, i64) #1

declare dso_local i32 @xo_failure(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @XOF_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @xo_buf_has_room(%struct.TYPE_9__*, i64) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @wcrtomb(i32, i64, i32*) #1

declare dso_local i64 @xo_wcwidth(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
