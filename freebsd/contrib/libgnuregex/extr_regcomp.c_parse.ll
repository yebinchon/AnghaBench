; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@RE_CARET_ANCHORS_HERE = common dso_local global i32 0, align 4
@REG_NOERROR = common dso_local global i64 0, align 8
@END_OF_RE = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_6__*, i32, i64*)* @parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse(i32* %0, %struct.TYPE_6__* %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %10, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @RE_CARET_ANCHORS_HERE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @fetch_token(i32* %14, i32* %22, i32 %25)
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i64*, i64** %9, align 8
  %31 = call i32* @parse_reg_exp(i32* %27, %struct.TYPE_6__* %28, i32* %14, i32 %29, i32 0, i64* %30)
  store i32* %31, i32** %11, align 8
  %32 = load i64*, i64** %9, align 8
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REG_NOERROR, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %4
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br label %39

39:                                               ; preds = %36, %4
  %40 = phi i1 [ false, %4 ], [ %38, %36 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @BE(i32 %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32* null, i32** %5, align 8
  br label %75

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %47 = load i32, i32* @END_OF_RE, align 4
  %48 = call i32* @create_tree(%struct.TYPE_7__* %46, i32* null, i32* null, i32 %47)
  store i32* %48, i32** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %53 = load i32*, i32** %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i32, i32* @CONCAT, align 4
  %56 = call i32* @create_tree(%struct.TYPE_7__* %52, i32* %53, i32* %54, i32 %55)
  store i32* %56, i32** %13, align 8
  br label %59

57:                                               ; preds = %45
  %58 = load i32*, i32** %12, align 8
  store i32* %58, i32** %13, align 8
  br label %59

59:                                               ; preds = %57, %51
  %60 = load i32*, i32** %12, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32*, i32** %13, align 8
  %64 = icmp eq i32* %63, null
  br label %65

65:                                               ; preds = %62, %59
  %66 = phi i1 [ true, %59 ], [ %64, %62 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @BE(i32 %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i64, i64* @REG_ESPACE, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  store i32* null, i32** %5, align 8
  br label %75

73:                                               ; preds = %65
  %74 = load i32*, i32** %13, align 8
  store i32* %74, i32** %5, align 8
  br label %75

75:                                               ; preds = %73, %70, %44
  %76 = load i32*, i32** %5, align 8
  ret i32* %76
}

declare dso_local i32 @fetch_token(i32*, i32*, i32) #1

declare dso_local i32* @parse_reg_exp(i32*, %struct.TYPE_6__*, i32*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32* @create_tree(%struct.TYPE_7__*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
