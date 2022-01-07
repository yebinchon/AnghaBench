; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_subject32.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/openbsm/libbsm/extr_bsm_token.c_au_to_subject32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AUT_SUBJECT32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_subject32(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_3__* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_3__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %17, align 8
  store i32* null, i32** %19, align 8
  %20 = load i32*, i32** %18, align 8
  %21 = load i32*, i32** %19, align 8
  %22 = call i32 @GET_TOKEN_AREA(i32* %20, i32* %21, i32 40)
  %23 = load i32*, i32** %18, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  store i32* null, i32** %9, align 8
  br label %61

26:                                               ; preds = %8
  %27 = load i32*, i32** %19, align 8
  %28 = load i32, i32* @AUT_SUBJECT32, align 4
  %29 = call i32 @ADD_U_CHAR(i32* %27, i32 %28)
  %30 = load i32*, i32** %19, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @ADD_U_INT32(i32* %30, i32 %31)
  %33 = load i32*, i32** %19, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @ADD_U_INT32(i32* %33, i32 %34)
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ADD_U_INT32(i32* %36, i32 %37)
  %39 = load i32*, i32** %19, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @ADD_U_INT32(i32* %39, i32 %40)
  %42 = load i32*, i32** %19, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @ADD_U_INT32(i32* %42, i32 %43)
  %45 = load i32*, i32** %19, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @ADD_U_INT32(i32* %45, i32 %46)
  %48 = load i32*, i32** %19, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @ADD_U_INT32(i32* %48, i32 %49)
  %51 = load i32*, i32** %19, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ADD_U_INT32(i32* %51, i32 %54)
  %56 = load i32*, i32** %19, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @ADD_MEM(i32* %56, i32* %58, i32 4)
  %60 = load i32*, i32** %18, align 8
  store i32* %60, i32** %9, align 8
  br label %61

61:                                               ; preds = %26, %25
  %62 = load i32*, i32** %9, align 8
  ret i32* %62
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
