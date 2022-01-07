; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_branch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@REG_NOERROR = common dso_local global i64 0, align 8
@OP_ALT = common dso_local global i64 0, align 8
@END_OF_RE = common dso_local global i64 0, align 8
@OP_CLOSE_SUBEXP = common dso_local global i64 0, align 8
@free_tree = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i64*)* @parse_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_branch(i32* %0, %struct.TYPE_7__* %1, %struct.TYPE_8__* %2, i32 %3, i32 %4, i64* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64* %5, i64** %13, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %16, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i64*, i64** %13, align 8
  %28 = call i32* @parse_expression(i32* %22, %struct.TYPE_7__* %23, %struct.TYPE_8__* %24, i32 %25, i32 %26, i64* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i64*, i64** %13, align 8
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REG_NOERROR, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %6
  %34 = load i32*, i32** %14, align 8
  %35 = icmp eq i32* %34, null
  br label %36

36:                                               ; preds = %33, %6
  %37 = phi i1 [ false, %6 ], [ %35, %33 ]
  %38 = zext i1 %37 to i32
  %39 = call i64 @BE(i32 %38, i32 0)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32* null, i32** %7, align 8
  br label %130

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %127, %42
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OP_ALT, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @END_OF_RE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @OP_CLOSE_SUBEXP, align 8
  %63 = icmp ne i64 %61, %62
  br label %64

64:                                               ; preds = %58, %55
  %65 = phi i1 [ true, %55 ], [ %63, %58 ]
  br label %66

66:                                               ; preds = %64, %49, %43
  %67 = phi i1 [ false, %49 ], [ false, %43 ], [ %65, %64 ]
  br i1 %67, label %68, label %128

68:                                               ; preds = %66
  %69 = load i32*, i32** %8, align 8
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i64*, i64** %13, align 8
  %75 = call i32* @parse_expression(i32* %69, %struct.TYPE_7__* %70, %struct.TYPE_8__* %71, i32 %72, i32 %73, i64* %74)
  store i32* %75, i32** %15, align 8
  %76 = load i64*, i64** %13, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @REG_NOERROR, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %68
  %81 = load i32*, i32** %15, align 8
  %82 = icmp eq i32* %81, null
  br label %83

83:                                               ; preds = %80, %68
  %84 = phi i1 [ false, %68 ], [ %82, %80 ]
  %85 = zext i1 %84 to i32
  %86 = call i64 @BE(i32 %85, i32 0)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %83
  %89 = load i32*, i32** %14, align 8
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load i32*, i32** %14, align 8
  %93 = load i32, i32* @free_tree, align 4
  %94 = call i32 @postorder(i32* %92, i32 %93, i32* null)
  br label %95

95:                                               ; preds = %91, %88
  store i32* null, i32** %7, align 8
  br label %130

96:                                               ; preds = %83
  %97 = load i32*, i32** %14, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load i32*, i32** %15, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %121

102:                                              ; preds = %99
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load i32, i32* @CONCAT, align 4
  %107 = call i32* @create_tree(i32* %103, i32* %104, i32* %105, i32 %106)
  store i32* %107, i32** %17, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %119

110:                                              ; preds = %102
  %111 = load i32*, i32** %15, align 8
  %112 = load i32, i32* @free_tree, align 4
  %113 = call i32 @postorder(i32* %111, i32 %112, i32* null)
  %114 = load i32*, i32** %14, align 8
  %115 = load i32, i32* @free_tree, align 4
  %116 = call i32 @postorder(i32* %114, i32 %115, i32* null)
  %117 = load i64, i64* @REG_ESPACE, align 8
  %118 = load i64*, i64** %13, align 8
  store i64 %117, i64* %118, align 8
  store i32* null, i32** %7, align 8
  br label %130

119:                                              ; preds = %102
  %120 = load i32*, i32** %17, align 8
  store i32* %120, i32** %14, align 8
  br label %127

121:                                              ; preds = %99, %96
  %122 = load i32*, i32** %14, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i32*, i32** %15, align 8
  store i32* %125, i32** %14, align 8
  br label %126

126:                                              ; preds = %124, %121
  br label %127

127:                                              ; preds = %126, %119
  br label %43

128:                                              ; preds = %66
  %129 = load i32*, i32** %14, align 8
  store i32* %129, i32** %7, align 8
  br label %130

130:                                              ; preds = %128, %110, %95, %41
  %131 = load i32*, i32** %7, align 8
  ret i32* %131
}

declare dso_local i32* @parse_expression(i32*, %struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i64*) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @postorder(i32*, i32, i32*) #1

declare dso_local i32* @create_tree(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
