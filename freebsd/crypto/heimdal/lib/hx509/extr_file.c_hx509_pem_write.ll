; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_file.c_hx509_pem_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_file.c_hx509_pem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, %struct.TYPE_3__* }

@.str = private unnamed_addr constant [6 x i8] c"BEGIN\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%s: %s\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"malloc - out of memory\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@ENCODE_LINE_LENGTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_pem_write(i32 %0, i8* %1, %struct.TYPE_3__* %2, i32* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i8*, i8** %12, align 8
  store i8* %18, i8** %14, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = call i32 @print_pem_stamp(i32* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %20)
  br label %22

22:                                               ; preds = %25, %6
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %24 = icmp ne %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load i32*, i32** %11, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = icmp ne %struct.TYPE_3__* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %29, i8* %32, i8* %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  store %struct.TYPE_3__* %42, %struct.TYPE_3__** %10, align 8
  br label %22

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i64, i64* %13, align 8
  %46 = icmp ugt i64 %45, 0
  br i1 %46, label %47, label %75

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  store i64 %48, i64* %15, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ugt i64 %49, 54
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 54, i64* %15, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load i8*, i8** %14, align 8
  %54 = load i64, i64* %15, align 8
  %55 = call i64 @base64_encode(i8* %53, i64 %54, i8** %16)
  store i64 %55, i64* %17, align 8
  %56 = load i64, i64* %17, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = call i32 @hx509_set_error_string(i32 %59, i32 0, i32 %60, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %62 = load i32, i32* @ENOMEM, align 4
  store i32 %62, i32* %7, align 4
  br label %79

63:                                               ; preds = %52
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %13, align 8
  %66 = sub i64 %65, %64
  store i64 %66, i64* %13, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = load i8*, i8** %16, align 8
  %69 = call i32 (i32*, i8*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* %68)
  %70 = load i64, i64* %15, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 %70
  store i8* %72, i8** %14, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 @free(i8* %73)
  br label %44

75:                                               ; preds = %44
  %76 = load i32*, i32** %11, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = call i32 @print_pem_stamp(i32* %76, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %77)
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %75, %58
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @print_pem_stamp(i32*, i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*, ...) #1

declare dso_local i64 @base64_encode(i8*, i64, i8**) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
