; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_parse_msgpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_msgpack.c_ucl_parse_msgpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32*, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i8*, i64 }

@.str = private unnamed_addr constant [33 x i8] c"bad top level object for msgpack\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ucl_parse_msgpack(%struct.ucl_parser* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucl_parser*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %8 = icmp ne %struct.ucl_parser* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %12 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %11, i32 0, i32 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = icmp ne %struct.TYPE_3__* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @assert(i32 %15)
  %17 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %18 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %17, i32 0, i32 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %26 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %25, i32 0, i32 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %34 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %5, align 8
  %38 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %39 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %38, i32 0, i32 3
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %1
  %43 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %44 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %4, align 8
  br label %48

48:                                               ; preds = %42, %1
  %49 = load i32*, i32** %4, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %48
  %52 = load i8*, i8** %5, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, 128
  %56 = icmp ne i32 %55, 128
  br i1 %56, label %57, label %71

57:                                               ; preds = %51
  %58 = load i8*, i8** %5, align 8
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp sge i32 %60, 220
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp sle i32 %65, 223
  br i1 %66, label %71, label %67

67:                                               ; preds = %62, %57
  %68 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %69 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %68, i32 0, i32 2
  %70 = call i32 @ucl_create_err(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %90

71:                                               ; preds = %62, %51
  br label %72

72:                                               ; preds = %71, %48
  %73 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %74 = call i32 @ucl_msgpack_consume(%struct.ucl_parser* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %79 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %84 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.ucl_parser*, %struct.ucl_parser** %3, align 8
  %87 = getelementptr inbounds %struct.ucl_parser, %struct.ucl_parser* %86, i32 0, i32 1
  store i32* %85, i32** %87, align 8
  br label %88

88:                                               ; preds = %82, %77, %72
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %67
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ucl_create_err(i32*, i8*) #1

declare dso_local i32 @ucl_msgpack_consume(%struct.ucl_parser*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
