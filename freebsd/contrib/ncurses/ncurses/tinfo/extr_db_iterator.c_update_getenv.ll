; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_db_iterator.c_update_getenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/tinfo/extr_db_iterator.c_update_getenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@dbdLAST = common dso_local global i64 0, align 8
@my_vars = common dso_local global %struct.TYPE_2__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @update_getenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_getenv(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @dbdLAST, align 8
  %10 = icmp ult i64 %8, %9
  br i1 %10, label %11, label %112

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i8* @getenv(i8* %12)
  store i8* %13, i8** %6, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load i8*, i8** %6, align 8
  %17 = call i8* @strdup(i8* %16)
  store i8* %17, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15, %11
  br label %111

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %22 = load i64, i64* %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %36, label %27

27:                                               ; preds = %20
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %29 = load i64, i64* %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %27, %20
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @FreeIfNeeded(i8* %41)
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i8* %48, i8** %52, align 8
  %53 = load i32, i32* @TRUE, align 4
  store i32 %53, i32* %5, align 4
  br label %110

54:                                               ; preds = %27
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  %61 = zext i1 %60 to i32
  %62 = load i8*, i8** %6, align 8
  %63 = icmp ne i8* %62, null
  %64 = zext i1 %63 to i32
  %65 = xor i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %54
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %69 = load i64, i64* %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @FreeIfNeeded(i8* %72)
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  store i8* %74, i8** %78, align 8
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %5, align 4
  br label %109

80:                                               ; preds = %54
  %81 = load i8*, i8** %6, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %105

83:                                               ; preds = %80
  %84 = load i8*, i8** %6, align 8
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %86 = load i64, i64* %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = call i64 @strcmp(i8* %84, i8* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %83
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %94 = load i64, i64* %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @FreeIfNeeded(i8* %97)
  %99 = load i8*, i8** %6, align 8
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @my_vars, align 8
  %101 = load i64, i64* %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %5, align 4
  br label %108

105:                                              ; preds = %83, %80
  %106 = load i8*, i8** %6, align 8
  %107 = call i32 @free(i8* %106)
  br label %108

108:                                              ; preds = %105, %92
  br label %109

109:                                              ; preds = %108, %67
  br label %110

110:                                              ; preds = %109, %36
  br label %111

111:                                              ; preds = %110, %19
  br label %112

112:                                              ; preds = %111, %2
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @FreeIfNeeded(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
