; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_fs_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_parse_fs_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"error: unknown option %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32**, %struct.delegpt**, i32*, i32*)* @parse_fs_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_fs_args(i32* %0, i8* %1, i32** %2, %struct.delegpt** %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca %struct.delegpt**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32** %2, i32*** %10, align 8
  store %struct.delegpt** %3, %struct.delegpt*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  br label %18

18:                                               ; preds = %63, %6
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 43
  br i1 %23, label %24, label %65

24:                                               ; preds = %18
  %25 = load i32*, i32** %8, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = call i32 @find_arg2(i32* %25, i8* %26, i8** %15)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %103

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i8*, i8** %9, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %9, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %63

37:                                               ; preds = %31
  %38 = load i8*, i8** %9, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 105
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %12, align 8
  store i32 1, i32* %46, align 4
  br label %62

47:                                               ; preds = %42, %37
  %48 = load i8*, i8** %9, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 112
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load i32*, i32** %13, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32*, i32** %13, align 8
  store i32 1, i32* %56, align 4
  br label %61

57:                                               ; preds = %52, %47
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @ssl_printf(i32* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %59)
  store i32 0, i32* %7, align 4
  br label %103

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61, %45
  br label %31

63:                                               ; preds = %31
  %64 = load i8*, i8** %15, align 8
  store i8* %64, i8** %9, align 8
  br label %18

65:                                               ; preds = %18
  %66 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  %67 = icmp ne %struct.delegpt** %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65
  %69 = load i32*, i32** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 @find_arg2(i32* %69, i8* %70, i8** %15)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %103

74:                                               ; preds = %68
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %14, align 8
  %76 = load i8*, i8** %15, align 8
  store i8* %76, i8** %9, align 8
  br label %79

77:                                               ; preds = %65
  %78 = load i8*, i8** %9, align 8
  store i8* %78, i8** %14, align 8
  br label %79

79:                                               ; preds = %77, %74
  %80 = load i32*, i32** %8, align 8
  %81 = load i8*, i8** %14, align 8
  %82 = load i32**, i32*** %10, align 8
  %83 = call i32 @parse_arg_name(i32* %80, i8* %81, i32** %82, i64* %16, i32* %17)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  store i32 0, i32* %7, align 4
  br label %103

86:                                               ; preds = %79
  %87 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  %88 = icmp ne %struct.delegpt** %87, null
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load i32*, i32** %8, align 8
  %91 = load i8*, i8** %9, align 8
  %92 = load i32**, i32*** %10, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = call %struct.delegpt* @parse_delegpt(i32* %90, i8* %91, i32* %93, i32 1)
  %95 = load %struct.delegpt**, %struct.delegpt*** %11, align 8
  store %struct.delegpt* %94, %struct.delegpt** %95, align 8
  %96 = icmp ne %struct.delegpt* %94, null
  br i1 %96, label %101, label %97

97:                                               ; preds = %89
  %98 = load i32**, i32*** %10, align 8
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @free(i32* %99)
  store i32 0, i32* %7, align 4
  br label %103

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %86
  store i32 1, i32* %7, align 4
  br label %103

103:                                              ; preds = %102, %97, %85, %73, %57, %29
  %104 = load i32, i32* %7, align 4
  ret i32 %104
}

declare dso_local i32 @find_arg2(i32*, i8*, i8**) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i8*) #1

declare dso_local i32 @parse_arg_name(i32*, i8*, i32**, i64*, i32*) #1

declare dso_local %struct.delegpt* @parse_delegpt(i32*, i8*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
