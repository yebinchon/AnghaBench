; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_emit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libxo/libxo/extr_libxo.c_xo_do_emit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64 }

@errno = common dso_local global i32 0, align 4
@XOF_RETAIN_ALL = common dso_local global i32 0, align 4
@XOEF_RETAIN = common dso_local global i32 0, align 4
@XOF_RETAIN_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i8*)* @xo_do_emit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xo_do_emit(%struct.TYPE_7__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load i32, i32* @errno, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %88

18:                                               ; preds = %3
  store i32* null, i32** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = load i32, i32* @XOF_RETAIN_ALL, align 4
  %21 = call i64 @XOF_ISSET(%struct.TYPE_7__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @XOEF_RETAIN, align 4
  %25 = load i32, i32* %6, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %23, %18
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %29 = load i32, i32* @XOF_RETAIN_NONE, align 4
  %30 = call i64 @XOF_ISSET(%struct.TYPE_7__* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i32, i32* @XOEF_RETAIN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %6, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @XOEF_RETAIN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8*, i8** %7, align 8
  %44 = call i64 @xo_retain_find(i8* %43, i32** %9, i32* %8)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = load i32*, i32** %9, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %46, %42, %37
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @xo_count_fields(%struct.TYPE_7__* %50, i8* %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = mul i64 %54, 4
  %56 = trunc i64 %55 to i32
  %57 = call i32* @alloca(i32 %56)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %8, align 4
  %60 = zext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = call i32 @bzero(i32* %58, i32 %62)
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i8*, i8** %7, align 8
  %68 = call i64 @xo_parse_fields(%struct.TYPE_7__* %64, i32* %65, i32 %66, i8* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %88

71:                                               ; preds = %49
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @XOEF_RETAIN, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i8*, i8** %7, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @xo_retain_add(i8* %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %46
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = load i32, i32* %8, align 4
  %86 = load i8*, i8** %7, align 8
  %87 = call i32 @xo_do_emit_fields(%struct.TYPE_7__* %83, i32* %84, i32 %85, i8* %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %70, %17
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i64 @XOF_ISSET(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @xo_retain_find(i8*, i32**, i32*) #1

declare dso_local i32 @xo_count_fields(%struct.TYPE_7__*, i8*) #1

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i64 @xo_parse_fields(%struct.TYPE_7__*, i32*, i32, i8*) #1

declare dso_local i32 @xo_retain_add(i8*, i32*, i32) #1

declare dso_local i32 @xo_do_emit_fields(%struct.TYPE_7__*, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
